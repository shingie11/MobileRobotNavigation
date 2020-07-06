#include <iostream>
#include "ros/ros.h"

#include "perception/Landmarks.h"

using namespace std;

int
main( int argc, char* argv[] ){

  perception::Landmarks landmarks;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = -0.457092;
  landmarks.landmarks.back().pos.y = -1.62364;
  landmarks.landmarks.back().signature = 4;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = -1.81005;
  landmarks.landmarks.back().pos.y = 1.77827;
  landmarks.landmarks.back().signature = 25;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = -1.84718;
  landmarks.landmarks.back().pos.y = -1.4777;
  landmarks.landmarks.back().signature = 26;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = -0.473897;
  landmarks.landmarks.back().pos.y = 1.94544;
  landmarks.landmarks.back().signature = 27;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = 1.44868;
  landmarks.landmarks.back().pos.y = -1.77818;
  landmarks.landmarks.back().signature = 28;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = -0.0258221;
  landmarks.landmarks.back().pos.y = -1.65523;
  landmarks.landmarks.back().signature = 29;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = -2.18729;
  landmarks.landmarks.back().pos.y = -0.932735;
  landmarks.landmarks.back().signature = 30;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = -2.21237;
  landmarks.landmarks.back().pos.y = -1.22087;
  landmarks.landmarks.back().signature = 31;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = 1.81835;
  landmarks.landmarks.back().pos.y = -0.981408;
  landmarks.landmarks.back().signature = 32;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = 2.03774;
  landmarks.landmarks.back().pos.y = 0.478421;
  landmarks.landmarks.back().signature = 33;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = 0.367867;
  landmarks.landmarks.back().pos.y = -1.68641;
  landmarks.landmarks.back().signature = 34;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = 1.17085;
  landmarks.landmarks.back().pos.y = -1.72286;
  landmarks.landmarks.back().signature = 35;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = -1.86319;
  landmarks.landmarks.back().pos.y = 1.49839;
  landmarks.landmarks.back().signature = 37;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = 0.692423;
  landmarks.landmarks.back().pos.y = 2.00735;
  landmarks.landmarks.back().signature = 39;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = 1.86281;
  landmarks.landmarks.back().pos.y = -1.16656;
  landmarks.landmarks.back().signature = 41;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = 1.85881;
  landmarks.landmarks.back().pos.y = -0.68259;
  landmarks.landmarks.back().signature = 42;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = -1.57901;
  landmarks.landmarks.back().pos.y = -1.50812;
  landmarks.landmarks.back().signature = 43;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = 1.13608;
  landmarks.landmarks.back().pos.y = 1.91069;
  landmarks.landmarks.back().signature = 45;

  landmarks.landmarks.push_back( perception::Landmark() );
  landmarks.landmarks.back().pos.x = 1.99243;
  landmarks.landmarks.back().pos.y = 0.209667;
  landmarks.landmarks.back().signature = 48;

  ros::init( argc, argv, "landmarks_publisher_node" );
  ros::NodeHandle node_handle;
  ros::Publisher landmarks_publisher = node_handle.advertise< perception::Landmarks >( "landmarks", 1, true );

  sleep( 1 );

  landmarks_publisher.publish( landmarks );
  
  sleep( 1 );

  return 0;
}
