//
//  planner_xy.cpp
//  Heuristic Search
//
//  Created by Shingie on 3/25/20.
//  Copyright © 2020 Shingie. All rights reserved.

//definition of the planner class that does A* heuristic search to find minimum distance between two nodes..

#include <iostream>
#include <cmath>
#include<string.h>
#include <queue>
#include <vector>
#include<unordered_map>
#include <bits/stdc++.h>
#include "ros/ros.h"
#include "std_msgs/UInt32.h"
#include "planner/node_xy.h"
#include "planner/planner_xy.h"
#include <climits>
#include <nav_msgs/Path.h>


std::string calcPathHeader(int xc, int yc, int xz, int yz){
    std::stringstream ss;
    ss<<xc<<yc<<"to"<<xz<<yz;
    return ss.str();
}

bool compareFunction( NodeXY &a,  NodeXY &b){ //used to sort vector of nodes
    return a.totalCost > b.totalCost;
}

bool operator == ( const NodeXY &n1, const NodeXY &n2) //used in std::find
{
        return n1.ID == n2.ID;
}

double neighbor_to_neighborCost(NodeXY& a, NodeXY& b){ //calculates cost from current_node to neighbor
    double x = a.getLongi();
    double y  = a.getLati();
    double goalx = b.getLongi();
    double goaly = b.getLati();
    
    double cost = pow((pow((goaly-y), 2) + pow((goalx-x), 2)), 0.5); //calculate cost to that node
  return cost;
}

using namespace std;

PlannerXY::PlannerXY(){
}

PlannerXY::
~PlannerXY(){
}

void
PlannerXY::handle_query(const planner::Query::ConstPtr& _msg) 
{
	planner::Query msg  = *_msg;	
	cout<<"planner received query..."<<endl;
	
    msg.start.header.stamp = ros::Time::now();
	double discretization = 10.0; //to enable to move in small steps
	cout<< "start pose  ("<<msg.start.pose.pose.position.x<<", "<<msg.start.pose.pose.position.x<<")"<<endl;
	cout<< "goal pose  ("<<msg.goal.position.x<<", "<<msg.goal.position.x<<")"<<endl;
    double x  = ((double)msg.start.pose.pose.position.x) *discretization;
    double y = ((double)msg.start.pose.pose.position.y) *discretization;
    double goalx = ((double)msg.goal.position.x) *discretization;
    double goaly =((double)msg.goal.position.y) *discretization;
    std::vector<NodeXY>path_;
	nav_msgs::Path path;
	std_msgs::UInt32 clist_size;
	std_msgs::UInt32 olist_size;

	geometry_msgs::PoseStamped pose;
    
    NodeXY Start(x, y, goalx, goaly, 0.0, 0.0, "", 0.0);
    NodeXY Goal(goalx, goaly, goalx, goaly, 0.0, 0.0, "", LONG_MAX);
    
    PlannerXY::findPath(Start, Goal,path_, clist_size, olist_size);
	NodeXY current_node_;
	path.header.frame_id = calcPathHeader(x, y, goalx, goaly);
    //cout<<"Start"<<endl;
    for (vector<NodeXY>::reverse_iterator i = path_.rbegin(); i != path_.rend(); ++i ) {
        current_node_ = *i;
		pose.header.frame_id = current_node_.getID();
		pose.pose.position.x = current_node_.getLongi()/discretization;
		pose.pose.position.y = current_node_.getLati()/discretization;
		pose.pose.position.z = 0;
		path.poses.push_back(pose);
		//cout<<current_node.getLongi()<<" , "<<current_node.getLati()<<endl;
    }

	
	
	mypath = path;
	openlist_size = olist_size;
	closedlist_size = clist_size;
	PlannerXY::path_publisher.publish(path); //publish path
	PlannerXY::openlistsize_publisher.publish(olist_size); //publish openlistsize
	PlannerXY::closedlistsize_publisher.publish(clist_size); //publish closedlistsize

    return; 
}

