
#  Docker version 1.0.1, build 990021a

FROM ubuntu:14.04
MAINTAINER Fred Prieur <https://github.com/fprieur/docker-casperjs>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install build-essential chrpath wget libssl-dev libxft-dev -y

RUN apt-get install libfreetype6 libfreetype6-dev -y
RUN apt-get install libfontconfig1 libfontconfig1-dev -y

# Install phantomjs

RUN cd /home
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2 -P /home

RUN mv /home/phantomjs-1.9.7-linux-x86_64.tar.bz2 /usr/local/share/
         
RUN cd /usr/local/share/
#RUN ls
#RUN tar xvjf /usr/local/share/xvjf phantomjs-1.9.7-linux-x86_64.tar.bz2
#RUN ln -sf phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs
#RUN ln -sf phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
#RUN ln -sf phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/bin/phantomjs

