#!/usr/bin/python
import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
import random

#the callback function for incoming data
def callback(data):
		#rospy.loginfo("x is now %f"%data.x)
		pass


#the 'main' bit
rospy.init_node("controller")
rospy.Subscriber("turtle1/pose",Pose,callback)
pub=rospy.Publisher("turtle1/cmd_vel",Twist,queue_size=1)
r=rospy.Rate(1)



while not rospy.is_shutdown():
		msg=Twist()
		#read speed in from parameter, defaulting to 1.0
		msg.linear.x=rospy.get_param("turtle1/turtle_speed",1.0)
		msg.angular.z=2*(random.random()-0.5)
		rospy.loginfo("speed %f,turn rate %f"%(msg.linear.x,msg.angular.z))
		pub.publish(msg)
		r.sleep()