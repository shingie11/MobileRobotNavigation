#include <cmath>
#include "localization/ekf_localization.h"
#include "geometry_msgs/Point.h"


using namespace std;

geometry_msgs::Quaternion yaw_to_quaternion(const double& yaw ){
	geometry_msgs::Quaternion quaternion;
	quaternion.w = cos( yaw / 2.0 );
	quaternion.x = 0.0;
	quaternion.y = 0.0;
	quaternion.z = sin( yaw / 2.0 );
	
	return quaternion;
}

EKF_Localization::EKF_Localization(const Eigen::VectorXd& alpha,const Eigen::MatrixXd& q ) : _u(),
																							_landmarks(),
																							_z(),
																							_mu( Eigen::VectorXd::Zero( 3) ),
																							_sigma( Eigen::MatrixXd::Zero(3, 3 ) ),
																							_alpha( alpha ),
																							_q( q ) {
}

EKF_Localization::~EKF_Localization() {

}

void EKF_Localization::handle_command(const geometry_msgs::Twist::ConstPtr& msg ){

	_u = *msg;
	return;
}

void EKF_Localization::handle_odometry(const nav_msgs::Odometry::ConstPtr& msg ){
	_u = msg->twist.twist;
	return;

}

void EKF_Localization::handle_landmarks(const perception::Landmarks::ConstPtr& msg ){
		for(unsigned int i = 0; i < msg->landmarks.size(); i++ ){
			map<int, geometry_msgs::Point >::iterator it_landmark = _landmarks.find(msg->landmarks[ i ].signature );
			if( it_landmark != _landmarks.end() ){
				it_landmark->second = msg->landmarks[ i ].pos;
			}
			else{
				_landmarks.insert( pair<int, geometry_msgs::Point >( msg->landmarks[ i].signature, msg->landmarks[ i ].pos ) );
			}
		}
		return;
}

void EKF_Localization::handle_observations(const perception::Observations::ConstPtr& msg ){
		_z = *msg;
		return;

}


