//
//  node_xy.h
//  Heuristic Search
//
//  Created by Shingie on 3/25/20.
//  Copyright © 2020 Shingie. All rights reserved.


//prototype for a node/intersection in the path of the mobile robot

#ifndef node_xy_h
#define node_xy_h

#include <stdio.h>
#include <iostream>
#include <string.h>
#include <vector>



class NodeXY {

    public:
        NodeXY(double x, double y, double goalx, double goaly, double prevx, double prevy, std::string previ, double prevCost);
        NodeXY();
        ~NodeXY();

        bool wasVisited();
        void setVisited(bool status);
        double getLongi();
        double getLati();
        std::string getID();
        std::string getPrev();
        double gettotalCost();
        double totalCost;
        double heuristic;
        double lati;
        double longi;
        bool visited;
        std::string ID;
        double cost;
        double getCost();
        void setCost(double c);
        std::string prev;
        void setPrev(std::string p);
        std::string calcID(double x, double y);
        friend bool operator== ( const NodeXY &n1, const NodeXY &n2);
        
        
    
        
       
        
};
#endif /* node_xy_h */
