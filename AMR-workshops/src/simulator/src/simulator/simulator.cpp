#include <iostream>
#include <math.h>

#include "simulator/simulator.h"

using namespace std;

/**
*x(0) = x position
*x(1) = y position
*x(2) = heading
*u(0) = linear velocity (v)
*u(1) = angular_velocity (w)

*/

geometry_msgs::Quaternion
yaw_to_quaternion(const double& yaw ){
	geometry_msgs::Quaternion quaternion;
	//assume roll and pitch to be zero since we are using turtlebot
	double pitch = 0;
	double roll = 0;

	double cy = cos(yaw * 0.5);
    double sy = sin(yaw * 0.5);
    double cp = cos(pitch * 0.5);
    double sp = sin(pitch * 0.5);
    double cr = cos(roll * 0.5);
    double sr = sin(roll * 0.5);

    quaternion.w = cy * cp * cr + sy * sp * sr;
    quaternion.x = cy * cp * sr - sy * sp * cr;
    quaternion.y = sy * cp * sr + cy * sp * cr;
    quaternion.z = sy * cp * cr - cy * sp * sr;
	// your implementation here
	return quaternion;
}

Simulator::
Simulator() : _x( 0.0, 0.0, 0.0 ), _u( 0.0, 0.0, 0.0 ) {
}
Simulator::
~Simulator() {
}

void
Simulator::
step(const double& dt ){
// your implementation here

//to add noise??
_x(0) = _x(0) + _u(0)*cos(_x(2))*dt;
_x(1) = _x(1) + _u(0)*sin(_x(2))*dt;
_x(2) = _x(2) + _u(1)*dt;

return;

}

void
Simulator::
handle_command(const geometry_msgs::Twist::ConstPtr& msg ){
	_u( 0 ) = msg->linear.x;
	_u( 1 ) = msg->angular.z;
	return;
}

nav_msgs::Odometry
Simulator::
odometry_msg(void)const{
	nav_msgs::Odometry msg;
	msg.header.stamp = ros::Time::now();
	msg.pose.pose.position.x = _x( 0 );
	msg.pose.pose.position.y = _x( 1 );
	msg.pose.pose.position.z = 0.0;
	msg.pose.pose.orientation = yaw_to_quaternion( _x( 2 ) );
	msg.twist.twist.linear.x = _u( 0 );
	msg.twist.twist.angular.z = _u( 1 );
	return msg;
}


sensor_msgs::LaserScan
Simulator::
scan_msg(void)const{
	sensor_msgs::LaserScan msg;
	return msg;
}
