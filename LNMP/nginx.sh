#!/bin/bash
clear

yum install epel-release -y

# install Nginx
yum install nginx -y

# set nginx auto start
chkconfig nginx on
systemctl enable nginx  

# restart nginx
#systemctl restart nginx
fuser -k 80/tcp
nginx
nginx -s reload
