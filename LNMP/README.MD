
# mount nginx config
```shell
$ umount /etc/nginx/conf.d/
$ mount -B ./conf.d /etc/nginx/conf.d/
$ nginx -s reload
```

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

