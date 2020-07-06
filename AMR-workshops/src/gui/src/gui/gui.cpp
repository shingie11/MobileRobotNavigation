#include <iostream>


#include <GL/gl.h>
#include <GL/glu.h>


#include "gui/gui.h"
#include "geometry_msgs/Polygon.h"
#include "perception/Observation.h"

using namespace std;

double
quaternion_to_yaw(const geometry_msgs::Quaternion& quaternion ){
double siny_cosp = 2*(quaternion.w * quaternion.z + quaternion.x * quaternion.y);
double cosy_cosp = 1 - 2*(quaternion.y * quaternion.y + quaternion.z * quaternion.z);

return std::atan2(siny_cosp, cosy_cosp);

}

GUI::
GUI ( QWidget*parent ) : QGLWidget( parent ),
									_timer(),
									_zoom( 5.0 ),
									_center( 0.0, 0.0 ),
									_laserscan(),
									_odom() {
	setMinimumSize( 600, 600 );
	setFocusPolicy(Qt::StrongFocus);

	connect( &_timer, SIGNAL( timeout() ),this, SLOT( timer_callback() ) );
	_timer.start( 10 );
}

GUI::
~GUI() {

}

void
GUI::
handleLaserScan(const sensor_msgs::LaserScan::ConstPtr& msg ){
	_laserscan = *msg;
	updateGL();
	return;
}

void GUI::handleLandmarks(const perception::Observations::ConstPtr& msg){
	_landmarks = *msg;
	updateGL();
	return;
}

void
GUI::
handleOdom(const nav_msgs::Odometry::ConstPtr& msg ){
	_odom = *msg;
	updateGL();
	return;
}

void
GUI::
handleEstimatedOdom(const nav_msgs::Odometry::ConstPtr& msg ){
	_odom_estimate = *msg;
	updateGL();
	return;
}

void GUI::handlePath(const nav_msgs::Path::ConstPtr& msg){

	_path = *msg;
	updateGL();
	return;
}

void GUI::handleWaypoints(const geometry_msgs::Point::ConstPtr& msg){
	
	_waypoint = *msg;
	updateGL();
	return;
}

void GUI::handle_laPoints(const geometry_msgs::Point::ConstPtr& msg){
	
	_la_point = *msg;
	updateGL();
	return;
}



void
GUI::
timer_callback(void){
	ros::spinOnce();
	return;
}

void
GUI::
initializeGL(){
	glClearColor( 1.0, 1.0, 1.0, 1.0 );
	glEnable( GL_LINE_SMOOTH );
	glEnable( GL_BLEND );
	return;
}

void
GUI::
resizeGL(int width,int height ){
	glViewport( 0, 0, width, height );
	return;
}

void
GUI::
paintGL(){
glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	double ratio = (double)( size().width() ) / (double)( size().height() );
	gluOrtho2D( -_zoom*ratio + _center.first, _zoom*ratio + _center.first,
		 -_zoom + _center.second, _zoom + _center.second );
	glMatrixMode(GL_MODELVIEW);

	glLoadIdentity();
	drawGrid();
	drawCoordinateSystem();
	drawLaserScan( _laserscan, 0.0, 0.0, 1.0);
	drawPose( _odom.pose.pose, 0.0, 0.0, 0.0, 0.1225 );
	drawEstimatedPose( _odom_estimate.pose.pose, 0.0, 0.5, 0.5, 0.1225);
	drawPath(_path);
	draw_laPoint(_la_point);
	drawWaypoints(_waypoint);
	drawLandmarks(_landmarks);
	return;
}

void
GUI::
drawCoordinateSystem(void){
	glBegin( GL_LINES );
	glColor4f( 1.0, 0.0, 0.0, 1.0 );
	glVertex3f( 0.0, 0.0, 0.0 );
	glVertex3f( 1.0, 0.0, 0.0 );
	glColor4f( 0.0, 1.0, 0.0, 1.0 );
	glVertex3f( 0.0, 0.0, 0.0 );
	glVertex3f( 0.0, 1.0, 0.0 );
	glColor4f( 0.0, 0.0, 1.0, 1.0 );
	glVertex3f( 0.0, 0.0, 0.0 );
	glVertex3f( 0.0, 0.0, 1.0 );
	glEnd();
	return;
}

