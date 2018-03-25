#!/usr/bin/env python

import rospy  #importar rospy
#from std_msgs.msg import String #importar  std_msgs.msg
from geek_gasteiz.msg import MsgGeek #importar mensaje personalizado

#funcion principal
def principal():
    pub = rospy.Publisher('hola_mundo', MsgGeek, queue_size=10) #crea el publicador en el topic hola_mundo y tipo de mensaje MsgGeek
    rospy.init_node('publicador', anonymous=True) #inicia el nodo publicador
    rate = rospy.Rate(0.5) # 0.5 Hz
    i = 0.0 #inicializar variable i
    mensaje = MsgGeek() #declaro la variable mensaje como tipo MsgGeek
    rospy.loginfo("Estoy publicando en el topic hola_mundo") #escribo en log
    while not rospy.is_shutdown(): #mientras ROS siga funcionando
	mensaje.stamp = rospy.Time.now() #segundos actuales
	mensaje.num = i #valor de la variable i
        pub.publish(mensaje) #publica el mensaje en el topic
        rospy.loginfo("%s - %f", mensaje.stamp, mensaje.num) #escribe en log el mensaje 
        rate.sleep()
	i = i+0.1 #incrementa en 0.1 la variable
    
    rospy.loginfo("Finalizando nodo...") #Si se para el nodo, escribe en el log
if __name__ == '__main__':
    try:
        principal()
    except rospy.ROSInterruptException:
	pass
