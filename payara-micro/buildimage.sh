#!/bin/bash
IMAGE_NAME=payara:4.1.1.161.micro.openjdk8

docker build -t $IMAGE_NAME .

if [ $? -ne 0 ]
then
    echo "Build failed!"
else
    echo "The payara-micro docker image has been built. To start a new container, execute: docker run -i -t payara:latest.micro.oraclejdk8"
fi

