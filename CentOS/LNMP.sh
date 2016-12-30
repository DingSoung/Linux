#!/bin/bash
clear

echo "安装Nginx"
sudo yum install epel-release
yum install nginx


echo "安装MySQL"
yum install mysql mysql-server
/etc/init.d/mysqld start


echo "安装php,重新启动Apache以使php生效"
yum install php
/etc/init.d/httpd restart

echo "安装MySQL数据库与其它模块（如GD图形库、mbstring库等),再次重启Apache"
yum install php-mysql php-gd php-imap php-ldap php-odbc php-pear php-xml php-xmlrpc
/etc/init.d/httpd restart

echo "自启动"
chkconfig --levels 2345 mysqld on

rm /var/www/html/info.php
echo "<?php phpinfo(); ?>" > /var/www/html/info.php
echo "浏览器访问ip/info.php"

echo "
安装完成
MySQL的my.cnf配置文件：/etc/my.cnf
MySQL数据库文件位置：/usr/lib/mysql
"
