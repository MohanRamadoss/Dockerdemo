FROM centos:latest

ENV LAST_UPDATE 20180405

MAINTAINER Mohan <rmohan@rmohan.com>

# Import the Centos-6 RPM GPG key to prevent warnings and Add EPEL Repository
#
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

RUN yum -y install git  less  vim curl net-tools 

RUN groupadd redis && useradd -g redis -s /usr/sbin/nologin redis

RUN  yum install -y redis


RUN sed -i 's/bind 127.0.0.1/bind 0.0.0.0/' /etc/redis.conf

#RUN sed -i 's/daemonize no/daemonize yes/' /etc/redis.conf

#protected-mode yes

VOLUME ["/var/lib/redis"]

RUN chown -R redis:redis /var/lib/redis && chmod -R 755 /var/lib/redis

EXPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server", "/etc/redis.conf"]
