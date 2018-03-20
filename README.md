# Dockerdemo how to use docker file for various application 

   
################################################################

  DEMO-1

################################################################
 
 Launch  Docker instance with nginx    expose 80:80 
 
 unzip the folder     cd centos7-nginx/
 
  Deploy Nginx on docker 
 
 
 Lets build the docker image 
 
 docker build -t mohan:centos7-nginx .
 
 Let run the docker nginx on port 80 
 
 docker run -dt -p 80:80 --name="nginx" mohan:centos7-nginx
 

 
[root@clusterserver2 centos7-nginx]# iptables -L -n -v | grep 80
    
	0     0 ACCEPT     tcp  --  !docker0 docker0  0.0.0.0/0            172.17.0.2           tcp dpt:80

	
[root@clusterserver2 centos7-nginx]# curl  192.168.1.21
<html>
<head>
<title>Hello Docker</title>
</head>
<body>
<h1>Hello Docker!</h1>
</body>
</html>

################################################################

  DEMO-2 

################################################################
  
Launch  Docker instance with ssh access      expose 2222:22 

 cd /root/dockerdemo/ssh-centos7 
  
 Lets  build the docker for ssh Server 
  
  
ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/root/.ssh/id_rsa):
Created directory '/root/.ssh'.
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /root/.ssh/id_rsa.
Your public key has been saved in /root/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:AK107E6CwFONUXwb05dVdPywGtq0VixvtWaXeuDa7rU root@clusterserver2.rmohan.com
The key's randomart image is:
+---[RSA 2048]----+
|. .oB+  .   o.o+.|
|.o ..+++ . o  . o|
| ..o +o + .  . o.|
|  . o oo    + + o|
|     +  S  + B .o|
|      .   . =.o=.|
|           ...=..|
|            .o...|
|           .++.E |
+----[SHA256]-----+


cp /root/.ssh/id_rsa.pub  /root/dockerdemo/ssh-centos7/authorized_keys


 docker build -t mohanssh:sshserver .
 
 Let run the docker ssh  on port redirect 2222:22 

 docker run -dt -p 2222:22   --name="sshserver" mohanssh:sshserver
  
  iptables -L -n -v
  
  Chain DOCKER (1 references)
 pkts bytes target     prot opt in     out     source               destination
    1    52 ACCEPT     tcp  --  !docker0 docker0  0.0.0.0/0            172.17.0.2           tcp dpt:80
    0     0 ACCEPT     tcp  --  !docker0 docker0  0.0.0.0/0            172.17.0.3           tcp dpt:22

	
 
[root@clusterserver2 ssh-centos7]# docker ps -a
CONTAINER ID        IMAGE                 COMMAND                   CREATED             STATUS              PORTS                  NAMES
82e9a8574eaa        mohanssh:sshserver    "/bin/sh -c '\"/usr/s…"   29 seconds ago      Up 28 seconds       0.0.0.0:2222->22/tcp   sshserver

[root@clusterserver2 ~]# ssh -p 2222 admin@192.168.1.21
Last login: Wed Mar 21 01:07:51 2018 from 192.168.1.21

[admin@14d759c673a9 ~]$sudo su - 

server will login with out password 


################################################################

DEMO-3

################################################################

  
Launch  Docker instance with Apache php  expose 80:80   Mount Filesystem to a container  

cd  /root/dockerdemo/centos7-apache24-php

mkdir  /app/html/  
 
docker build -t mohan:centos7-apache24-php .

echo "Example docker Apache server" > /app/html/index.html

creates the mount outside the containes unified file system and subsequnelty exposing it to underlying hostsystem.

docker run -p 80:80 -p 443:443 -d -v /app/html/:/var/www/html --name apache24-php mohan:centos7-apache24-php

[root@clusterserver2 centos7-apache24-php]# docker ps -a | head -2
CONTAINER ID        IMAGE                        COMMAND                   CREATED             STATUS                      PORTS                                      NAMES
f56b513bbc73        mohan:centos7-apache24-php   "/bin/sh -c '/usr/sb…"    10 seconds ago      Up 8 seconds                0.0.0.0:80->80/tcp, 0.0.0.0:443->443/tcp   apache24-php

