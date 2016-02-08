# Pull ubuntu base image.
FROM ubuntu:vivid

# Maintainer
# ----------
MAINTAINER David Winters <dwinters@c2b2.co.uk>

ENV PAYARA_PKG https://s3-eu-west-1.amazonaws.com/payara.co/Payara+Downloads/Payara+4.1.1.161/payara-micro-4.1.1.161.jar
ENV PKG_FILE_NAME payara-micro-4.1.1.161.jar

# Install packages on ubuntu base image

RUN \
 apt-get update && \ 
 apt-get install -y wget && \ 
 apt-get install -y software-properties-common python-software-properties && \
 apt-get install -y openjdk-8-jdk

# add payara user, download payara micro build. Download sample war app and package on image.

RUN useradd -b /opt -m -s /bin/bash payara && echo payara:payara | chpasswd
RUN cd /opt && wget $PAYARA_PKG -O $PKG_FILE_NAME
RUN mkdir -p /opt/payara-micro-wars
RUN chown -R payara:payara /opt

# Set up payara user and the home directory for the user
USER payara
WORKDIR /opt
ENTRYPOINT ["java", "-jar", "payara-micro.jar", "--deploymentDir", "/opt/payara-micro-wars"]
