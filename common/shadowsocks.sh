#!/bin/sh
clear 

yum install python-setuptools && easy_install pip
pip install shadowsocks

ssserver -p 1324 -d stop
ssserver -p 1324 -k aaaaaa -d start

