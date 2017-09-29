#!/usr/bin/python
import rospy
from rospy_tutorials.msg import Floats
import random
# start the node
rospy.init_node("array_sender")
pub = rospy.Publisher("myarray11", Floats, queue_size=1)
r = rospy.Rate(1)
# main talking loop
while not rospy.is_shutdown():
# random length
	arrayLen = 1+int(5*random.random())
# populate the array
	myNumbers = []
	for ii in range(arrayLen):
		myNumbers=myNumbers+[random.random()]
# send it
	pub.publish(myNumbers)
	r.sleep()

