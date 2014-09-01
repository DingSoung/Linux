##prepare kernel src
eMMC space is very limited, and full linux kernel file is not very needed, refer [Elen][1],[elinux][2]
	
	opkg install kernel-headers kernel-dev
	cd /usr/src/kernel
	make config ;use default chooises
	or make menuconfig
	make scripts

##combie kernel mode
write your kernel mode c and Makefile, combien with kernel src file

[1]: http://elene.dahners.com/blog/2012/10/22/compiling-a-kernel-module-for-beaglebone/
[2]: http://elinux.org/EBC_Exercise_08_Installing_Development_Tools#Download_and_Compile_the_Kernel
