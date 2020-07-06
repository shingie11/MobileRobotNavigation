#include <iostream>
#include "ros/ros.h"
#include "pfc/pfc.h"
//#include "geometry_msgs/Point.h"

using namespace std;

int
main(int argc,char* argv[] ){
	
	
	PFC pfc;
	
	ros::init( argc, argv, "pfc_node" );
	ros::NodeHandle node_handle;
	ros::Subscriber odom_subscriber = node_handle.subscribe( "odom",
		 1, &PFC::odom_update, &pfc );
	ros::Subscriber path_subscriber = node_handle.subscribe( "planner/path",
		 1, &PFC::handlePath, &pfc );
	ros::Publisher laPoints_publisher = node_handle.advertise< geometry_msgs::Point >( "pfc/la_point",
		 1,true);
	ros::Publisher twist_publisher = node_handle.advertise< geometry_msgs::Twist >( "cmd_vel_mux/input/navi",
		 1,true);



	double frequency = 10.0;
	ros::Rate timer( frequency );
	while( ros::ok() ){
		//cout<<"entering the pfc node loop.."<<endl;
		//if(pfc.flag){ //check if we received path yet
		//cout<<"passed the flag test .."<<endl;
 //[p1, p2, p3...]
		
			pfc.index_update();
			pfc.laPoint_update();
			pfc.command_update(); 
			laPoints_publisher.publish(pfc.la_point); //publish la_point to gui
			twist_publisher.publish(pfc.drive_vel); //publish command to simulator
			ros::spinOnce();
			timer.sleep();
		//}
	}

	return 0;
}


