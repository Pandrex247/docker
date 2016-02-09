The Dockerfile contains docker commands used to build a new payara micro image running on  OpenJDK 8 on ubuntu. It will build a docker image built on the Payara Micro 4.1.1.161.

Usage
=====

To build a new payara micro docker image execute: ./buildimage.sh

Once you have the image it is easy build on it to create a docker image containing your war files. Simple add the war file to the directory /opt/payara-micro-wars and they will be autodeployed.
