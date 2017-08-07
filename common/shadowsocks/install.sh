#!/bin/sh
clear 

yum install python-setuptools && easy_install pip
pip install shadowsocks

sh ./start.sh
