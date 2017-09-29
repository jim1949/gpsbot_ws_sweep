#!/usr/bin/python
import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
import random

#the callback function for incoming data
def callback(data):
	rospy.loginfo("x is now:%f"% data.x)

#the 'main' bit
rospy.init_node('controller')
rospy.Subscriber('turtle1/pose',Pose,callback)
pub=rospy.Publisher("turtle1/cmd_vel",Twist,queue_size=10)
r=rospy.Rate(3)

while not rospy.is_shutdown():
	msg=Twist()
	msg.linear.x=1
	msg.angular.z=2*(random.random()-0.5)
	rospy.loginfo("Turn rate %f"%msg.angular.z)
	pub.publish(msg)
	r.sleep()
