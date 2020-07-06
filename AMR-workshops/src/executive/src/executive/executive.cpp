//  executive.cpp
//  Created by Shingie on 04/11/20.
//  Copyright © 2020 Shingie. All rights reserved.

#include <stdio.h>
#include <iostream>
#include "std_msgs/UInt32.h"
#include <bits/stdc++.h>
#include "ros/ros.h"
#include "executive/executive.h"
#include "planner/Query.h"

using namespace std;

Executive::Executive(){
	
};
Executive::~Executive(){};

//initiates odom 
void Executive::handle_odom(const nav_msgs::Odometry::ConstPtr& _odom){

	odom = *_odom;
	return;
}


void Executive::handle_polygon ( const geometry_msgs::Polygon::ConstPtr& _waypoints){ //updates polygon msg.
	msg_flag = true;
	waypoints = *_waypoints;
	index = 0; // initialize/reset index
	
	return;
}

void Executive::handle_index(){ //updates index
	if(index >= waypoints.points.size()){
		std::cout<<"index out of bounce"<<endl; 
		return;
	}
	std::cout<<"odom x,y = ("<<odom.pose.pose.position.x<<", "<<odom.pose.pose.position.y<<")"<<std::endl;
	double temp = pow((pow((odom.pose.pose.position.x - waypoints.points[index].x), 2) + pow((odom.pose.pose.position.y - waypoints.points[index].y), 						2)), 0.5);
	if (temp < error_radius && index < waypoints.points.size()){
		index++;
		flag = true; //checks if we have moved index so we can publish another waypoint.
	}
	//std::cout<<""

	return;

}

void Executive::handle_query(){ //updates query msg to be send to planner
	
	query.start = odom;
	query.goal.position.x = waypoints.points[index].x;
 	query.goal.position.y = waypoints.points[index].y;
	query.goal.position.z = waypoints.points[index].z;
	flag = false;
	wp.x = waypoints.points[index].x;
	wp.y = waypoints.points[index].y;
	wp.z = waypoints.points[index].z;

	return;

}


