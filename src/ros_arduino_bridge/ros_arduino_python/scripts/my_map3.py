#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist, Point,PoseStamped
from actionlib_msgs import GoalStatusArray
from move_base_msgs import MoveBaseActionGoal
from math import copysign, sqrt, pow
from geometry_msgs


class ReachGoals():
    def __init__(self):
        # Give the node a name
        rospy.init_node('ReachGoals', anonymous=False)
        
        # Set rospy to execute a shutdown function when terminating the script
        rospy.on_shutdown(self.shutdown)
        
        # How fast will we check the odometry values?
        self.rate = rospy.get_param('~rate', 20)
        r = rospy.Rate(self.rate)
        
        # Set the distance to travel

        # self.test_distance = rospy.get_param('~test_distance', 0.7) # meters
        # self.speed = rospy.get_param('~speed', 0.15) # meters per second
        # self.tolerance = rospy.get_param('~tolerance', 0.01) # meters
        # self.odom_linear_scale_correction = rospy.get_param('~odom_linear_scale_correction', 1.0)
        self.start_test = rospy.get_param('~start_test', True)
        
        # Publisher to control the robot's speed
        self.cmd_vel = rospy.Publisher('/cmd_vel', Twist, queue_size=5)

        #Publisher to control the robot's goal location
        self.goal_location=rospy.Publisher('/move_base_simple/goal',PoseStamped,queue_size=5)

        #Subscriber to get the status
        self.status=rospy.Subscriber('/move_base/status',GoalStatusArray,callback)
        

        # The base frame is base_footprint for the TurtleBot but base_link for Pi Robot
        self.base_frame = rospy.get_param('~base_frame', '/base_footprint')

        # The odom frame is usually just /odom
        self.odom_frame = rospy.get_param('~odom_frame', '/odom')

        # Initialize the tf listener
        self.tf_listener = tf.TransformListener()
        
        # Give tf some time to fill its buffer
        rospy.sleep(2)
        
        # Make sure we see the odom and base frames
        self.tf_listener.waitForTransform(self.odom_frame, self.base_frame, rospy.Time(), rospy.Duration(60.0))        
            
        rospy.loginfo("Bring up rqt_reconfigure to control the test.")
  
        self.position = Point()
        self.goal=PoseStamped()
        

        move_cmd = Twist()
            
        while not rospy.is_shutdown():
            # Stop the robot by default
            move_cmd = Twist()
            
            if self.start_test:
                # Get the current position from the tf transform between the odom and base frames
                
                # Are we close enough?
                if not self.start_test or abs(error) <  self.tolerance:
                    self.start_test = False
                    params = {'start_test': False}
                    rospy.loginfo(params)
                else:
                    # If not, move in the appropriate direction
                    move_cmd.linear.x = copysign(self.speed, -1 * error)
                    self.cmd_vel.publish(move_cmd)
            else:
                self.position = self.get_position()
                # x_start = self.position.x
                # y_start = self.position.y
                

        # Stop the robot
        self.cmd_vel.publish(Twist())

        
    def shutdown(self):
        # Always stop the robot when shutting down the node
        rospy.loginfo("Stopping the robot...")
        self.cmd_vel.publish(Twist())
        rospy.sleep(1)

  def callback(data):
  	rospy.loginfo("This is subscriber!")
 
if __name__ == '__main__':
    try:
        ReachGoals()
        rospy.spin()
    except:
        rospy.loginfo("Reaching Goal Process terminated.")
