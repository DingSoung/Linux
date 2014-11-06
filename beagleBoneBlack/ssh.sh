#!/bin/sh
echo "update and insatll requirement"
opkg update
opkg install ssh
opkg install openssh-keygen
echo "press enter 3 times"
ssh-keygen
echo "copy the following key string to server"
cat ~/.ssh/id_rsa.pub 
