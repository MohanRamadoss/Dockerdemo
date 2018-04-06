FROM centos:centos6
MAINTAINER Mohan Ramadoss

RUN yum -y update && yum -y install mysql-server mysql && yum clean all

ADD ./start.sh /start.sh

RUN chmod 755 /start.sh

EXPOSE 3306

CMD ["/bin/bash", "/start.sh"]
