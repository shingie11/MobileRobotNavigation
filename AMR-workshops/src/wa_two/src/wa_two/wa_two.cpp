

#include <iostream>
#include <cmath>
#include<string.h>
#include <vector>
#include "wa_two/wa_two.h"
#include <bits/stdc++.h>
#include "ros/ros.h"


//constructor/destructor
WATwo::WATwo(){ received_modelupdate = false;};
WATwo::~WATwo(){};




using namespace std;


//method to invert matrix 
std::vector<double> inv(std::vector<double> myvec){

	double k = 1.0/(myvec.at(0)*myvec.at(3) - (myvec.at(1)*myvec.at(2)));
	std::vector<double> ans;

	
	ans.push_back(k*myvec.at(3));
	ans.push_back(-k*myvec.at(1));
	ans.push_back(-k*myvec.at(2));
	ans.push_back(k*myvec.at(0));

	return ans; 
}

std::vector<double> transpose (std::vector<double> myvec){
	std::vector<double> ans;
	
	ans.push_back(myvec.at(0));
	ans.push_back(myvec.at(2));
	ans.push_back(myvec.at(1));
	ans.push_back(myvec.at(0));

	return ans;
}

std::vector<double> vecmult (std::vector<double> a, std::vector<double> b){
	std::vector<double> ans;
	double temp;
	int bsize = b.size();
	bool flag = false;

	if (bsize > 2 ){ flag= true;}
	
	//for (int i = 0; i<=a.size()/2; i+=2){
		//for (int j = 0; j<bsize/2; j++){
			if (flag){
				temp = a.at(0)*b.at(0) + a.at(1)*b.at(2);
				ans.push_back(temp);
				temp = a.at(0)*b.at(1) + a.at(1)*b.at(3);
				ans.push_back(temp);

				temp = a.at(2)*b.at(0) + a.at(3)*b.at(2);
				ans.push_back(temp);
				temp = a.at(2)*b.at(1) + a.at(3)*b.at(3);
				ans.push_back(temp);
			}
			else{
				temp = a.at(0)*b.at(0) + a.at(1)*b.at(1);
				ans.push_back(temp);
				temp = a.at(2)*b.at(0) + a.at(3)*b.at(1);
				ans.push_back(temp);
				return 	ans;		

			}

		//}

	//}

	return ans;
}

std::vector<double> vecadd(std::vector<double> a, std::vector<double> b){
	std::vector<double> ans;
	
	for (int i= 0; i<a.size(); i++){
		ans.at(i) = a.at(i) + b.at(i);	
	}

	return ans;

}

void WATwo::handle_update(const wa_two::Update::ConstPtr& msg){
	update = *msg;
	return;
}


void WATwo::handle_update_(const wa_two::Update& msg){
	
	if(model.info_vector.empty()){ 
		cout<<"update received but model not intialized yet."<<endl; 
		return;
	}

	received_modelupdate = false;

	inv_infoMatrix = inv(model.info_matrix);
	inv_qt = inv(model.qt);
	
	vector<double> a, b, c, d;
	b = vecmult(model.at, inv_infoMatrix); //at*inv(infor matrix)
	c = transpose(model.at);
	d = vecmult(b, c);
	a = vecadd(d, model.rt);

	proj_infoMatrix = inv(a);
	c = vecmult(b, model.info_vector); 
	d = vecmult(model.bt, update.ut); //bt*ut
	a = vecadd(c, d);
	proj_infoVector = vecmult(proj_infoMatrix, a);

	b = transpose(model.ct);
	c = inv(model.qt);
	d = vecmult(b, c);
	b = vecmult(d, model.ct);
	belief.info_matrix = vecadd(b, proj_infoMatrix);
	
	b = transpose(model.ct);
	c = inv(model.qt);
	d = vecmult(b, update.zt);
	belief.info_vector = (d, proj_infoVector);

	//publishing
	belief_publisher.publish(belief);


	//printouts:

	cout<<"projected information matrix = [ ["<<proj_infoMatrix.at(0)<<","<<proj_infoMatrix.at(1)<<"], ["<<proj_infoMatrix.at(2)<<","<<proj_infoMatrix.at(3)<<","<<"] ]"<<endl;
	
	cout<<"projected information vector = [ "<<proj_infoVector.at(0)<<","<<proj_infoVector.at(1)<<" ]"<<endl;
	
	cout<<"information matrix = [ ["<<belief.info_matrix.at(0)<<","<<belief.info_matrix.at(1)<<"], ["<<belief.info_matrix.at(2)<<","<<belief.info_matrix.at(3)<<","<<"] ]"<<endl;

	cout<<"information vector = [ "<<belief.info_vector.at(0)<<","<<belief.info_vector.at(1)<<" ]"<<endl;

	return;
}


void WATwo::handle_model(const wa_two::Model::ConstPtr& msg){

	model = *msg;
	received_modelupdate = true;
	return;

}

