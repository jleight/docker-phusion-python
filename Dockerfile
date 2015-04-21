FROM phusion/baseimage:latest
MAINTAINER Jonathon Leight <jonathon.leight@jleight.com>

ENV LANG C.UTF-8
ENV PYTHON_VERSION 2.7

RUN set -x \
  && apt-get update \
  && apt-get install -y python${PYTHON_VERSION} \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/*
