Course: ECE232: Autonomous Mobile Robots
Assignment: Term Project
Author: Shingirai Dhoro
Instructor: Professor Thomas Howard
Date: 04/29/2020.

Overview:
This project is incomplete. I am still working on the localization module, which, at the time of writing, is not working. The previous modules (as per the order in which they were given in course content) are supposed to work with few challenges. Below is the list of known issues at the time of writing:

Perception:
	Should work as expected.

PFC:
	Is functional but slow. I implemented two pfcs, one that is somewhat dump which rotates to the correct heading and then move. The Pure Pursuit algorithm (commented out) is partially functional and i think it has something to do with optimizing lookahead distance with the robot speed.

Simulator:
	Is functional.

Executive:
	Is functional

Planner:
	Is functional. A little thing to be added is discretization. there is also a weird drawing of the path in GUI after 1 waypoint. This does not seem to affect navigation though.

GUI:
	Functional. Challenge in drawing path explained in the planner section. Wrote methods related to localization, and perception, but they are not tested yet, even though they compile.

Localization:
	Not functional yet. All methods are written, now in debugging phase. 

Mapper:
	Not yet written, To come after Localization is at least partially functional.


Launch Files:
	I have one launch file you may use to test waypoint navigation. The file is named  metis-nav.launch. Please be advised that since the localization module is not yet functional, the system is using odometry from simulator to localize. I will change this once the localization is working (not for credit of course).




