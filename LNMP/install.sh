#!/bin/bash
clear

yum install epel-release

yum install nginx

yum install mysql mysql-server

yum install php
yum install php-mysql php-gd php-imap php-ldap php-odbc php-pear php-xml php-xmlrpc

chkconfig nginx on
 
chmod -R o+r ~/

sh ./start.sh
