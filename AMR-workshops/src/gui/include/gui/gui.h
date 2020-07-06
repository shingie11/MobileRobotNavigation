#ifndef GUI_H
#define GUI_H

#include <iostream>
#include "ros/ros.h"

#include <QtOpenGL/QGLWidget>
#include <QtGui/QKeyEvent>
#include <QtCore/QTimer>

#include "nav_msgs/Odometry.h"
#include "nav_msgs/Path.h"
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/Point.h"
#include "perception/Observations.h"

class GUI: public QGLWidget {
	Q_OBJECT
	public:
		GUI( QWidget * parent = NULL);
		virtual ~GUI();

		void handleLaserScan( const sensor_msgs::LaserScan::ConstPtr& msg);
		void handleOdom(const nav_msgs::Odometry::ConstPtr& msg);
		void handleEstimatedOdom(const nav_msgs::Odometry::ConstPtr& msg);
		void handlePath(const nav_msgs::Path::ConstPtr& msg);
		void handleWaypoints(const geometry_msgs::Point::ConstPtr& msg);		
		void handle_laPoints(const geometry_msgs::Point::ConstPtr& msg);
		void handleLandmarks(const perception::Observations::ConstPtr& msg);

	protected slots:
		void timer_callback( void);

	protected:
		virtual void initializeGL();
		virtual void resizeGL( int width, int height);
		virtual void paintGL();
		void drawCoordinateSystem(void);
		void drawGrid();
		void drawPose(const geometry_msgs::Pose& pose, const double& red = 0.0,
			 const double& green = 0.0, const double& blue = 0.0, const double&
			 radius = 0.1225);
		void drawEstimatedPose(const geometry_msgs::Pose& pose, const double& red = 0.0,
			 const double& green = 0.5, const double& blue = 0.5, const double&
			 radius = 0.1225);
		void drawPath(const nav_msgs::Path& path); //draws path 
		void drawWaypoints(const geometry_msgs::Point& waypoint);
		void draw_laPoint(const geometry_msgs::Point& la_point);
		void drawLandmarks(const perception::Observations& landmarks);
		std::vector<double> getLandmarkCoordinates(perception::Observation& observation);
		virtual void keyPressEvent(QKeyEvent* event);
		void drawLaserScan(const sensor_msgs::LaserScan& laserscan,const double& red, const double& green, const double& blue);
		
		QTimer _timer;

		double _zoom;
		std::pair<double, double> _center;

		sensor_msgs::LaserScan _laserscan;
		nav_msgs::Odometry _odom;
		nav_msgs::Odometry _odom_estimate;
		nav_msgs::Path _path;
		geometry_msgs::Point _waypoint;
		geometry_msgs::Point _la_point;
		perception::Observations _landmarks;
		
};

#endif /* GUI_H */

