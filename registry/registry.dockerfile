FROM registry:2
MAINTAINER Phoenix4Go <phoenix4go@gmail.com>

COPY ./registry/daemon.json /etc/docker/
COPY ./registry/docker /etc/docker/


