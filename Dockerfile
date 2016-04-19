FROM innoq/docker-alpine-java8

MAINTAINER Timo Loist <timo.loist@innoq.com>

RUN apk add --no-cache bash

RUN apk add --no-cache --virtual=build-dependencies curl && \
    curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > /usr/bin/sbt && \
    sed -i 's/--quiet/-q/g' /usr/bin/sbt && \
    chmod 0755 /usr/bin/sbt && \
    apk del build-dependencies
