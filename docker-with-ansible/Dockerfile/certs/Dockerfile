FROM ubuntu:16.04
MAINTAINER M. Arif Wicaksana <arif@belalangtempur.com>

# Create self-signed cert for 192.168.59.103
RUN apt-get update
RUN apt-get install -y openssl

RUN mkdir /certs

WORKDIR /certs

RUN openssl req -new -x509 -nodes -out nginx.crt \
   -keyout nginx.key -subj '/CN=localhost' -days 3650

VOLUME /certs