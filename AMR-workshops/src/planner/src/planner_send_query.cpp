#include <iostream>
#include "ros/ros.h"
#include "planner/Query.h"
#include "planner/planner_xy.h"

using namespace std;

int
main(int argc, char* argv[] ){
	ros::init( argc, argv, "planner_send_query" );
	ros::NodeHandle node_handle;
	ros::Publisher command_publisher = node_handle.advertise< planner::Query>( "planner/query_", 1,true);
	

	
	planner::Query msg;
	msg.start.pose.pose.position.x = 0.0;
	msg.start.pose.pose.position.y = 0.0;
	msg.start.pose.pose.position.z = 0.0;
	msg.goal.position.x = 5.0;
	msg.goal.position.y = 3.0;
	msg.goal.position.z = 0.0;
	command_publisher.publish( msg );
	
	sleep( 1 );
	
	return 0;
}
