#!/usr/bin/env python

import rospy
from std_msgs.msg import Int8

def publicador():
	pub = rospy.Publisher('canal', Int8, queue_size=10)
	rospy.init_node('publicador', anonymous=True)
	rate = rospy.Rate(0.5)
	a = 1
	while not rospy.is_shutdown():
		pub.publish(a+3)
		rate.sleep()

if __name__ == '__main__':
	try:
		publicador()
	except rospy.ROSInterruptException:
		pass

