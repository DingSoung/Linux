# LNMP

LNMP = Linux + Nginx + mySQL + PHP

another LNAMP, A = Apache, httpd used in embedded system

# nginx

default config `/etc/nginx/nginx.conf`

add server to `/etc/nginx/conf.d/`

### mount nginx config

```shell
$ umount /etc/nginx/conf.d/
$ mount -B ./conf.d /etc/nginx/conf.d/
$ nginx -s reload
```

# php

default config `/etc/php-fpm.d/www.conf `

#mysql

### show random password generated after install
```shell
$ grep 'temporary password' /var/log/mysqld.log
```

### login mySQL with password
```shell
$ mysql -u root -p
```

### change passowrd

```shell
mysql>  ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_passwd'; // length >= 8
```

## Database

### show databases

```sql
mysql> show databases;
```

### creat databases

```shell
$ mysqladmin -u root -p create database_name
```

### import sql file

```shell
$ mysql -u root -p database_name < file_name.sql
```

or

```sql
mysql> source file_name.sql;
```

### select database

```sql
mysql> use database_name;
```

### delete database

```sql
$ mysqladmin -u root -p drop RUNOOB
```

### backup database

```shell
$ mysqldump -u root -p table_name > dump.sql
```

## Table

### show tables

```sql
mysql> show tables;
myaql> desc table_name;
```

### creat table

```sql
mysql> CREATE TABLE `cnarea_2016` (
  `id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(7) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '层级',
  `area_code` bigint(12) unsigned NOT NULL DEFAULT '0' COMMENT '行政代码',
  `zip_code` mediumint(6) unsigned zerofill NOT NULL DEFAULT '000000' COMMENT '邮政编码',
  `city_code` char(6) NOT NULL DEFAULT '' COMMENT '区号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short_name` varchar(50) NOT NULL DEFAULT '' COMMENT '简称',
  `merger_name` varchar(50) NOT NULL DEFAULT '' COMMENT '组合名',
  `pinyin` varchar(30) NOT NULL DEFAULT '' COMMENT '拼音',
  `lng` decimal(10,6) NOT NULL DEFAULT '0.000000' COMMENT '经度',
  `lat` decimal(10,6) NOT NULL DEFAULT '0.000000' COMMENT '维度',
  PRIMARY KEY (`id`),
  KEY `idx_lev` (`level`,`parent_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='中国行政地区表';
```

### import table

### delete table

```sql
myaql> drop table table_name;
```

### quire

```sql
mysql> select * from tableName where created like '%admin%' order by time desc limit 100;
```

## 7z

```shell
$ yum install p7zip -y
$ 7za e fileName.7z // Uncompress
$ 7za a backup.7z backup/  //Compress
```

