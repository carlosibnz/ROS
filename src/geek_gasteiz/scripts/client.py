#!/usr/bin/env python

import sys
import rospy
from geek_gasteiz.srv import *

def main_client(x, y):
    rospy.wait_for_service('mul2num')
    try:
        mul2num = rospy.ServiceProxy('mul2num', SrvGeek)
        resp1 = mul2num(x, y)
        return resp1.mul
    except rospy.ServiceException, e:
        print "Llamada al servicio fallida: %s"%e

def uso():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = int(sys.argv[1])
        y = int(sys.argv[2])
    else:
        print uso()
        sys.exit(1)
    print "Peticion: %s*%s"%(x, y)
    print "%s * %s = %s"%(x, y, main_client(x, y))
