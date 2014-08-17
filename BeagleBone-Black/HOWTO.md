###Qiuck Start
Open the START.html in BBB(Beaglebone-Black) portable drive and folow the step to install drives

###serial ports
BBB has USART serial and simulated portable drive on USB,thanks to the BBB developers, they are very easy to use, if you dont mind the performanct and not need full boot information .ect, it's nice demo. you neet some tool to access the virtual serial port on windows linux£, such xshell minicom,Mac user  command below.
	
	screen /dev/cu.usbserial 9600

###access Internel
Config PC Internel to share the network to BBB, you also can assign exactly ip to BBB, config default ip DNS in  BBB, ifconfig get ipv4 address, ex 192.168.7.1,use command below config BBB,or make a shell ex StartUSBNetwork.sh[derekmolloy][1]

	route add default gw 192.168.7.1
	echo "nameserver 8.8.8.8" >> /etc/resolv.conf
	ping www.google.com

###Config Git
Config a git enviroument [Openwrt][2],[OctoPrint][3]

	opkg update	opkg upgrade
	opkg install git
	git config --global http.sslverify false
	git clone https://github.com/DingSoung/AM335x.git
	git push

[1]: http://derekmolloy.ie/beaglebone/getting-started-usb-network-adapter-on-the-beaglebone
[2]:http://wiki.openwrt.org/doc/techref/opkg
[3]: https://github.com/foosel/OctoPrint/wiki/Setup-on-BeagleBone-Black-running-%C3%85ngstr%C3%B6m
