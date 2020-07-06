#include <iostream>
#include "ros/ros.h"

#include "geometry_msgs/Polygon.h"

using namespace std;

int
main( int argc, char* argv[] ){

  geometry_msgs::Polygon waypoints;

  waypoints.points.push_back( geometry_msgs::Point32() );
  waypoints.points.back().x = 1.0;  
  waypoints.points.back().y = 0.0;  

  waypoints.points.push_back( geometry_msgs::Point32() );
  waypoints.points.back().x = 2.0;
  waypoints.points.back().y = 1.0;

  waypoints.points.push_back( geometry_msgs::Point32() );
  waypoints.points.back().x = -1.0;
  waypoints.points.back().y = 1.0;

  waypoints.points.push_back( geometry_msgs::Point32() );
  waypoints.points.back().x = -1.00;
  waypoints.points.back().y = -1.00;

  waypoints.points.push_back( geometry_msgs::Point32() );
  waypoints.points.back().x = 1.0;
  waypoints.points.back().y = -1.0;

  waypoints.points.push_back( geometry_msgs::Point32() );
  waypoints.points.back().x = 1.00;
  waypoints.points.back().y = 0.00;

  waypoints.points.push_back( geometry_msgs::Point32() );
  waypoints.points.back().x = -1.00;
  waypoints.points.back().y = -1.00;

  waypoints.points.push_back( geometry_msgs::Point32() );
  waypoints.points.back().x = -1.0;
  waypoints.points.back().y = 0.0;

  waypoints.points.push_back( geometry_msgs::Point32() );
  waypoints.points.back().x = 0.0;
  waypoints.points.back().y = 0.0;

  ros::init( argc, argv, "waypoints_publisher_node" );
  ros::NodeHandle node_handle;
  ros::Publisher waypoints_publisher = node_handle.advertise< geometry_msgs::Polygon >( "executive/waypoints", 1, true );

  sleep( 10 );

  waypoints_publisher.publish( waypoints );
  
  sleep( 1 );

  return 0;
}
