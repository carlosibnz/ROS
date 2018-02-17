#!/usr/bin/env python

import rospy  #importar rospy
from std_msgs.msg import String #importar  std_msgs.msg
from geek_gasteiz.msg import MsgGeek

#funcion principal
def principal():
    pub = rospy.Publisher('hola_mundo', MsgGeek, queue_size=10) #crea el publicador en el topic hola_mundo
    rospy.init_node('publicador', anonymous=True) #inicia el nodo publicador
    rate = rospy.Rate(0.5) # 0.5Hz
    i = 0.0
    mensaje = MsgGeek()
    rospy.loginfo("Estoy publicando en el topic hola_mundo")
    while not rospy.is_shutdown(): #mientras ROS siga funcionando
	mensaje.stamp = rospy.Time.now()
	mensaje.num = i
        pub.publish(mensaje)
        rospy.loginfo("%s - %f", mensaje.stamp, mensaje.num) 
        rate.sleep()
	i = i+0.1
    
    rospy.loginfo("Finalizando nodo...")
if __name__ == '__main__':
    try:
        principal()
    except rospy.ROSInterruptException:
	pass