//function to get landmark coordinates from range, bearing and signature
std::vector<double> GUI::getLandmarkCoordinates(perception::Observation& observation){
	std::vector<double> xycoordinates;
	
	xycoordinates.push_back(_odom.pose.pose.position.x + observation.range*cos(observation.bearing));
	xycoordinates.push_back(_odom.pose.pose.position.y + observation.range*sin(observation.bearing));
	
	return xycoordinates; //first element is x coordinate, second element is y coordinate

}

void GUI::drawLandmarks(const perception::Observations& landmarks){
	perception::Observation observation;
	for (int i= 0; i<landmarks.observations.size(); i++){ //loop through all landmarks and draw them as triangles.
		observation = landmarks.observations.at(i);
		std::vector<double> xy = getLandmarkCoordinates(observation);
		glColor4f( 0.63, 0.13, 0.94, 1.0 );
		glBegin( GL_TRIANGLES );
		glVertex3f( -1.0*xy.front()-0.25, -1.0*xy.back()-0.25, 0.0 );
		glVertex3f( 1.0*xy.front()+0.25, -1.0*xy.back()-0.25, 0.0 );
		glVertex3f( 0, 1.0*xy.back()+0.25, 0.0 );
		glEnd();
		glLineWidth( 1.0 );	
	}
	return;
}


void
GUI::
drawGrid(void){
	glColor4f( 0.8, 0.8, 0.8, 1.0 );
	glLineWidth( 2.0 );
	glBegin( GL_LINES );
	for(int i = -10; i <= 10; i++ ){
		glVertex3f( -10.0, (double)( i ), 0.0 );
		glVertex3f( 10.0, (double)( i ), 0.0 );
		glVertex3f( (double)( i ), -10.0, 0.0 );
		glVertex3f( (double)( i ), 10.0, 0.0 );
	}
	glEnd();
	glLineWidth( 1.0 );
}

void
GUI::
drawLaserScan(const sensor_msgs::LaserScan& laserscan,const double& red, const double& green, const double& blue){
	return;
}

void
GUI::
drawPose(const geometry_msgs::Pose& pose,const double& red,const double& green,
			const double& blue,const double& radius ){
	glPushMatrix();
	glTranslated( pose.position.x, pose.position.y, 0.0 );
	glRotated( quaternion_to_yaw( pose.orientation )*180.0 / M_PI, 0.0, 0.0,
	1.0 );
	unsigned int discretization = 33;
	glColor4f( red, blue, green, 1.0 );
	glLineWidth( 5.0 );
	glBegin( GL_LINE_STRIP );
	for(unsigned int i = 0; i < discretization ; i++ ){
		double angle = 2.0*M_PI*(double)( i ) / (double)( discretization -1 );
		glVertex3f( radius*cos( angle ), radius*sin( angle ), 0.0 );
	}
	glEnd();
	glBegin( GL_LINES );
	glVertex3f( radius, 0.0, 0.0 );
	glVertex3f( -radius, 0.0, 0.0 );
	glEnd();
	glBegin( GL_TRIANGLES );
	glVertex3f( radius, 0.0, 0.0 );
	glVertex3f( radius/4.0, radius/2.0, 0.0 );
	glVertex3f( radius/4.0, -radius/2.0, 0.0 );
	glEnd();glLineWidth( 1.0 );glPopMatrix();
	return;
}

