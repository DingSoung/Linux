#! /bin/sh
git clone https://github.com/zxdrive/imouto.host.git hosts
cd hosts
while read Line
do
	echo $Line >> /etc/hosts
	echo $Line
done < hosts

