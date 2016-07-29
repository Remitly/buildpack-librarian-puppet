FROM debian:wheezy
MAINTAINER Lee Faris "lee@remitly.com"

# Install puppet
RUN apt-get -y update
RUN apt-get -y install ca-certificates
RUN apt-get -y install ruby ruby-dev
RUN apt-get -y install build-essential
RUN apt-get -y install git
RUN apt-get -y install sudo
RUN apt-get -y install puppet
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN sudo sh -c 'echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config'
RUN gem install librarian-puppet

VOLUME /puppet
