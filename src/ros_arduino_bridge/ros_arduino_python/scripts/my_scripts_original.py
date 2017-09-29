#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist, Point,PoseStamped
from actionlib_msgs.msg import GoalStatusArray,GoalStatus

# from move_base_msgs.msg import MoveBaseActionGoal

class ReachGoals():
	def __init__(self):
		rospy.init_node('Reach_Goals',anonymous=False)
		rospy.Subscriber('/move_base/status',GoalStatusArray,self.callback)
		self.goal=rospy.Publisher('/move_base_simple/goal',PoseStamped,queue_size=1)

		self.start_waitTime=rospy.Time.now()
		self.t=0
		#flag to set the next goal
		self.ready_flag=True
		self.rate = rospy.get_param('~rate', 20)
		self.status=0
		r = rospy.Rate(self.rate)
# rostopic pub /move_base_simple/goal geometry_msgs/PoseStamped  '{header: {frame_id: "map"},pose:{position:{x: 1.5, y: -2.4, z: 0.2}, orientation:{x: 0.0, y: 0.0, z: 0.0, w: 1.0}}}'
		
		# self.location=PoseStamped()
		self.locations=dict()
		self.i=0
		running_time=0
		location= ""
		last_location= ""

		self.status=3
		self.last_status=3

		self.stopflag=True

		#A
		self.locations['A']=PoseStamped()
		self.locations['A'].header.frame_id="map"
		self.locations['A'].pose.position.x=3.4
		self.locations['A'].pose.position.y=0.3
		self.locations['A'].pose.orientation.w=1.0

		#B
		self.locations['B']=PoseStamped()
		self.locations['B'].header.frame_id="map"
		self.locations['B'].pose.position.x=1.5
		self.locations['B'].pose.position.y=-2.4
		self.locations['B'].pose.orientation.w=1.0

		#C
		self.locations['C']=PoseStamped()
		self.locations['C'].header.frame_id="map"
		self.locations['C'].pose.position.x=5.4
		self.locations['C'].pose.position.y=2.7
		self.locations['C'].pose.orientation.w=1.0

		#D
		self.locations['D']=PoseStamped()
		self.locations['D'].header.frame_id="map"
		self.locations['D'].pose.position.x=5.4
		self.locations['D'].pose.position.y=-3.0
		self.locations['D'].pose.orientation.w=1.0

		self.n_locations=len(self.locations)
		sequence=self.locations.keys()
		rospy.loginfo(sequence)
		# random sample:
		# sequence=sample(locations, n_locations)

		start_time=rospy.Time.now()
		self.start_waitTime=rospy.Time.now()

		while not rospy.is_shutdown():
			rospy.loginfo("self.status;%d" %self.status)
			if self.ready_flag==True:
				# self.flag=False
# 
				running_time=rospy.Time.now()-start_time
				running_time=running_time.secs 
				rospy.loginfo("running_time%f",running_time)
				if running_time<3.0:
					# #here is the publish commands:
					location=sequence[self.i]
					self.goal.publish(self.locations[sequence[self.i]])
					rospy.loginfo("publishing location: %c"%sequence[self.i])

					# rospy.loginfo(self.i)
				else:
					start_time=rospy.Time.now()
					self.ready_flag=False



		rospy.spin()

				# rospy.loginfo("This is True")

			# rospy.loginfo("this is the process!")

	def callback(self,data):
		self.status=data.status_list[0].status

		if all(data.status_list):
			# rospy.loginfo("status:%d"%data.status_list[0].status)
			
			if self.status==3:
				rospy.loginfo("You get to the Goal")

				waitting_time=rospy.Time.now()-self.start_waitTime
				waitting_time=waitting_time.secs

				# if waitting_time>5.0:
				if self.last_status==1 and self.ready_flag==False:
					self.i=self.i+1
					rospy.loginfo("ready flag:%d, i:%d, I'm waiting here."%(self.ready_flag,self.i))
				if self.i>self.n_locations-1:
					self.i=0
				self.ready_flag=True
				self.start_waitTime=rospy.Time.now()


			
		else:
			rospy.loginfo("empty array")
		self.last_status=self.status







# def shutdown(self):
# # Always stop the robot when shutting down the node
#     rospy.loginfo("Stopping the robot...")
#     rospy.sleep(1)

if __name__=='__main__':
	try:
		ReachGoals()
	except:
		rospy.loginfo("Reaching Goal Process terminated.")
