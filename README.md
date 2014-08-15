#AM335x Note
这是关于AM335x的Note

##BeagleBone-black
###上手
关于USB调试串口什么的，其实是内部调用硬件，结合软件虚拟出来的可移动存储、串口等设备，PC安装好驱动程序，Msater串口可以直接接在BBB硬件上，本地串口客户端直接连接在虚拟的串口是调试。所以如果要真正的开发，不依赖他们的系统，还是得上串口Jtag等等，只能说人家已经开发的很好了，如果不嫌效率低，浪费资源，还是可以拿来学习和使用的
###网络
BBB的USB还将网卡通过USB链接起来，所以PC可以通过USB,将网络共享给BBB,需要本地PC分配ip,给BBB配置DNS
	
	/*config router ip 192.168.7.1 for BBB*/
	route add default gw 192.168.7.1  
	/etc/resolv.conf -> nameserver 8.8.8.8

###开发环境
默认系统Angstrom还是很完整的，但是与Debian有区别。更新系统主要有opkg，更多信息[Openwrt][1],参考[OctoPrint][2]

	opkg update
	opkg upgrade
	opkg install git
	git config --global http.sslverify false
	git clone https://github.com/DingSoung/AM335x.git
	git push
EMMC空间有限,好在基本的环境还算完善，配置内核编译环境,下载内核源文件，直接连接编译就可以了，参考[Elen][3] 和 [elinux][4]
	
	opkg install kernel-headers kernel-dev
	cd /usr/src/kernel
	make config ;use default chooises
	or make menuconfig
	make scripts

[1]: http://wiki.openwrt.org/doc/techref/opkg
[2]: https://github.com/foosel/OctoPrint/wiki/Setup-on-BeagleBone-Black-running-%C3%85ngstr%C3%B6m
[3]: http://elene.dahners.com/blog/2012/10/22/compiling-a-kernel-module-for-beaglebone/
[4]: http://elinux.org/EBC_Exercise_08_Installing_Development_Tools#Download_and_Compile_the_Kernel
