//
//  planner_xy.h
//  Heuristic Search
//
//  Created by Shingie on 3/25/20.
//  Copyright © 2020 Shingie. All rights reserved.
//

#ifndef planner_xy_h
#define planner_xy_h

#include <stdio.h>
#include <iostream>
#include "planner/Query.h"
#include "planner/node_xy.h"
#include "std_msgs/UInt32.h"
#include <vector>
#include "nav_msgs/Path.h"


class PlannerXY {
    public:
        PlannerXY();
        virtual ~PlannerXY();

    //new subscriber callback functions
  	void handle_query ( const planner::Query::ConstPtr& msg);
   
	void findPath(NodeXY source, NodeXY target, std::vector<NodeXY> & path, std_msgs::UInt32 clist_size, std_msgs::UInt32 olist_size);
	

    //additional class member variables for publishing path, openlistsize, and
    //closed list size and storing nav\_msgs::Odometry message.
	nav_msgs::Path mypath;
	std_msgs::UInt32 openlist_size;
	std_msgs::UInt32 closedlist_size;
    ros::Publisher path_publisher;
    ros::Publisher openlistsize_publisher;
    ros::Publisher closedlistsize_publisher;
	bool flag = true;
	int plan_count = 0;
	planner::Query start_goal;
};

//#endif /* PLANNER_XY_H */


    

#endif /* planner_xy_h */
