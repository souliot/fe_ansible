FROM alpine:latest
MAINTAINER BossLin linleizhou19910924@163.com

#update apk for install
RUN apk update

#install ansible and openssh
RUN apk add ansible openssh

#init ansible hosts file
RUN mkdir -p /etc/ansible

#init rsa ssh key pair
RUN ssh-keygen -t rsa -P "" -f ~/.ssh/id_rsa

#delete cache files 
RUN rm -rf /var/cache/apk/*