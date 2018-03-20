FROM centos:7.4.1708
MAINTAINER Mohan <rmohan@rmohan.com>

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7 \
    && rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7 \
    && yum -y install epel-release.noarch

# UTC Timezone & Networking
#
RUN ln -sf /usr/share/zoneinfo/Asia/Singapore /etc/localtime \
    && echo "NETWORKING=yes" > /etc/sysconfig/network

RUN yum update -y

RUN yum -y install openssh-server openssh-clients passwd sudo net-tools initscripts 


RUN mkdir /var/run/sshd

RUN echo 'root:passw0rd' | chpasswd

RUN yum clean all

RUN systemctl enable sshd.service

RUN sed -i 's/#PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN sed -ri 's/^PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

RUN /usr/bin/ssh-keygen -A

RUN useradd --create-home -s /bin/bash admin
RUN echo 'admin:passw0rd' | chpasswd
RUN echo 'admin ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/admin
RUN chmod 440 /etc/sudoers.d/admin

RUN  mkdir -p /home/admin/.ssh
RUN  chmod 700 /home/admin/.ssh
COPY authorized_keys /home/admin/.ssh/authorized_keys
RUN  chmod 600 /home/admin/.ssh/authorized_keys
RUN  chown -R admin:admin /home/admin/.ssh

CMD "/usr/sbin/sshd" "-D"
