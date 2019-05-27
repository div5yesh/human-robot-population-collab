#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
import roslib
roslib.load_manifest('human-robot-population-collab')
import math
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
import actionlib

class Assemble:
    def __init__(self):
        rospy.init_node("assemble")

    def square(self):
        client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        client.wait_for_server()

        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "robot1_tf/base_footprint"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position.x = 1.0
        goal.target_pose.pose.position.y = 1.0
        goal.target_pose.pose.orientation.w = 1.0

        client.send_goal(goal)
        client.wait_for_result(rospy.Duration.from_sec(5.0))

        # print("Result:" + client.get_result())
        # print("State:" + client.get_state())

        # if(client.get_state() == actionlib.SimpleGoalState.DONE):
        #     print("done")
        # else:
        #     print("error")

assemble = Assemble()  
while not rospy.is_shutdown():
    shape = raw_input("Enter command:")
    if shape == "go":
        assemble.square()
