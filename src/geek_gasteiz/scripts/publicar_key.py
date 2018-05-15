#!/usr/bin/env python
import sys,tty,termios
import rospy
from std_msgs.msg import String

def obtenerTecla():
	fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
		tty.setraw(sys.stdin.fileno())
                letra = sys.stdin.read(1)
        finally:
                termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return letra

def function():
	pub = rospy.Publisher('topic_name', String, queue_size = 10)
	rospy.init_node('publisher', anonymous=True)
	rate = rospy.Rate(10)
	while not rospy.is_shutdown():
		letra = obtenerTecla()
		if (letra!='w' and letra!='s' and letra!='a' and letra!='d' and letra!='q'):		
			print 'Has presionado', letra
		if (letra=='w'):
			print 'Adelante!'
		if (letra=='s'):
			print 'Atras!'
		if (letra=='a'):
			print 'Izquierda!'
		if (letra=='d'):
			print 'Derecha!'
		if (letra =='q'):
			break;
		
		pub.publish(letra)
		rate.sleep()
		
if __name__ == '__main__':
	try:
		function()
	except rospy.ROSInterruptException:
		pass
		
