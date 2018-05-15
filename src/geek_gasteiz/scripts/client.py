#!/usr/bin/env python

import sys
import rospy
from geek_gasteiz.srv import *

def main_client(x, y):

    # Esperamos a que el servicio este activo
    rospy.wait_for_service('mul2num')

    try:
	
	# Definimos el servicio y su tipo de mensaje
        mul2num = rospy.ServiceProxy('mul2num', SrvGeek)
        
	# Recibimos respuesta del servicio con los dos numeros enviados
	resp1 = mul2num(x, y)
        return resp1.mul
	
	# Gestion de errores
    except rospy.ServiceException, e:
        print "Llamada al servicio fallida: %s"%e

# Funcion que muestra el uso del script
def uso():
    return "USO: rosrun geek_gasteiz client.py [num1 num2]"

if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = int(sys.argv[1])
        y = int(sys.argv[2])
    else:
        print uso()
        sys.exit(1)
    print "Peticion: %s*%s"%(x, y)
    print "Respuesta: %s * %s = %s"%(x, y, main_client(x, y))
