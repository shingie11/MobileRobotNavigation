#include <iostream>
#include "ros/ros.h"
#include "std_msgs/UInt32.h"
#include "executive/executive.h"
#include "planner/Query.h"
#include "geometry_msgs/Point.h"

using namespace std;

int
main (int argc, char* argv[]) {
	
	Executive executive;
	
	ros::init (argc, argv, "executive_node");
	ros::NodeHandle node_handle;
	ros::Subscriber odom_subscriber = node_handle.subscribe( "odom", 1,&Executive::handle_odom, &executive );
	ros::Subscriber polygon_subscriber = node_handle.subscribe( "executive/waypoints", 1,&Executive::handle_polygon, &executive);
	ros::Publisher query_publisher = node_handle.advertise< planner::Query>( "executive/query", 1, true ); //published message meant for the planner
	ros::Publisher waypoint_publisher = node_handle.advertise< geometry_msgs::Point>( "executive/waypoint", 1, true ); //this publishes to GUI
	

	double frequency = 10.0;
	ros::Rate timer( frequency );
	while( ros::ok() ){
		if(executive.msg_flag){ //check to see if we actually received any waypoints
			executive.handle_index();
			if(executive.flag){	// see if we have move to another index
				executive.handle_query();
				query_publisher.publish(executive.query);
				waypoint_publisher.publish(executive.wp);
			}
		}
		ros::spinOnce();
		timer.sleep();
	}

	//ros::spin();

	return 0;

}
