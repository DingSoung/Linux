#!/bin/sh
echo "config git and clone resop"
opkg update
opkg install git
git config --global http.sslverify false
git clone https://github.com/DingSoung/Linux
