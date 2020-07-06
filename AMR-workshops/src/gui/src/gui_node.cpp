#include <QtGui/QApplication>
#include "gui/gui.h"

using namespace std;

int
main(int argc, char* argv[] ){
	QApplication app( argc, argv );
	ros::init( argc, argv, "gui" );
	ros::NodeHandle node_handle;
	GUI gui;
	ros::Subscriber subscriber_reset_odometry = node_handle.subscribe( "scan",
		1, &GUI::handleLaserScan, &gui );
	ros::Subscriber subscriber_waypoints = node_handle.subscribe( "executive/waypoint",
		1, &GUI::handleWaypoints, &gui );
	ros::Subscriber subscriber_laPoints = node_handle.subscribe( "pfc/la_point",
		1, &GUI::handle_laPoints, &gui );
	ros::Subscriber subscriber_odom = node_handle.subscribe( "odom",
		 1, &GUI::handleOdom, &gui );
	ros::Subscriber subscriber_odom_estimate = node_handle.subscribe( "estimated_odom",
		 1, &GUI::handleEstimatedOdom, &gui );
	ros::Subscriber path_subcriber = node_handle.subscribe("planner/path", 1, &GUI::handlePath, &gui);
	ros::Subscriber landmark_subcriber = node_handle.subscribe("observations", 1, &GUI::handleLandmarks, &gui);
	
	gui.show();
	return app.exec();
}
