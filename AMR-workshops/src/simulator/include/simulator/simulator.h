#ifndef SIMULATOR_H
#define SIMULATOR_H

#include <Eigen/Dense> 

#include "ros/ros.h" 
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/Twist.h"
#include "sensor_msgs/LaserScan.h"


class Simulator {
	public:
		Simulator();
		virtual ~Simulator();

		void step(const double& dt );
		void handle_command(const geometry_msgs::Twist::ConstPtr& msg );
		nav_msgs::Odometry odometry_msg(void)const;
		sensor_msgs::LaserScan scan_msg(void)const;

	protected:
		Eigen::Vector3d _x;
		Eigen::Vector3d _u;

};

#endif /*SIMULATOR */
