#include <iostream>
#include "ros/ros.h"
#include "simulator/simulator.h"

using namespace std;

int
main(int argc,char* argv[] ){
	
	//Simulator simulator;
//cmd_vel_mux/input/navi
	Simulator simulator;
	
	ros::init( argc, argv, "simulator_node" );
	ros::NodeHandle node_handle;
	ros::Subscriber command_subscriber = node_handle.subscribe( "cmd_vel_mux/input/navi",
		 1, &Simulator::handle_command, &simulator );
	ros::Publisher odometry_publisher = node_handle.advertise< nav_msgs::Odometry >( "odom",
		 1,true);
	ros::Publisher scan_publisher = node_handle.advertise< sensor_msgs::LaserScan >( "scan",
		 1,true);
	
	double frequency = 10.0;
	ros::Rate timer( frequency );
	while( ros::ok() ){
		simulator.step( 1.0/frequency );
		odometry_publisher.publish( simulator.odometry_msg() );
		scan_publisher.publish( simulator.scan_msg() );
		ros::spinOnce();
		timer.sleep();
	}
	return 0;
}
