
/* path following controller module
Author: Shingie Dhoro
Email: sdhoro@u.rochester.edu
*/

#include <iostream>
#include <math.h>
#include <climits>
#include <cmath>

#include "pfc/pfc.h"

using namespace std;

PFC::PFC(){ drive_vel.linear.x = 0.0; drive_vel.angular.z = 0.0;}; 
PFC::~PFC(){};

void PFC::odom_update(const nav_msgs::Odometry::ConstPtr& _odom){
	odom = *_odom;
	if (setla_point<=0 || index == 1){
	la_point.x = odom.pose.pose.position.x; la_point.y = odom.pose.pose.position.y;
	setla_point++;
	}
 
	
	return;
}

void PFC::handlePath(const nav_msgs::Path::ConstPtr& _path){ //stores path
	std::cout<<"confirming pfc received path from planner..."<<std::endl;
	path     = *_path;
	index =1; //reset index
	return;
	
}
void PFC::laPoint_update(){ //updates la_point once we are within the goal radius of current la_point
	if (path.poses.empty()){ return;}
	std::cout<<"la_point x,y = ("<<la_point.x<<", "<<la_point.y<<")"<<std::endl;
	std::cout<<"odom x,y = ("<<odom.pose.pose.position.x<<", "<<odom.pose.pose.position.y<<")"<<std::endl;
	double temp;
	temp = pow((pow((la_point.x - odom.pose.pose.position.x), 2) + pow((la_point.y - odom.pose.pose.position.y), 2)), 0.5);
	if (temp<error_radius){
		if((path.poses[index].pose.position.x >la_point.x) && (path.poses[index].pose.position.y >la_point.y)){ //NE
			std::cout<<"la_point going NE..."<<std::endl;
			la_point.x += la_dist;
			la_point.y += la_dist;
		}
		else if((path.poses[index].pose.position.x <la_point.x) && (path.poses[index].pose.position.y <la_point.y)){ //SE
			std::cout<<"la_point going SE..."<<std::endl;
			la_point.x -= la_dist;
			la_point.y -= la_dist;
		}
		else if((path.poses[index].pose.position.x <la_point.x) && (path.poses[index].pose.position.y >la_point.y)){ //NW
			std::cout<<"la_point going NW..."<<std::endl;
			la_point.x -= la_dist;
			la_point.y += la_dist;
		}
		else if((path.poses[index].pose.position.x >la_point.x) && (path.poses[index].pose.position.y <la_point.y)){ //SE
			std::cout<<"la_point going SE..."<<std::endl;
			la_point.x += la_dist;
			la_point.y -= la_dist;
		}
		else if((path.poses[index].pose.position.x >la_point.x) && (path.poses[index].pose.position.y == la_point.y)){ //E
			std::cout<<"la_point going E..."<<std::endl;
			la_point.x += la_dist;
			//la_point.y -= la_dist;
		}
		else if((path.poses[index].pose.position.x <la_point.x) && (path.poses[index].pose.position.y ==la_point.y)){ //W
			std::cout<<"la_point going W..."<<std::endl;
			la_point.x -= la_dist;
			//la_point.y -= la_dist;
		}
		else if((path.poses[index].pose.position.x == la_point.x) && (path.poses[index].pose.position.y >la_point.y)){ //N
			std::cout<<"la_point going N..."<<std::endl;//la_point.x += la_dist;
			la_point.y += la_dist;
		}
		else if ((path.poses[index].pose.position.x == la_point.x) && (path.poses[index].pose.position.y < la_point.y)){ //S
			std::cout<<"la_point going S..."<<std::endl;//la_point.x += la_dist;
			la_point.y -= la_dist;
		}
		else{ //odom same at la_point
			std::cout<<"la_point == point on path, waiting for index increment..."<<std::endl;
			return; //dont do anything, wait for index to increment?
		}
		
	}
	return;
}

void PFC::index_update(){ //updates index (& if need be, la_point?)
	if (path.poses.empty()){ return;}	
	//std::cout<<"running  pfc::index_update..."<<std::endl;
	double temp;
	temp = pow((pow((path.poses[index].pose.position.x - odom.pose.pose.position.x), 2) + pow((path.poses[index].pose.position.y - odom.pose.pose.position.y), 2)), 0.5);
	
	if(temp<error_radius && index<(path.poses.size()-1)){
		index++;
		std::cout<<"pfc index = "<<index<<std::endl;		
	}
	
	return;
}

double quaternion_to_yaw(const geometry_msgs::Quaternion& quaternion ){
	double siny_cosp = 2*(quaternion.w * quaternion.z + quaternion.x * quaternion.y);
	double cosy_cosp = 1 - 2*(quaternion.y * quaternion.y + quaternion.z * quaternion.z);

return std::atan2(siny_cosp, cosy_cosp);

}

