#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def callback_function(data):
	if (data.data=='w'):
		print "Arriba"

	elif (data.data=='s'):
		print "Abajo"

	elif (data.data=='a'):
		print "Izquierda"

	elif (data.data=='d'):
		print "Derecha"

	else:
		print "Tecla sin funcion"	
    
def publisher(): #Initialize node
    rospy.init_node('move', anonymous=True)

    rospy.Subscriber("keys", String, callback_function)
    rospy.spin()

if __name__ == '__main__':
    publisher()
