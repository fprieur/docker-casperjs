
#  Docker version 1.0.1, build 990021a

FROM ubuntu:14.04
MAINTAINER Fred Prieur <https://github.com/fprieur/docker-casperjs>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install build-essential chrpath wget libssl-dev libxft-dev unzip python git -y

RUN apt-get install libfreetype6 libfreetype6-dev -y
RUN apt-get install libfontconfig1 libfontconfig1-dev -y

# Install phantomjs

RUN cd /home
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2 -P /home


RUN tar xvjf /home/phantomjs-1.9.7-linux-x86_64.tar.bz2
RUN mv phantomjs-1.9.7-linux-x86_64 /usr/local/share/
         
RUN ln -sf /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs
RUN ln -sf /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
RUN ln -sf /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/bin/phantomjs

# Install casperjs

RUN git clone git://github.com/n1k0/casperjs.git
RUN cd casperjs
RUN ln -sf `pwd`/bin/casperjs /usr/local/bin/casperjs

#RUN cd /home
#RUN wget https://github.com/n1k0/casperjs/archive/master.zip -P /home

#RUN unzip /home/master.zip -d /home
#RUN mv /home/casperjs-master /home/casperjs

#RUN mv /home/casperjs /usr/local/share/

#RUN ln -sf /usr/local/share/casperjs/bin/casperjs /usr/local/share/casperjs
#RUN ln -sf /usr/local/share/casperjs/bin/casperjs /usr/local/bin/casperjs
#RUN ln -sf /usr/local/share/casperjs/bin/casperjs /usr/bin/casperjs
