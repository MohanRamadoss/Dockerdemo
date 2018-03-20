FROM centos:7.4.1708

RUN yum  install mariadb-server net-tools mariadb-client  -y 

RUN  yum clean all

RUN mysql_install_db

RUN chown mysql:mysql -R /var/lib/mysql  

EXPOSE 3306

ADD docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD mysqld_safe
