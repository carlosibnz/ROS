#!/usr/bin/env python

import rospy
from std_msgs.msg import Int8

def funcion(data):
	rospy.loginfo("%d", data.data)

def subscriptor():
	rospy.init_node ('subscriptor', anonymous=True)
	rospy.Subscriber("canal", Int8, funcion)
	rospy.spin()

if __name__ == '__main__':
	subscriptor()
