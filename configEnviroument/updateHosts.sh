#! /bin/sh
git clone https://gist.github.com/5f00ad4e7fa8006c8dde.git ~/hosts
cd ~/hosts
while read Line
do
	echo $Line >> /etc/hosts
	echo $Line
done < hosts

