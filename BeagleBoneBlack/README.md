﻿####Qiuck Start
Open the START.html in BBB(Beaglebone-Black) portable drive and folow the step to install drives
or access BBB via ssh

    ssh 192.168.7.2 -l root

####serial ports
BBB has USART serial and simulated portable drive on USB,thanks to the BBB developers, they are very easy to use, if you dont mind the performanct and not need full boot information .ect, it's nice demo. you neet some tool to access the virtual serial port on windows linux£, such xshell minicom,Mac user  command below.
	
	screen /dev/cu.usbserial 9600

####access Internel
Config PC Internel to share the network to BBB, you also can assign exactly ip to BBB, config default ip DNS in  BBB, ifconfig get ipv4 address, ex 192.168.7.1,use command below config BBB,or make a shell ex StartUSBNetwork.sh[derekmolloy][1]

	route add default gw 192.168.7.1
	echo "nameserver 8.8.8.8" >> /etc/resolv.conf
	ping www.google.com

when netwok ok, can access bbb via ssh

	ssh root@192.168.7.2

####Git/Github
Config a git enviroument [Openwrt][2],[OctoPrint][3]

	opkg update	opkg upgrade
	opkg install git
	git config --global user.name "Ding Soung"
	git config --global user.email DingSoung@gmail.com
	git config --global http.sslVerify true
	git config --global http.sslCAinfo /etc/ssl/certs/ca-certificates.crt
	git config --global http.sslCApath /etc/ssl/certs/ca-certificates.crt
	git clone https://github.com/DingSoung/AM335x.git
	git push

####part TF card and format

	fdisk -l
	fdisk mmcbk1
	m
	#...
	mount /dev/mmcblk1p1 ~/
	
####boot form eMMC when tf_card pluged
because bootloader recognise the eMMC as MMC1 and tf_card as MMC0 when tf card pluged, so need tell bootloader boot form "MMC1"

	fdisk /dev/mmcblk1
	mkfs -t vfat -F 16 -n boot /dev/mmcblk1p1
	mkfs -V -t ext4 -j -L data /dev/mmcblk1p2

make a file "uEnv.txt" in first partion like this

	mmcdev=1
	bootpart=1:2
	mmcroot=/dev/mmcblk1p2 ro
	optargs=quiet

####the go on
setup system time, config enviroument for programming, etc

[1]: http://derekmolloy.ie/beaglebone/getting-started-usb-network-adapter-on-the-beaglebone
[2]: http://wiki.openwrt.org/doc/techref/opkg
[3]: https://github.com/foosel/OctoPrint/wiki/Setup-on-BeagleBone-Black-running-%C3%85ngstr%C3%B6m
