#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def callback_function(data):
    rospy.loginfo("He recibido: %s", data.data)
    
def publisher(): #Initialize node
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("topic_name", String, callback_function)
    rospy.spin()

if __name__ == '__main__':
    publisher()
