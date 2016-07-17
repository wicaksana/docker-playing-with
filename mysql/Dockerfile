FROM ubuntu:latest
MAINTAINER M. Arif Wicaksana <arif@belalangtempur.com>
RUN apt-get update && apt-get install -y mysql-server

ENV username mysql
ENV password mysql_pswd
ENV database db
ADD setup.sh /
RUN chmod 644 /setup.sh
RUN "/usr/bin/sh setup.sh"

EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]