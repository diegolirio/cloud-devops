FROM registry:2
MAINTAINER Phoenix4Go <phoenix4go@gmail.com>

WORKDIR /etc/sysconfig/

COPY ./registry/daemon.json /etc/docker/
#RUN mkdir /etc/sysconfig/
COPY ./registry/docker /etc/sysconfig/


