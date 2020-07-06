#include <iostream>
#include "ros/ros.h"
#include "wa_two/Model.h"
#include "wa_two/Update.h"

using namespace std;

int
main(int argc, char* argv[] ){
	ros::init( argc, argv, "wa_two_test" );
	ros::NodeHandle node_handle;
	ros::Publisher model_publisher = node_handle.advertise< wa_two::Model>( "wa_two/model", 1,true);
	ros::Publisher update_publisher = node_handle.advertise< wa_two::Update>( "wa_two/update", 1,true);
	

	wa_two::Model model;
	wa_two::Update update;
	
	
	std::vector<double> info_vector {1.4762, 3.8095};
	std::vector<double> info_matrix {2.3810, -0.9524, -0.9524, 2.3810};
	std::vector<double> at {0.8, 0.4, 0.7, 0.2};
	std::vector<double> bt {0.3, 0.1, 0.6, 0.5};
	std::vector<double> ct {2.0, 4.0, 1.30, 4.2};
	std::vector<double> rt {0.04, 0.01, 0.01, 0.04};
	std::vector<double> qt {0.02, 0.01, 0.01, 0.02};

	model.info_vector = info_vector;
	model.info_matrix = info_matrix;
	model.at = at;
	model.bt = bt;
	model.ct = ct;
	model.rt = rt;
	model.qt = qt;

	std::vector<double> ut {1.5, 0.75};
	std::vector<double> zt {2.0, 1.0};
	update.ut = ut;
	update.zt = zt;

	model_publisher.publish(model);
	update_publisher.publish(update);

	
	sleep( 1 );
	
	return 0;
}
