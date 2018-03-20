FROM centos:7.4.1708
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
RUN yum -y install \
        git \
        less \
        vim \
        curl \
        net-tools \

# Install httpd
RUN yum install -y epel-release && \
    rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
    yum -y install --enablerepo=remi \
        httpd \
        mod_ssl

RUN yum -y install \
    mysql-devel \
    mysql-libs \
    php \
    php-cli \
    php-imap \
    php-ldap \
    php-mbstring \
    php-mcrypt \
    php-mysql \
    php-pear-MDB2-Driver-mysqli \
    php-pecl-memcached \
    php-tidy \
    php-xml \
    php-gd \
    msmtp \
    && yum -y update bash \
    && rm -rf /var/cache/yum/* \

# Cache cleaning
RUN yum clean all

# User
RUN groupadd --gid 1000 www-data && useradd www-data --uid 1000 --gid 1000

# Httpd setting
COPY ./conf/httpd.conf /etc/httpd/conf/httpd.conf
COPY ./conf/00-mpm.conf /etc/httpd/conf.module.d/00-mpm.conf
COPY ./conf/index.php   /var/www/html/index.php
RUN chmod -R 755 /var/www && chown -R www-data:www-data /var/www

# Listen port
EXPOSE 80 443
EXPOSE 443

# Startup
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
