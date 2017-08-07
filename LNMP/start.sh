#!/bin/bash
clear

/etc/init.d/mysqld start

# mount nginx config and html
mount -B ./conf.d /etc/nginx/conf.d/
mount -B ~/html /usr/share/nginx/html

# restart nginx
fuser -k 80/tcp
nginx
nginx -s reload

