FROM kalamangga/debian-base:0.1
MAINTAINER Yudha H Tejaningrat <yht@kalamangga.net>

ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

COPY ojdk/ /root

RUN /root/prepare.sh && \
    /root/install.sh && \
    /root/cleanup.sh

