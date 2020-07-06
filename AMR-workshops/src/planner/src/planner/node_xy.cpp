//
//  node_xy.cpp
//  Heuristic Search
//
//  Created by Shingie on 3/25/20.
//  Copyright © 2020 Shingie. All rights reserved.
//

//definition of the node class and it's methods
#include <iostream>
#include <cmath>
#include<string.h>
#include "ros/ros.h"
#include "std_msgs/UInt32.h"
#include "planner/node_xy.h"
#include<sstream>
#include <functional>


NodeXY::NodeXY(double x, double y, double goalx, double goaly, double prevx, double prevy, std::string previ, double prevCost){
    ID = calcID(x, y);
    lati = y;
    longi = x;
    heuristic = pow((pow((goaly-y), 2) + pow((goalx-x), 2)), 0.5);
    cost = pow((pow((y-prevy), 2) + pow((x-prevx), 2)), 0.5) + prevCost; //cost from start node up until current node
    totalCost = cost + heuristic; //cost of interest that incoporates heuristic(euclidean in this case)
    prev = previ;
}
NodeXY::NodeXY(){};

NodeXY::
~NodeXY(){}

//use of string stream to calculate node ID, which is just the coordinates of that node in the map
std::string NodeXY::calcID(double xc, double yc){
    std::stringstream ss;
    ss<<xc<<yc;
    return ss.str();
}
bool
NodeXY::wasVisited(void){
    return visited;
}

double NodeXY::getLongi(void){
    return longi;
}

double NodeXY::getLati(void){
    return lati;
}

std::string NodeXY::getID(void){
    return ID;
}

std::string NodeXY::getPrev(void){
    return prev;
}


void NodeXY::setVisited( bool status){
    visited = status;
}

double NodeXY::gettotalCost(void){
    return totalCost;
}

double NodeXY::getCost(void){
    return cost;
}

void NodeXY::setCost(double c){
    cost = c;
}

void NodeXY::setPrev(std::string p){
    prev = p;
}





