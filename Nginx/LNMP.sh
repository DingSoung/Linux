#!/bin/bash
clear

yum install epel-release

yum install nginx

yum install mysql mysql-server
/etc/init.d/mysqld start

yum install php
yum install php-mysql php-gd php-imap php-ldap php-odbc php-pear php-xml php-xmlrpc

nginx
nginx -s reload
