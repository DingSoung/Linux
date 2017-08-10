
# mount nginx config
```shell
umount /etc/nginx/conf.d/
mount -B ./conf.d /etc/nginx/conf.d/
nginx -s reload
```

# mount html
```shell
umount /usr/share/nginx/html
mount -B ~/html /usr/share/nginx/html
```

# add permison for web
```shell
chmod -R o+r /usr/share/nginx/html
```
