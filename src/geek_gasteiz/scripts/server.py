#!/usr/bin/env python

from geek_gasteiz.srv import *
import rospy

def multiplica_2_num(req):
    print "Devolviendo [%s * %s = %s]"%(req.x, req.y, (req.x * req.y))
    return SrvGeekResponse(req.x * req.y)

def main_server():
    rospy.init_node('server')
    s = rospy.Service('mul2num', SrvGeek, multiplica_2_num)
    print "Esperando peticion..."
    rospy.spin()
    print "\nCerrando servidor"
if __name__ == "__main__":
    main_server()
