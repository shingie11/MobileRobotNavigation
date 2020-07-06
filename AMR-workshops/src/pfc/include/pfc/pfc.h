
/* path following controller module
Author: Shingie Dhoro
Email: sdhoro@u.rochester.edu
*/
#ifndef pfc_h
#define pfc_h


#include "ros/ros.h" 
#include "nav_msgs/Odometry.h"
#include "nav_msgs/Path.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Point.h"

class PFC{
	public:
		PFC();
		virtual ~PFC();
		void handlePath(const nav_msgs::Path::ConstPtr& _path); //stores path
		void odom_update(const nav_msgs::Odometry::ConstPtr& _odom); //stores odom measurement
		void command_update(); //updates command (pure pursuit), takes in point, 
		void laPoint_update(); //updates la_point once we are within the goal radius of current la_point
		void index_update(); //updates index (& if need be, la_point?)
		const double la_dist = 0.05;
		nav_msgs::Path path; //stores path from planner
		int index; //stores which point we are at on planner
		const double error_radius = 0.005;
		geometry_msgs::Twist drive_vel; //stores current command
		geometry_msgs::Point la_point; //stores current la_point
		bool flag = false;
		nav_msgs::Odometry odom;
		int setla_point = 0;
		//geometry_msgs::Point waypoint;


};

#endif /* pfc_h */


