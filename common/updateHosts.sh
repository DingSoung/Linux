#! /bin/sh
git clone git@github.com:DingSoung/hosts.git ~/hosts
rm /etc/hosts
while read Line
do
	echo $Line >> /etc/hosts
	echo $Line
done < ~/hosts/hosts

