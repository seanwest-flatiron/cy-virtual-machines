#!/usr/bin/python3
#imports
import socket


#Linux Listeners (DMZ Network 192.168.20.0/24)

# define hosts
host0 = '192.168.20.60' 
host1 = '192.168.20.61'
host2 = '192.168.20.62'
host3 = '192.168.20.74' 
host4 = '192.168.20.110'
host5 = '192.168.20.111'

#define ports
port0= 21
port1= 25
port2 = 443
port3 = 1723
port4 = 8080
port5 = 8443

#server sockets for host0
serversocket00 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket01 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket02 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket03 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket04 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket05 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)


serversocket00.bind((host0, port0))
serversocket01.bind((host0, port1))
serversocket02.bind((host0, port2))
serversocket03.bind((host0, port3))
serversocket04.bind((host0, port4))
serversocket05.bind((host0, port5))


serversocket00.listen(100)
serversocket01.listen(100)
serversocket02.listen(100)
serversocket03.listen(100)
serversocket04.listen(100)
serversocket05.listen(100)


#server sockets for host1
serversocket10 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket11 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket12 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket13 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket14 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket15 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket16 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

serversocket10.bind((host1, port0))
serversocket11.bind((host1, port1))
serversocket12.bind((host1, port2))
serversocket13.bind((host1, port3))
serversocket14.bind((host1, port4))
serversocket15.bind((host1, port5))


serversocket10.listen(100)
serversocket11.listen(100)
serversocket12.listen(100)
serversocket13.listen(100)
serversocket14.listen(100)
serversocket15.listen(100)


#server sockets for host2
serversocket20 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket21 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket22 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket23 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket24 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket25 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket26 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

serversocket20.bind((host2, port0))
serversocket21.bind((host2, port1))
serversocket22.bind((host2, port2))
serversocket23.bind((host2, port3))
serversocket24.bind((host2, port4))
serversocket25.bind((host2, port5))


serversocket20.listen(100)
serversocket21.listen(100)
serversocket22.listen(100)
serversocket23.listen(100)
serversocket24.listen(100)
serversocket25.listen(100)


#server sockets for host3
serversocket30 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket31 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket32 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket33 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket34 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket35 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket36 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

serversocket30.bind((host3, port0))
serversocket31.bind((host3, port1))
serversocket32.bind((host3, port2))
serversocket33.bind((host3, port3))
serversocket34.bind((host3, port4))
serversocket35.bind((host3, port5))


serversocket30.listen(100)
serversocket31.listen(100)
serversocket32.listen(100)
serversocket33.listen(100)
serversocket34.listen(100)
serversocket35.listen(100)


#server sockets for host4
serversocket40 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket41 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket42 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket43 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket44 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket45 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)


serversocket40.bind((host4, port0))
serversocket41.bind((host4, port1))
serversocket42.bind((host4, port2))
serversocket43.bind((host4, port3))
serversocket44.bind((host4, port4))
serversocket45.bind((host4, port5))


serversocket40.listen(100)
serversocket41.listen(100)
serversocket42.listen(100)
serversocket43.listen(100)
serversocket44.listen(100)
serversocket45.listen(100)


#server sockets for host5
serversocket50 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket51 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket52 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket53 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket54 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversocket55 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)


serversocket50.bind((host5, port0))
serversocket51.bind((host5, port1))
serversocket52.bind((host5, port2))
serversocket53.bind((host5, port3))
serversocket54.bind((host5, port4))
serversocket55.bind((host5, port5))


serversocket50.listen(100)
serversocket51.listen(100)
serversocket52.listen(100)
serversocket53.listen(100)
serversocket54.listen(100)
serversocket55.listen(100)

# Keep the car running
while True:
    clientsocket,address = serversocket00.accept()
    clientsocket,address = serversocket01.accept()
    clientsocket.close()


