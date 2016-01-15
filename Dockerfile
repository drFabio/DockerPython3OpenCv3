FROM ubuntu:14.04
MAINTAINER Fabio Oliveira <blackjackdevel@gmail.com>
#Python and openCv dependencies/Requirements
RUN apt-get -y update && \
    apt-get upgrade -y && \
    apt-get install -y --force-yes build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev \
        libavformat-dev libswscale-dev libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev \
        libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev \
        libatlas-base-dev gfortran  python3-tk python3-numpy python3.4-dev

ENV CV_VERSION 3.1.0

#Pip from source
RUN wget https://bootstrap.pypa.io/get-pip.py && \
    sudo python3 get-pip.py

#Installing open cv from source
