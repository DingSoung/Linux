#!/bin/bash
clear

echo "intall ssl"
yum install openssl
yum install mod_ssl

echo "
edit /etc/httpd/conf.d/ssl.conf, add code below line <VirtualHost _default_:443> like this:
ServerName dingsoung.tk:443
SSLEngine on
SSLCertificateFile /root/dingsoung.tk.crt
SSLCertificateKeyFile /root/dingsoung.tk.key
SSLCertificateChainFile /root/dingsoung_root_bundle.crt

the command service httpd restart
"
