#!/bin/bash
clear

# download, install and verfy mySQL repo
yum install https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm -y
yum repolist enabled | grep "mysql.*-community.*"

# install mySQL and check version
yum install mysql-community-server -y
mysql --version

# start mySQL, set auto start, check status
systemctl start mysqld  
systemctl enable mysqld
service mysqld status

