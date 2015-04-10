FROM jenkins:latest
MAINTAINER Martin Chan <osiutino@gmail.com>
ENV REFRESHED_AT 2015-04-11

USER root

# Update 
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install sudo -y
RUN apt-get install git-core -y
RUN apt-get install mysqlclient -y
RUN apt-get install nodejs -y

# Setup User
RUN adduser jenkins sudo
RUN echo 'jenkins ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER jenkins