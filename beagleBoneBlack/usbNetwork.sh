#!/bin/sh
echo "Setting up the default gateway"
route add default gw 192.168.7.1
 
echo "Updating the nameserver entry"
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf
echo "nameserver 4.3.2.1" >> /etc/resolv.conf
echo "nameserver 114.114.114.114" >> /etc/resolv.conf

echo "Check internet access"
ping 8.8.8.8 -c 5
