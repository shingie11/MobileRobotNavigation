//wa_two.h

#ifndef wa_two_h
#define wa_two_h

#include <iostream>
#include <stdio.h>
#include <bits/stdc++.h>
//#include <std_msgs/double.h>
#include "ros/ros.h"
#include "wa_two/Update.h"
#include "wa_two/Model.h"
#include "wa_two/Belief.h"

using namespace std;

class WATwo {
	public: 
		WATwo();
		virtual ~WATwo();
		

		void handle_update_(const wa_two::Update& msg);
		void handle_update(const wa_two::Update::ConstPtr& msg);
		void handle_model(const wa_two::Model::ConstPtr& msg);

		wa_two::Model model;
		wa_two::Update update;	
		wa_two::Belief belief;
		vector<double> proj_infoMatrix;
		vector<double>	proj_infoVector;
		vector<double>	inv_infoMatrix;
		vector<double>	inv_qt;

		bool received_modelupdate;

		ros::Publisher belief_publisher;


};

#endif /* wa_two_h */
