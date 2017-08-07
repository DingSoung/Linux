#!/bin/bash
clear

# start mySQL and check status
service mysqld start
service mysqld status

# mount nginx config and html
mount -B ./conf.d /etc/nginx/conf.d/
mount -B ~/html /usr/share/nginx/html

# add permison for nginx
chmod -R o+r ~/

# set nginx auto start
chkconfig nginx on

# restart nginx
fuser -k 80/tcp
nginx
nginx -s reload