void PFC::command_update(){ //updates drive command, takes in point,
	
	if (path.poses.empty()){ return;}
	//std::cout<<"running  pfc::command_update..."<<std::endl;
	double xgv, ygv;
	double x, y, curvature, delta_x; 
	double heading = quaternion_to_yaw(odom.pose.pose.orientation );//odom.pose.pose.orientation.w; 

	//different way of control, non-pure-pursuit like
	double xpos, ypos, global_angle, angle_offset, temp, pathsize;
	xpos = la_point.x - odom.pose.pose.position.x;
	ypos = la_point.y -odom.pose.pose.position.y;
	global_angle = atan2(ypos, xpos);
	angle_offset = global_angle - heading;
	pathsize = path.poses.size()-1;
	temp = pow((pow((path.poses[pathsize].pose.position.x - odom.pose.pose.position.x), 2) + pow((path.poses[pathsize].pose.position.y - odom.pose.pose.position.y), 2)), 0.5);

	std::cout<<"angle_offset = "<<angle_offset<<endl; 
	if(temp<error_radius){
		drive_vel.linear.x =0.0;
		drive_vel.angular.z = 0.0;		
	}
	else if(fabs(angle_offset)<0.1){
		drive_vel.linear.x = 0.1;
		drive_vel.angular.z = 0.0;
	}

	else if(angle_offset > 0.0){
		drive_vel.linear.x = 0.0;
		drive_vel.angular.z = 0.3;
	}
	else{
		drive_vel.linear.x = 0.0;
		drive_vel.angular.z = -0.3;
	} 
	std::cout<<"drive velocity [linear, angular] = ["<<drive_vel.linear.x<<", "<<drive_vel.angular.z<<"]"<<endl;
	return;
}
			
	//transform coordinates  to robot coordinate system
	//xgv = (la_point.x - odom.pose.pose.position.x)*cos(heading) + (la_point.y -odom.pose.pose.position.y)*sin(heading); 
	//ygv = -1.0*(la_point.x - odom.pose.pose.position.x )*sin(heading) + (la_point.y -odom.pose.pose.position.y)*cos(heading);
	//xgv = la_point.x; ygv = la_point.y;
	//std::cout<<"Comannd::update la_point x,y = ("<<la_point.x<<", "<<la_point.y<<")"<<std::endl;
	//std::cout<<"xgv, ygv = ("<<xgv<<", "<<ygv<<endl;
	//x = fabs(xgv - odom.pose.pose.position.x);
	//delta_x = (xgv - odom.pose.pose.position.x);
	//y = fabs(ygv - odom.pose.pose.position.y);
	//std::cout<<"distance to la_point = "<<pow((pow(x,2)+pow(y,2)), 0.5)<<endl;
	//if((pow(x,2)+pow(y,2)) == 0){
	//	curvature = 0;
	//	drive_vel.linear.x = 0.0;
	//    drive_vel.angular.z = drive_vel.linear.x*curvature;	
	//}
	//else{
		//curvature = 2.0*delta_x/(pow(x,2)+pow(y,2));
		//drive_vel.linear.x = 0.2;
		//drive_vel.angular.z = drive_vel.linear.x*curvature;
	//}
	
	
	
	
		

//void PFC::pure_pursuit(const nav_msgs::Path::ConstPtr& _path){

		//nav_msgs::Path path = *_path;

 // waypoiont [wp1, wp2, ...]
// wp1 = goal && odom_measurement = start => send this to planner
//plannerrr, plans path from start-goal --path [start, p1, p2, p3.... goal/wp*]

//look_ahead distance was p_next-point_current


		//find closest point on the path from where you are
		//double dist = INT_MAX;
		//double temp;
		//geometry_msgs::Pose closest_point;
		//nav_msgs::Odometry curr_position = odom;
		//geometry_msgs::Pose _point;
		//int i, closest_index;
		//for ( i = 0; i<path.poses.size(); i++){
			//_point = path.poses[i].pose;
			//temp = pow((pow((_point.position.x - curr_position.pose.pose.position.x), 2) + pow((_point.position.y - curr_position.pose.pose.position.y), 2)), 0.5);
		//	if(temp<dist){
			//	dist = temp;
			//	closest_point = _point;
			//	closest_index = i;
			//}
		//}

		

		//ask tyler about lookahead points here

		//now do pure pursuit
		//here, the assumption is that, lookahead distance is 1;
		

			//publish twist message
			//vel_publisher.publish(drive_velocity);

		//}
		//return;

	//}
