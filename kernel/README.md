####prepare kernel src
eMMC space is very limited, and full linux kernel file is not very needed, refer [Elen][1],[elinux][2]
	
	opkg install kernel-headers kernel-dev
	cd /usr/src/kernel
	make config ;use default chooises
	or make menuconfig
	make scripts

####official srouce
it highly suggest plus tf card >= 8G, format and mount is,cd the flore

	git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
	make menuconfig
	make
	
it will take a long long time,just wait

####combie kernel mode
write your kernel mode c and Makefile, combien with kernel src file

[1]: http://elene.dahners.com/blog/2012/10/22/compiling-a-kernel-module-for-beaglebone/
[2]: http://elinux.org/EBC_Exercise_08_Installing_Development_Tools#Download_and_Compile_the_Kernel
