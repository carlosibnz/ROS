#!/usr/bin/env python
import rospy #importar rospy
#from std_msgs.msg import String #importar std_msgs
from geek_gasteiz.msg import MsgGeek #importar mensaje personalizado

def callback_function(data): #funcion a la que se llama cuando recibo un mensaje en el topic al que nos subscribimos
    rospy.loginfo("He recibido: %s y %f", data.stamp, data.num) #escribe en el log el mensaje recibido

def publisher(): #funcion principal del nodo
    rospy.init_node('subscriptor', anonymous=True) #inicializa nodo con nombre subscriptor

    #se subscribe al topic hola_mundo con mensajes tipo MsgGeek llamando a la funcion callback_function cuando se reciba mensaje
    rospy.Subscriber("hola_mundo", MsgGeek, callback_function)
    rospy.spin()

if __name__ == '__main__':
    publisher()
