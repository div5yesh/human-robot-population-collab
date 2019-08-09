#!/bin/bash

set -e

# Create a ROS Workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make

source devel/setup.bash
echo $ROS_PACKAGE_PATH

# create a new package
# cd ~/catkin_ws/src
# catkin_create_pkg beginner_tutorials std_msgs rospy roscpp
# cd ~/catkin_ws
# catkin_make
# . ~/catkin_ws/devel/setup.bash