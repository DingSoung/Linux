###Qiuck Start
Open the START.html in BBB(Beaglebone-Black) portable drive and folow the step to install drives

###serial ports
关于USB调试串口什么的，其实是内部调用硬件，结合软件虚拟出来的可移动存储、串口等设备，PC安装好驱动程序，Msater串口可以直接接在BBB硬件上，本地串口客户端直接连接在虚拟的串口是调试。所以如果要真正的开发，不依赖他们的系统，还是得上串口Jtag等等，只能说人家已经开发的很好了，如果不嫌效率低，浪费资源，还是可以拿来学习和使用的
	
	screen /dev/cu.usbserial 9600

###access Internel
Config PC Internel to share the network to BBB, you also can assign exactly ip to BBB, config default ip DNS in  BBB, ifconfig get ipv4 address, ex 192.168.7.1,use command below config BBB
	
	route add default gw 192.168.7.1  
	/etc/resolv.conf -> nameserver 8.8.8.8
	ping www.google.com

###Config Git
默认系统Angstrom还是很完整的，但是与Debian有区别。更新系统主要有opkg，更多信息[Openwrt][1],参考[OctoPrint][2]

	opkg update
	opkg upgrade
	opkg install git
	git config --global http.sslverify false
	git clone https://github.com/DingSoung/AM335x.git
	git push

[1]: http://wiki.openwrt.org/doc/techref/opkg
[2]: https://github.com/foosel/OctoPrint/wiki/Setup-on-BeagleBone-Black-running-%C3%85ngstr%C3%B6m
