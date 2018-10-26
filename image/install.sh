#!/bin/sh

# Java OpenJDK 8 installation
apt install -y --no-install-recommends openjdk-8-jdk ca-certificates-java unzip
update-alternatives --set java ${JAVA_HOME}/jre/bin/java

# JCE Policy
curl -l -O -H "Cookie: oraclelicense=accept-securebackup-cookie" \
  -k "http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip"
unzip -oj jce_policy-8.zip -d ${JAVA_HOME}/jre/lib/security
rm -f jce_policy-8.zip
