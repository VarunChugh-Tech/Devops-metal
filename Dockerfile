FROM centos:latest
MAINTAINER chugh.varunhm@gmail.com
RUN yum install-y httpd \
zip \
unzip
ADD https://www.free-css.com/free-css-templates/page247/kindle/var/www/html
WORKDIR/var/www/html
RUN unzipkindle.zip
RUN cp -rvf markups-kindle/*
RUN rm -rf_MACOSX markups-kindle kindle.zip 
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
