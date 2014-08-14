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

###系统环境
默认系统Anstrom还是很完整的，但是与Debian有区别。更新系统主要有opkg，更多信息http://wiki.openwrt.org/doc/techref/opkg，

	opkg update
	opkg install git, opkg install python python-modules python-pyserial python-numpy python-setuptools python-misc python-pip git
	git config --global
	git clone https://github.com/DingSoung/AM335x.git
