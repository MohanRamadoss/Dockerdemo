FROM centos:latest
MAINTAINER Mohan <rmohan@rmohan.com>

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7 \
    && rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7 \
    && yum -y install epel-release.noarch


# UTC Timezone & Networking
#
RUN ln -sf /usr/share/zoneinfo/Asia/Singapore /etc/localtime \
    && echo "NETWORKING=yes" > /etc/sysconfig/network

#Install Devtools
RUN yum install -y gcc gcc-c++ make automake


# System update
RUN yum -y update

# Install Tools

RUN yum -y install   wget   git  less  vim   curl  net-tools



ENV LAST_UPDATE 20180405

COPY files/mongodb-org-3.6.repo  /etc/yum.repos.d/

RUN yum update -y && \
	yum install -y mongodb-org

VOLUME ["/var/mongo"]
RUN sed -i 's/bindIp: 127.0.0.1/#bindIp: 127.0.0.1/' /etc/mongod.conf
EXPOSE 27017
#mongod --port 27017 --dbpath /var/mongo/data --logpath /var/mongo/mongo.log --logappend --bind_ip 0.0.0.0
ENTRYPOINT ["/usr/bin/mongod", "--port", "27017", "--dbpath", "/var/mongo/data", "--logpath", "/var/mongo/mongo.log", "--logappend", "--bind_ip", "0.0.0.0"]
