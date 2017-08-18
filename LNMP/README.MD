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

### change passowrd (length >= 8)
```shell
mysql>  ALTER USER 'root'@'localhost' IDENTIFIED BY 'newpasswd';
```

### backup database
```shell
$ mysqldump -u root -p --all-databases > dump.sql
```

### quire

```sql
mysql> select * from tableName where created like 'admin' limit 100;
```

