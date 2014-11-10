
# Docker version 1.0.1, build 990021a

FROM ubuntu:14.04
MAINTAINER Fred Prieur <https://github.com/fprieur/docker-casperjs>

RUN apt-get update && apt-get upgrade -y

# Install phantomjs

RUN apt-get install build-essential chrpath git-core libssl-dev libfontconfig1-dev libxft-dev -y
RUN git --version
RUN git clone git://github.com/ariya/phantomjs.git
RUN cd phantomjs
#RUN git checkout 1.9
RUN ./build.sh