//draws estimate pose for the robot in simulator
void
GUI::
drawEstimatedPose(const geometry_msgs::Pose& pose,const double& red,const double& green,
			const double& blue,const double& radius ){
	glPushMatrix();
	glTranslated( pose.position.x, pose.position.y, 0.0 );
	glRotated( quaternion_to_yaw( pose.orientation )*180.0 / M_PI, 0.0, 0.0,
	1.0 );
	unsigned int discretization = 33;
	glColor4f( blue, green, red, 1.0 );
	glLineWidth( 5.0 );
	glBegin( GL_LINE_STRIP );
	for(unsigned int i = 0; i < discretization ; i++ ){
		double angle = 2.0*M_PI*(double)( i ) / (double)( discretization -1 );
		glVertex3f( radius*cos( angle ), radius*sin( angle ), 0.0 );
	}
	glEnd();
	glBegin( GL_LINES );
	glVertex3f( radius, 0.0, 0.0 );
	glVertex3f( -radius, 0.0, 0.0 );
	glEnd();
	glBegin( GL_TRIANGLES );
	glVertex3f( radius, 0.0, 0.0 );
	glVertex3f( radius/4.0, radius/2.0, 0.0 );
	glVertex3f( radius/4.0, -radius/2.0, 0.0 );
	glEnd();glLineWidth( 1.0 );glPopMatrix();
	return;
}


void GUI::drawWaypoints(const geometry_msgs::Point& waypoints){
		
		double waypoint_radius = 0.1;
		glColor3f(0.0, 0.0, 1.0 );
		glBegin(GL_POLYGON);
		glVertex2f( waypoints.x + waypoint_radius, waypoints.y +waypoint_radius);
		glVertex2f( waypoints.x +waypoint_radius, waypoints.y -waypoint_radius);
		glVertex2f( waypoints.x -waypoint_radius, waypoints.y +waypoint_radius);
		glVertex2f( waypoints.x -waypoint_radius, waypoints.y -waypoint_radius);
		glEnd();
		glLineWidth(1.0);

	return;

}


void GUI::draw_laPoint(const geometry_msgs::Point& la_point){
	
	double la_point_radius = 0.05;	
	glColor3f(1.0, 0.0, 0.0 );
	glBegin(GL_POLYGON);
	glVertex2f( la_point.x + la_point_radius, la_point.y +la_point_radius);
	glVertex2f( la_point.x +la_point_radius, la_point.y -la_point_radius);
	glVertex2f( la_point.x -la_point_radius, la_point.y +la_point_radius);
	glVertex2f( la_point.x -la_point_radius, la_point.y -la_point_radius);
	glEnd();
	glLineWidth(1.0);
	

	return;
}

void
GUI::
drawPath(const nav_msgs::Path& path){
	double la_point_radius = 0.05;
	glBegin( GL_LINES );
	glColor4f( 0.0, 1.0, 0.0, 1.0 );
	int path_size = path.poses.size();		
	for(int i = 0; i<path_size-1; i++){
		glVertex3f( path.poses[i].pose.position.x, path.poses[i].pose.position.y, 0.0 );
		glVertex3f( path.poses[i+1].pose.position.x, path.poses[i+1].pose.position.y, 0.0  );

	}
	glEnd();
		//draw points on path
	/* for (int i = 0; i<path_size; i++){
		glColor3f(1.0, 0.0, 0.0 );
		glBegin(GL_POLYGON);
		glVertex2f( path.poses[i].pose.position.x + la_point_radius, path.poses[i].pose.position.y +la_point_radius);
		glVertex2f( path.poses[i].pose.position.x +la_point_radius, path.poses[i].pose.position.y -la_point_radius);
		glVertex2f( path.poses[i].pose.position.x -la_point_radius, path.poses[i].pose.position.y +la_point_radius);
		glVertex2f( path.poses[i].pose.position.x -la_point_radius, path.poses[i].pose.position.y -la_point_radius);
		glEnd();
		glLineWidth(1.0);
	} */
		
	return;

}



void
GUI::
keyPressEvent(QKeyEvent*event){
	if( event->matches( QKeySequence::Copy ) ){ 
		close();
		return;
	}
	else {
		switch(event->key()) {
		case Qt::Key_Left:
			_center.first -= 0.5;
			break;
		case Qt::Key_Right:
			_center.first += 0.5;
			break;
		case Qt::Key_Down:
			_center.second -= 0.5;
			break;
		case Qt::Key_Up:
			_center.second += 0.5;
			break;
		case Qt::Key_I:
			if( _zoom > 0.5 ){
				_zoom -= 0.5;
			}
			break;
		case Qt::Key_O:
			_zoom += 0.5;
			break;
		default:
			cout << "could_not_handle_key" << event->key() << endl;
			break;
		}
		updateGL();
	}
	return;
}
