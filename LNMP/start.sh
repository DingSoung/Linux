#!/bin/bash
clear

/etc/init.d/mysqld start

mount -B ./conf.d /etc/nginx/conf.d/

fuser -k 80/tcp
nginx
nginx -s reload

