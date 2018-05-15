#!/usr/bin/env python

import rospy
from std_msgs.msg import String
import sys,tty,termios

def getFromKeyboard():
	fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
		tty.setraw(sys.stdin.fileno())
                ch = sys.stdin.read(1)
        finally:
                termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch

def function():
    pub = rospy.Publisher('keys', String, queue_size=10)
    rospy.init_node('keyboard', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():

	k = getFromKeyboard()
	#if (k!='q'):		
		#print 'Has presionado', k
	#if (k=='q'):
		#print "\n-- See you! --"
		#break
        
        pub.publish(k)
        rate.sleep()


if __name__ == '__main__':
    try:
        function()
    except rospy.ROSInterruptException:
        pass
