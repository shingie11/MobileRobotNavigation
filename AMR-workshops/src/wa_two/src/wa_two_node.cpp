#include <iostream>
#include "ros/ros.h"
#include "std_msgs/UInt32.h"
#include "wa_two/wa_two.h"
#include "wa_two/Belief.h"

using namespace std;

int
main (int argc, char* argv[]) {
	
	WATwo wa_two;
	
	ros::init (argc, argv, "wa_two_node");
	ros::NodeHandle node_handle;
	ros::Subscriber update_subscriber = node_handle.subscribe( "wa_two/update", 1,&WATwo::handle_update, &wa_two );
	ros::Subscriber model_subscriber = node_handle.subscribe( "wa_two/model", 1,&WATwo::handle_model, &wa_two );
	wa_two.belief_publisher = node_handle.advertise< wa_two::Belief>( "wa_two/belief", 1 );
	
	double frequency = 10;
	ros::Rate timer( frequency );
	while( ros::ok() ){

		if(wa_two.received_modelupdate){ //check if the model has been updated yet
			cout<<"about to compute infor filter.."<<endl;
			wa_two.handle_update_(wa_two.update);
		}
		ros::spinOnce();
		timer.sleep();
	}

	return 0;
}	
