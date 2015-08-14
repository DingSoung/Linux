#!/bin/sh
clear 

echo "安装shadowsocks环境..."
yum install python-setuptools && easy_install pip
pip install shadowsocks

echo "代理端口1324，密码aaaaaa"
ssserver -p 1324 -d stop
ssserver -p 1324 -k aaaaaa -d start

echo "完成"
