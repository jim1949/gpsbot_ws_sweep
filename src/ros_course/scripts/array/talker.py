#!/usr/bin/python
import rospy
from rospy_tutorials.msg import Floats
import random

#start the node
rospy.init_node("array_sender")
pub=rospy.Publisher("myarray",Floats,queue_size=10)
r=rospy.Rate(1)

#main talking loop
while not rospy.is_shutdown():
	#random length
	arrayLen=1+int(5*random.random())
	myNumbers=[]
	checksum=0
	for ii in range(arrayLen):
		t=random.random()
		myNumbers=myNumbers+[t]
		checksum=checksum+t
		#send it
	
			
		pub.publish(myNumbers)
		r.sleep()
	myNumbers=myNumbers+[checksum]
	pub.publish(myNumbers)
	r.sleep()
