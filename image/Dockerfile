FROM kalamangga/debian-base
MAINTAINER Yudha H Tejaningrat <yht@kalamangga.net>

ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

COPY . /build

RUN /build/prepare.sh && \
    /build/install.sh && \
    /build/cleanup.sh

