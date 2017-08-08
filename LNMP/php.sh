#!/bin/bash
clear

#install PHP
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm  
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum install php71w php71w-cli php71w-fpm  
yum install php71w-mbstring php71w-common  php71w-gd php71w-mcrypt  php71w-mysql php71w-xml  php71w-soap php71w-xmlrpc  
php -v

# start and set auto start PHP
systemctl start php-fpm  
systemctl enable php-fpm

