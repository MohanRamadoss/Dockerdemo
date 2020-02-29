FROM centos:7
LABEL maintainer="Ramadoss Mohan"
RUN yum install -y httpd web-assets-httpd && \
    yum clean all
RUN echo "my httpd container" > /var/www/html/index.html
# ADD/COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["httpd"]
CMD ["-DFOREGROUND"]

