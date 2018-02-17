#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from geek_gasteiz.msg import MsgGeek

def callback_function(data):
    #do something with the sent data from the publisher!
    rospy.loginfo("He recibido: %s y %f", data.stamp, data.num)

def publisher(): #Initialize node
    rospy.init_node('subscriptor', anonymous=True)

    rospy.Subscriber("hola_mundo", MsgGeek, callback_function)
    rospy.spin()

if __name__ == '__main__':
    publisher()