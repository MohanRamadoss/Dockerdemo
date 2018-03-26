FROM centos:7.4.1708

MAINTAINER Mohan Ramadoss rmohan@rmohan.com

COPY nginx.repo /etc/yum.repos.d

RUN yum install nginx -y

COPY ./www /usr/share/nginx/html

HEALTHCHECK --interval=5s --timeout=10s --retries=12 CMD curl http://127.0.0.1/index.html || exit 8

WORKDIR /mnt

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
