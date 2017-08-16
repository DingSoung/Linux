
# mount nginx config
```shell
umount /etc/nginx/conf.d/
mount -B ./conf.d /etc/nginx/conf.d/
nginx -s reload
```

# cset mySQL passwd
```shell
mysql_secure_installation
```
