FROM centos:latest

MAINTAINER Mohan Ramadoss rmohan@rmohan.com

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

RUN groupadd -r mysql && useradd -r -g mysql mysql 

# installs from mysql public repo

RUN wget http://repo.mysql.com/mysql57-community-release-el7-9.noarch.rpm -d && \
    yum localinstall mysql57-community-release-el7-9.noarch.rpm -y && \
    yum install mysql-community-server -y && \
    rm mysql57-community-release-el7-9.noarch.rpm && \
    yum clean all

ENV PATH $PATH:/usr/local/mysql/bin:/usr/local/mysql/scripts

WORKDIR /usr/local/mysql
VOLUME /var/lib/mysql

ADD docker-entrypoint.sh /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["/entrypoint.sh","mysqld", "--datadir=/var/lib/mysql", "--user=mysql"]

