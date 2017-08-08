#!/bin/bash
clear

# mount nginx config
umount /etc/nginx/conf.d/
mount -B ../Nginx/conf.d /etc/nginx/conf.d/

# mount html
umount /usr/share/nginx/html
mount -B ~/html/typecho /usr/share/nginx/html

# add permison for web
chmod -R o+r /usr/share/nginx/html

