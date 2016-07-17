FROM ubuntu:16.04
MAINTAINER M. Arif Wicaksana <arif@belalangtempur.com>

# update the default application repository
RUN apt-get update

# install memcached
RUN apt-get install -y memcached

# port to expose
EXPOSE 11211

# default memcached run command arguments
CMD ["-m", "128"]

# set the user to run Memcached daemon
USER daemon

# set the entrypoint to memcached binary
ENTRYPOINT memcached