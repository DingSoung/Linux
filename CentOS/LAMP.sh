#!/bin/bash
clear

echo "安装Apache2"
yum install httpd
/etc/init.d/httpd start


echo "安装MySQL"
yum install mysql mysql-server
/etc/init.d/mysqld start


echo "安装php5,重新启动Apache以使php生效"
yum install php
/etc/init.d/httpd restart

echo "安装MySQL数据库与其它模块（如GD图形库、mbstring库等),再次重启Apache"
yum install php-mysql php-gd php-imap php-ldap php-odbc php-pear php-xml php-xmlrpc
/etc/init.d/httpd restart

echo "LAMP自启动"
chkconfig --levels 2345 httpd on
chkconfig --levels 2345 mysqld on


echo "
LAMP安装完成
Apache主配置文件：/etc/httpd/conf/httpd.conf
Apache主配置目录，可以将不同类型的配置分门别类放入这个目录中：/etc/httpd/conf.d/
Apache网站根目录：/var/www/html/
Apache日志文件目录：/var/log/httpd
MySQL的my.cnf配置文件：/etc/my.cnf
MySQL数据库文件位置：/usr/lib/mysql
"