[root@clusterserver2 centos7-apache24-php]# docker exec -it apache24-php /bin/bash

root@f56b513bbc73 html]# echo '<?php phpinfo(); ?>' > /var/www/html/index.php

[root@clusterserver2 centos7-apache24-php]# curl http://192.168.1.21/index.php

[root@clusterserver2 centos7-apache24-php]# curl http://192.168.1.21


##############################################################

DEMO-4

################################################################
  
Launch Docker instance   tomcat 9v1  expose  8080 8009 Mount Filesystem.  Make a live deployment to the application without making any changes on the docker

cd /root/dockerdemo

tar -zxvf apache-tomcat-9.0.6.tar.gz

create a user on the host system 

useradd tomcat -g tomcat

mkdir -p /opt/tomcat/webapps /opt/tomcat/logs

chmod -R 777 /opt/tomcat/

cp -pR /root/dockerdemo/apache-tomcat-9.0.6/webapps/* /opt/tomcat/webapps/

chown -R tomcat:tomcat /opt/tomcat/

cp sample.war /opt/tomcat/webapps/

 
Build tomcat  

docker build -t mohan:centos-tomcat9v1 .
 
creates the mount outside the containes unified file system and subsequnelty exposing it to underlying hostsystem.
 
docker run -v /opt/tomcat/webapps:/opt/tomcat/webapps -v /opt/tomcat/logs:/opt/tomcat/logs -p 8080:8080 -i -t --name tomcat9 mohan:centos-tomcat9v1
 
docker ps -a

docker start tomcat9
 
[root@clusterserver2 dockerdemo]# docker ps -a | head -2
CONTAINER ID        IMAGE                        COMMAND                   CREATED             STATUS                      PORTS                                      NAMES
0367c80ae3e5        mohan:centos-tomcat9v1       "/bin/sh -c 'exec ${…"    3 minutes ago       Up 3 minutes                8009/tcp, 0.0.0.0:8080->8080/tcp           tomcat9
[root@clusterserver2 dockerdemo]#

 
Make a live deployment without getting in to the system 
 
cp /root/dockerdemo/sample.war /opt/tomcat/webapps/


20-Mar-2018 17:37:10.270 INFO [ContainerBackgroundProcessor[StandardEngine[Catalina]]] org.apache.catalina.startup.HostConfig.deployWAR Deploying web application archive [/opt/tomcat/webapps/sample.war]
20-Mar-2018 17:37:10.357 INFO [ContainerBackgroundProcessor[StandardEngine[Catalina]]] org.apache.catalina.startup.HostConfig.deployWAR Deployment of web application archive [/opt/tomcat/webapps/sample.war] has finished in [87] ms

[root@clusterserver2 logs]# tail -300f /opt/tomcat/logs/catalina.2018-03-20.log 
 
 to the get the webpage 
 
 curl  http://192.168.1.21:8080/sample/

 
################################################################

 DEMO-5

################################################################  

Launch Reverse proxy for Apache tomcat  with MYSQL DB   expose 80,443,  8080,8009, 3306 

 Build apache with reverse proxy 

 cd /root/dockerdemo/httpd24-php7-reverseproxy/conf
 
 edit last line to machine ip address 
 
 create ssh key and update to authorized_keys
 
 cd /root/dockerdemo/httpd24-php7-reverseproxy
 
 docker build -t mohanapache:reverse .
 
 docker run -dt -p 80:80 -p 443:443 --name="reverse-proxy" mohanapache:reverse
  
  docker ps -a  
  
  curl http://192.168.1.21/  ( we should get the tomcat page) 
  
  
  
  cd  /root/dockerdemo/centos7-mariadb

  docker build -t mohanmysql:mysql .
  
  docker run -dt -p 3306:3306   --name="mysql" mohanmysql:mysql
  
  docker ps -a  
  
  docker exec -it mysql /bin/bash
  
[root@3e3e648c962d /]# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 1
Server version: 5.5.56-MariaDB MariaDB Server

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]>


################################################################