void PlannerXY::findPath(NodeXY source, NodeXY target, vector<NodeXY> & path_, std_msgs::UInt32 clist_size, std_msgs::UInt32 olist_size){
    vector<NodeXY>openlist_;
    vector<NodeXY> neighbors; //neigbhoring nodes of the 
    unordered_map<string, NodeXY>  closedlist; //list of visited nodes    
    
    openlist_.push_back(source);
    NodeXY current_node;
    NodeXY temp;
    string prev_node = "";
	
	plan_count++;	
	std::cout<<"plan_count = "<<plan_count<<std::endl;
    
    // A* heuristic search starts here
    while (!openlist_.empty()){
        current_node = openlist_.back();
        openlist_.pop_back();
        prev_node = current_node.getID();
        current_node.setVisited(true);
        closedlist[current_node.getID()] = current_node;
        
        
        double prevCost = current_node.getCost();
        
        //check if we are at the goal node
        if((current_node.getLati() == target.getLati()) && (current_node.getLongi() == target.getLongi())){
            path_.push_back(current_node);
            prev_node = current_node.getPrev();

            while(!((current_node.getLati() == source.getLati()) && (current_node.getLongi() == source.getLongi()))){
                current_node = closedlist.find(prev_node)->second;
                prev_node = current_node.getPrev();
                path_.push_back(current_node);
                
            }
			olist_size.data = openlist_.size();
			clist_size.data = closedlist.size();
            return;
        }
        
        
        //the neighbhors of the current node
        neighbors.push_back(NodeXY(current_node.getLongi(), current_node.getLati() + 1.0, target.getLongi(), target.getLati(), current_node.getLongi(), current_node.getLati(), prev_node, prevCost));
        neighbors.push_back(NodeXY(current_node.getLongi(), current_node.getLati() -1.0, target.getLongi(), target.getLati(), current_node.getLongi(), current_node.getLati(), prev_node, prevCost));
        neighbors.push_back(NodeXY(current_node.getLongi() +1.0, current_node.getLati(), target.getLongi(), target.getLati(), current_node.getLongi(), current_node.getLati(), prev_node, prevCost));
        neighbors.push_back(NodeXY(current_node.getLongi() -1.0, current_node.getLati(), target.getLongi(), target.getLati(), current_node.getLongi(), current_node.getLati(), prev_node,prevCost));
        neighbors.push_back(NodeXY(current_node.getLongi() +1.0, current_node.getLati() +1.0, target.getLongi(), target.getLati(), current_node.getLongi(), current_node.getLati(), prev_node, prevCost));
        neighbors.push_back(NodeXY(current_node.getLongi() -1.0, current_node.getLati() + 1.0, target.getLongi(), target.getLati(), current_node.getLongi(), current_node.getLati(), prev_node, prevCost));
        neighbors.push_back(NodeXY(current_node.getLongi() +1.0, current_node.getLati() - 1.0, target.getLongi(), target.getLati(), current_node.getLongi(), current_node.getLati(), prev_node, prevCost));
        neighbors.push_back(NodeXY(current_node.getLongi() - 1.0, current_node.getLati() - 1.0, target.getLongi(), target.getLati(), current_node.getLongi(), current_node.getLati(), prev_node, prevCost));
        
       
        //cout<<"current Node: "<<current_node.getID()<<endl;
        
        for(NodeXY vertex: neighbors){
            if(closedlist.find(vertex.getID()) == closedlist.end()){ // if in closed list, do nothing
                std::vector<NodeXY>::iterator it = std::find(openlist_.begin(), openlist_.end(), vertex );
                if(it != openlist_.end()){ //node already in openlist
                    temp = *it;
                    
                    double compare_cost = temp.getCost() + neighbor_to_neighborCost(vertex, temp);
                    if(compare_cost<temp.getCost()){ //found shorter path, update BP & cost
                        for(int i =0; i<openlist_.size(); i++){
                            if(openlist_[i].getID() == vertex.getID()){
                                openlist_[i].setCost(compare_cost);
                                openlist_[i].setPrev(temp.getID());
                                
                                break;
                            }
                                
                        }
                    }
                }
                else{ //add to openlist
                    openlist_.push_back(vertex);
                }
            }
        }
        
        sort(openlist_.begin(), openlist_.end(), compareFunction);
        neighbors.clear(); //empty the neighbor vector
    }
    
    return ;
}


