#include <iostream>
#include "ros/ros.h"
#include "std_msgs/UInt32.h"
#include "planner/planner_xy.h"
#include <vector>
#include "nav_msgs/Path.h"

using namespace std;

int
main (int argc, char* argv[]) {
	
	PlannerXY planner_xy;
	
	ros::init (argc, argv, "planner_xy_node");
	ros::NodeHandle node_handle;
	ros::Subscriber odom_subscriber = node_handle.subscribe( "executive/query", 1,&PlannerXY::handle_query, &planner_xy );
	planner_xy.openlistsize_publisher = node_handle.advertise< std_msgs::UInt32>( "planner/openlistsize", 1 );
	planner_xy.closedlistsize_publisher = node_handle.advertise< std_msgs::UInt32 >( "planner/closedlistsize", 1 );
	planner_xy.path_publisher = node_handle.advertise< nav_msgs::Path >( "planner/path", 1, true );


	ros::spin();

	return 0;

}
