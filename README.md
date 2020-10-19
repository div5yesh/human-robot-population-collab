# human-robot-population-collab
Collaboration in human-robot population using ROS and Gazebo simulation

# Ideal SLAM task
`roslaunch turtlebot_gazebo turtlebot_world.launch`

`roslaunch turtlebot_gazebo gmapping_demo.launch`

`roslaunch turtlebot_rviz_launchers view_navigation.launch`

`roslaunch turtlebot_teleop keyboard_teleop.launch`

`rosrun map_server map_saver -f ~/slam/map`

# AMCL task
`roslaunch turtlebot_gazebo turtlebot_world.launch`

`roslaunch turtlebot_gazebo gmapping_demo.launch`

`roslaunch turtlebot_gazebo amcl_demo.launch map_file:=~/slam/maps.yaml`

`roslaunch turtlebot_rviz_launchers view_navigation.launch`

send goals

# HR Pop SLAM
`roslaunch human-robot-population-collab hrpop.launch`

`roslaunch human-robot-population-collab gmapping.launch`

`roslaunch human-robot-population-collab rviz.launch`

`roslaunch human-robot-population-collab human_teleop.launch`

`rosrun map_server map_saver -f ~/catkin_ws/src/human-robot-population-collab/maps/slamfinal`

# HR Pop AMCL
`roslaunch human-robot-population-collab hrpop.launch`

`roslaunch human-robot-population-collab gmapping.launch`

`roslaunch human-robot-population-collab amcl.launch map_file:=~/catkin_ws/src/human-robot-population-collab/maps/slamfinal.yaml`

`roslaunch human-robot-population-collab rviz.launch`

# Assemble
`rosrun human-robot-population-collab assemble.py`