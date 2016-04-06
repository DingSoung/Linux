#!/bin/sh
clear 

echo "install Node.js"
yum -y groupinstall "Development Tools"
cd /usr/src
wget http://nodejs.org/dist/v0.10.4/node-v0.10.4.tar.gz
tar vxf node-v0.10.4.tar.gz
cd node-v0.10.4
./configure
make
make install

npm install -g n
n stable

node -v

echo "finished!"
