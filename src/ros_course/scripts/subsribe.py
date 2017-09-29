#!/usr/bin/python
import rospy
from turtlesim.msg import Pose

#the callback function for incoming data
def callback(data):
	print "I got a message!!!"
	print data
	print data.x

#the "main" bit
rospy.init_node("listener")
rospy.Subscriber("turtle1/pose",Pose,callback)
rospy.spin() 
