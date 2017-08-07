#!/bin/bash
clear

yum install epel-release

# install Nginx
yum install nginx

# download, install and verfy mySQL repo
wget http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm
yum localinstall mysql57-community-release-el7-7.noarch.rpm 
yum repolist enabled | grep "mysql.*-community.*"
rm -rf mysql57-community-release-el7-7.noarch.rpm

# install mySQL and check version
yum install mysql-community-server
mysql --version

#install PHP
yum install php
yum install php-mysql php-gd php-imap php-ldap php-odbc php-pear php-xml php-xmlrpc

sh ./start.sh
