FROM node:6.2.0-wheezy

MAINTAINER Greg Keys <gregkeys@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV DOCKER_MACHINE 0.7.0
ENV DOCKER_COMPOSE 1.7.1

# Install system packages
RUN curl -L https://github.com/docker/machine/releases/download/v${DOCKER_MACHINE}/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine \
    && chmod +x /usr/local/bin/docker-machine \
    && curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose