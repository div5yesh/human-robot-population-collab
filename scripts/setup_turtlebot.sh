#!/bin/bash

set -e

# Ubuntu Package Install
sudo apt-get install ros-indigo-turtlebot ros-indigo-turtlebot-apps ros-indigo-turtlebot-interactions ros-indigo-turtlebot-simulator ros-indigo-kobuki-ftdi ros-indigo-rocon-remocon ros-indigo-rocon-qt-library ros-indigo-ar-track-alvar-msgs

# Source Installation
# sudo apt-get install python-rosdep python-wstool ros-indigo-ros
# sudo rosdep init
# rosdep update

# mkdir ~/rocon
# cd ~/rocon
# wstool init -j5 src https://raw.github.com/robotics-in-concert/rocon/release/indigo/rocon.rosinstall
# source /opt/ros/indigo/setup.bash
# rosdep install --from-paths src -i -y
# catkin_make

# mkdir ~/kobuki
# cd ~/kobuki
# wstool init src -j5 https://raw.github.com/yujinrobot/yujin_tools/master/rosinstalls/indigo/kobuki.rosinstall
# source ~/rocon/devel/setup.bash
# rosdep install --from-paths src -i -y
# catkin_make

# mkdir ~/turtlebot
# cd ~/turtlebot
# wstool init src -j5 https://raw.github.com/yujinrobot/yujin_tools/master/rosinstalls/indigo/turtlebot.rosinstall
# source ~/kobuki/devel/setup.bash
# rosdep install --from-paths src -i -y
# catkin_make