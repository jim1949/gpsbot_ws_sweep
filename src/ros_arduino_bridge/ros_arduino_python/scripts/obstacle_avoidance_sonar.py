#!/usr/bin/env python
#coding:utf-8

import datetime
import rospy
import actionlib
from actionlib_msgs.msg import *
from geometry_msgs.msg import Twist
from move_base_msgs.msg import MoveBaseAction,MoveBaseGoal
from math import radians,pi
import math
from std_msgs.msg import Int16

class ObstacleAvoidance():
	def __init__(self):
		self.flag=False
		print "0"
		rospy.init_node('obstacle_avoidance',anonymous=False)
		pub=rospy.Publisher('cmd_vel',Twist,queue_size=1)
		print "10"
		self.Fsub=rospy.Subscriber('Branger', Int16, self.Fcallback)
		self.Bsub=rospy.Subscriber('Franger',Int16, self.Bcallback)
		print "1"
		self.move_base = actionlib.SimpleActionClient("move_base", MoveBaseAction)
		self.move_base.wait_for_server(rospy.Duration(60))
		rospy.Subscriber('/move_base/status',GoalStatusArray,self.statuscallback)
		rospy.loginfo("Connected to move base server")
		rospy.loginfo("Starting navigation test")
		print "2"
		self.laststatus=1
		self.rate=rospy.get_param('~rate',1)
		r=rospy.Rate(self.rate)
		print "3"
		
		while not rospy.is_shutdown():
			# rospy.loginfo("Status: %d\n",self.status);
			twist=Twist()
			if self.flag:
				rospy.loginfo("Status: %d\n",self.status)
				if self.status==4:
					
					
					if self.Front_range>self.Back_range:
						twist.linear.x=0.2
					else:
						twist.linear.x=-0.2
					pub.publish(twist)
			r.sleep()

	
	def statuscallback(self,data):
		if data.status_list:
			self.flag=True
	
			self.status=data.status_list[0].status
		else:
			self.flag=False

	def Fcallback(self,data):
		self.Front_range=data.data

	def Bcallback(self,data):
		self.Back_range=data.data

if __name__ == '__main__':
	try:
		ObstacleAvoidance()
		rospy.spin()
	except:
		rospy.loginfo("Terminated.")

