#!/usr/bin/python
import rospy
from rospy_tutorials.msg import Floats
import random
# callback for incoming array
def array_callback(data):
# print the length
	print "I got %i numbers:"%len(data.data)
# print the data itself
	print data.data
# start the node
rospy.init_node("array_listener")
pub = rospy.Subscriber("myarray11", Floats, array_callback)
rospy.spin()
