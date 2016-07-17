FROM williamyeh/ansible:ubuntu16.04
MAINTAINER M. Arif Wicaksana <arif@belalangtempur.com>

ADD ansible /srv/ansible
WORKDIR /srv/ansible

RUN ansible-playbook mezzanine-container.yml -c local

VOLUME /srv/project/static

WORKDIR /srv/project

EXPOSE 8080
CMD ["gunicorn_django", "-c", "gunicorn.conf.py"]