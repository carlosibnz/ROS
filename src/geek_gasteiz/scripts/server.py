#!/usr/bin/env python

from geek_gasteiz.srv import *
import rospy

# Funcion a llamar cuando llegue peticion del cliente
def multiplica_2_num(req):
    print "Devolviendo [%s * %s = %s]"%(req.x, req.y, (req.x * req.y))
    return SrvGeekResponse(req.x * req.y)

def main_server():

    #Iniciamos nodo con nombre server
    rospy.init_node('server')

    # Creamos el servicio llamado 'mul2num', con tipo de servicio 'SrvGeek', 
    # llamaremos a la funcion 'multiplica_2_num' cuando llegue peticion
    s = rospy.Service('mul2num', SrvGeek, multiplica_2_num) 

    print "Esperando peticion..."
    rospy.spin()
    print "\nCerrando servidor"
if __name__ == "__main__":
    main_server()
