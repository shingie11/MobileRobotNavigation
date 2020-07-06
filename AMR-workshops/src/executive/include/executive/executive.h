
//  executive.h
//  Created by Shingie on 04/11/20.
//  Copyright © 2020 Shingie. All rights reserved.

/* executive node that controls messages to and fro different nodes*/

#ifndef executive_h
#define executive_h

#include <stdio.h>
#include <iostream>
#include "std_msgs/UInt32.h"
#include "geometry_msgs/Polygon.h"
#include "geometry_msgs/Point.h"
#include "nav_msgs/Odometry.h"
#include "planner/Query.h"


class Executive {
    public:
        Executive();
        virtual ~Executive();

		
		void handle_polygon ( const geometry_msgs::Polygon::ConstPtr& _waypoints); //updates polygon msg.
		void handle_odom (const nav_msgs::Odometry::ConstPtr& _odom); //copies subscribed message to odom variable
		void handle_index(); //updates index
		void handle_query(); //updates query msg to be send to planner
		
		nav_msgs::Odometry odom;
		geometry_msgs::Polygon waypoints;
		geometry_msgs::Point wp;
		planner::Query query;
		double index; 
		const double error_radius = 0.005; //error_radius
		bool flag = true;
		bool msg_flag = false;
	
		

		//ros::Publisher query_publisher; //to go to planner

		

};

#endif 
/* executive_h */