void EKF_Localization::step(const double& dt ){
	// implement motion model step for time dt (make sure to account for zero angular velocity!)
	Eigen::MatrixXd gt = Eigen::MatrixXd::Zero( 3, 3 );
	Eigen::MatrixXd id = Eigen::MatrixXd::Zero( 3, 3 );
	Eigen::MatrixXd hit = Eigen::MatrixXd::Zero( 3, 3 );
	Eigen::MatrixXd sit = Eigen::MatrixXd::Zero( 3, 3 );
	Eigen::MatrixXd kit = Eigen::MatrixXd::Zero( 3, 3 );
	Eigen::MatrixXd vt = Eigen::MatrixXd::Zero( 3, 2 );
	Eigen::MatrixXd mt = Eigen::MatrixXd::Zero( 2, 2 );
	Eigen::MatrixXd motion_model = Eigen::MatrixXd::Zero( 3, 1);
	Eigen::MatrixXd z_hat = Eigen::MatrixXd::Zero( 3,1 );
	Eigen::MatrixXd innovation = Eigen::MatrixXd::Zero( 3 , 1);

	id(0,0) = 1.0; id(1,1) = 1.0; id(2,2) = 1.0;
	

	gt(0,0) = 1.0; gt(1,1) = 1.0; gt(2,2) = 1.0; //diagonal
	gt(0,1) = 0.0; gt(1,0) = 0.0; gt(2,0) = 0.0; gt(2,1) = 0.0;
	
	vt(1,0) = 0; vt(1, 1) = dt;
	
	mt(0,0) = _alpha(0)*_u.linear.x*_u.linear.x + _alpha(1)*_u.angular.z*_u.angular.z;
	mt(1,1) = _alpha(2)*_u.linear.x*_u.linear.x + _alpha(3)*_u.angular.z*_u.angular.z;
	mt(1,0) = 0.0; mt(0, 1) = 0.0;

	
	if(_u.angular.z == 0.0){

		motion_model(0,0) = -1.0*_u.linear.x*sin(_mu(2)) + _u.linear.x*sin(_mu(2) + dt*_u.angular.z);
		motion_model(1,0) = _u.linear.x*cos(_mu(2)) - _u.linear.x*cos(_mu(2) + dt*_u.angular.z);
		motion_model(2,0) = _u.angular.z*dt;

		gt(0,2) = -1.0*_u.linear.x*cos(_mu(2)) + _u.linear.x*cos(_mu(2) + dt*_u.angular.z);
		gt(1,2) = -1.0*_u.linear.x*sin(_mu(2)) + _u.linear.x*sin(_mu(2) + dt*_u.angular.z);

		vt(0,0) = -1.0*sin(_mu(2)) + sin(_mu(2) +dt*_u.angular.z );
		vt(0,1) = _u.linear.x*(sin(_mu(2)) - sin(_mu(2) +dt*_u.angular.z )) + _u.linear.x*(cos(_mu(2) + dt*_u.angular.z))*dt;
		vt(1,0) = cos(_mu(2)) - cos(_mu(2) +dt*_u.angular.z);
		vt(1,1) = _u.linear.x*(cos(_mu(2)) - cos(_mu(2) +dt*_u.angular.z )) + _u.linear.x*(sin(_mu(2) + dt*_u.angular.z))*dt;
		
	}
	else{

		motion_model(0,0) = ((-1.0*_u.linear.x)/_u.angular.z)*sin(_mu(2)) + ((_u.linear.x)/_u.angular.z)*sin(_mu(2) + dt*_u.angular.z);
		motion_model(1,0) = ((_u.linear.x)/_u.angular.z)*cos(_mu(2)) - ((_u.linear.x)/_u.angular.z)*cos(_mu(2) + dt*_u.angular.z);
		motion_model(2,0) = _u.angular.z*dt;
		
		gt(0,2) = (-1.0*_u.linear.x*cos(_mu(2)))/_u.angular.z + (_u.linear.x*cos(_mu(2) + dt*_u.angular.z))/_u.angular.z;
		gt(1,2) = (-1.0*_u.linear.x*sin(_mu(2)))/_u.angular.z + (_u.linear.x*sin(_mu(2) + dt*_u.angular.z))/_u.angular.z;

		vt(0,0) = (-1.0*sin(_mu(2)))/_u.angular.z + sin(_mu(2) +dt*_u.angular.z )/_u.angular.z;
		vt(0,1) = (_u.linear.x/(_u.angular.z*_u.angular.z))*(sin(_mu(2)) - sin(_mu(2) +dt*_u.angular.z )) + (_u.linear.x/_u.angular.z)*(cos(_mu(2) + dt*_u.angular.z))*dt;
		vt(1,0) = (cos(_mu(2)) - cos(_mu(2) +dt*_u.angular.z))/_u.angular.z;
		vt(1,1) = (_u.linear.x/(_u.angular.z*_u.angular.z))*(cos(_mu(2)) - cos(_mu(2) +dt*_u.angular.z )) + (_u.linear.x/_u.angular.z)*(sin(_mu(2) + dt*_u.angular.z))*dt;
	}

	
	_mu = _mu + motion_model;
	_sigma = gt*_sigma*gt.transpose() + vt*mt*vt.transpose();
	
	for(unsigned int i = 0; i < _z.observations.size(); i++ ){
	// implement measurement model step for all observations

		double q = pow((_landmarks[i].x - _mu(0)),2) + pow((_landmarks[i].y -_mu(1)),2);
		z_hat(0) = pow(q, 0.5);
		z_hat(1) = atan2((_landmarks[i].x  -_mu(0)), (_landmarks[i].y -_mu(1)));
		z_hat(2) = _landmarks[i].z;

		hit(0,0) = -1.0*(_landmarks[i].x -_mu(0))/pow(q, 0.5);
		hit(0,1) =  -1.0*(_landmarks[i].y -_mu(1))/pow(q, 0.5);
		hit(1,2) = -1.0;
		hit(1,0) = (_landmarks[i].y -_mu(1))/pow(q, 0.5);
		hit(0,1) =  -1.0*(_landmarks[i].x -_mu(0))/pow(q, 0.5);
		hit(0,2) = 0.0;
		hit(2,0) = 0.0;
		hit(2,1) = 0.0;
		hit(2,2) = 0.0;

		sit = hit*_sigma*hit.transpose() + _q;
		kit = _sigma*hit.transpose()*sit.inverse();
		
		innovation(0) = _z.observations.at(i).range - z_hat(0);
		innovation(1) = _z.observations.at(i).bearing - z_hat(1);
		innovation(2) = _z.observations.at(i).signature - z_hat(2);

		_mu = _mu + kit*innovation;
		_sigma = (id - kit*hit)*_sigma;	
		
	}
	// clear past observations
	_z.observations.clear();

	return;

}

nav_msgs::Odometry EKF_Localization::estimated_odometry(void)const{
	nav_msgs::Odometry msg;
	msg.pose.pose.position.x = _mu( 0 );
	msg.pose.pose.position.y = _mu( 1 );
	msg.pose.pose.orientation = yaw_to_quaternion( _mu( 2 ) );
	
	return msg;
}
