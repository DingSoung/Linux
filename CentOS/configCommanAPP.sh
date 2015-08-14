#!/bin/sh
#------------------------------------------
# update.sh
#
# fedora 系统安装之后安装必要的软件和更新
# 
# 2012-12-21 #------------------------------------------
###################################################
# 常用软件
###################################################
# 安装YUM源最优选择器
yum -y install yum-plugin-fastestmirror
# 卸载软件时连同依赖一并卸载依赖的插件， #yum remove smplayer --remove-leaves
yum -y install yum-remove-with-leaves

#配置第三方源仓库RPMfusion（提供受专利保护以及有版权的程式）
rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
rpm -Uvh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm

#如果指定源不可用就跳过，针对Dropbox的源
#yum-config-manager --save --setopt=Dropbox.skip_if_unavailable=true

#更新系统
yum -y update

#安装wget
yum -y install wget

#安装易用的字符界面文本编辑器（ssh时候使用）
yum -y install nano

#安装telnet客户端
yum -y install telnet lftp

# 安装和配置GNOME-tweak-tool,桌面设置工具
yum -y install gnome-tweak-tool

# 安装一些字体
yum -y install wqy-bitmap-fonts wqy-zenhei-fonts wqy-unibit-fonts wqy-microhei-fonts
# 给libreoffice安装中文字体
yum -y install libreoffice-langpack-zh-Hans

#安装Windows字体：
#拷贝字体文件到 /usr/share/fonts，然后执行以下三个命令
#[root@localhost fonts]# mkfontscale
#[root@localhost fonts]# mkfontdir
#[root@localhost fonts]# fc-cache -fv

#安装字体优化工具
rpm -Uvh http://www.infinality.net/fedora/linux/infinality-repo-1.0-1.noarch.rpm
yum -y install freetype-infinality fontconfig-infinality

# 开机进入多用户模式(int3),终端下键入
#ln -si /lib/systemd/system/multi-user.target /etc/systemd/system/default.target
# 开机进入桌面环境
#ln -si /lib/systemd/system/graphical.target /etc/systemd/system/default.target

# 安装ftp客户端
#yum -y install filezilla

# 图形化服务管理工具
yum -y install systemd-ui

# 安装配置编辑器
yum -y install dconf-editor
#在 dconf 中沿著 org > gnome > shell 的順序可以得到如下的畫面
#我們需要修改的欄位是 app-folder-categories，而預設的內容是：['Utilities', 'Sundry'] ，
#我們將其修改為 ['Utilities', 'Games', 'Sundry', 'Office', 'Internet', 'Graphics', 'Multimedia', 'System', 'Development']

# 减少标题栏高度 
sed -i '/title_vertical_pad/s|value="[0-9]\{1,2\}"|value="12"|g' /usr/share/themes/Adwaita/metacity-1/metacity-theme-3.xml

#安装Docky
#yum -y install docky

#禁用SELinux
#nano /etc/selinux/conifg
#修改 SELINUX=disabled

# 安装Faenza图标集
#yum -y search faenza
# 可以得到faenza-icon-theme.noarch : Icon theme designed for Equinox GTK theme
# 安装Faenza图标集
#yum -y install kfaenza-icon-theme

# 修改主题文件
# nano /usr/share/gnome-shell/theme/gnome-shell.css
# 到 #panel 部分修改，修改顶部工具栏为半透明
sed -i '/#panel {/{n;s/black/rgba(0.0, 0.0, 0.0, 0.3)/}' /usr/share/gnome-shell/theme/gnome-shell.css

#设置 gnome-tweak-tool --> 主题 -->图标主题 -->Faenza,这时Docky就变得整齐而漂亮了
###################################################
# 服务管理
###################################################
# 显示所有服务
#systemctl -t service
# 显示 sshd 服务的详细信息：
#systemctl status sshd.service
# 启用服务
#systemctl enable service_name.service
# 启动服务
#systemctl start service_name.service
# 停止服务
#systemctl stop service_name.service

# 目录右键启动终端——非常便捷的一个小工具
yum -y install nautilus-open-terminal

# 安装多媒体解码器 —— 想听MP3么？想看电影么？装他准没错。
yum -y install ffmpeg ffmpeg-libs gstreamer-ffmpeg libmatrosca xvidcore libdvdread libdvdnav lsdvd
yum -y install gstreamer-plugins-good gstreamer-plugins-bad gstreamer-plugins-ugly
yum -y install mplayer smplayer

# 光盘刻录软件
yum -y install brasero

# 安装解压用插件 —— 7Zip和UnRAR工具
yum -y install p7zip p7zip-plugins unrar

# 桌面天气插件
yum -y install gnome-shell-extension-weather

# 简单看图软件: eye of gnome
yum -y install eog

# 很棒的截图软件
yum -y install shutter

# 简单绘图软件
yum -y install mypaint cinepaint

# 安装图片处理程序
yum -y install gimp

# 安装3D/视频编辑软件
yum -y install blender
yum -y install avidemux

# 安装音频编辑软件
yum -y install audacity

# 安装系统清理工具BleachBit
yum -y install bleachbit

# 安装CHM阅读器
yum -y install gnochm

# 电子书阅读管理软件
yum -y install calibre

# 其他的文件管理器
yum -y install thunar

# 性能测试工具
yum -y install sysstat hdparm

#显卡性能测试
#glxgears

# 网络唤醒工具
yum -y install wol

# 安装下载工具
yum -y install transmission  mldonkey

# 安装下载工具
#yum -y install aria2 #aria2下载工具，命令行的工具 
# 启动aria2并开启rpc支持
#aria2c --enable-rpc --rpc-listen-all --rpc-allow-origin-all --file-allocation=none --max-connection-per-server=3 --max-concurrent-downloads=3 --continue

# 安装rdesktop：Linux 下的远程桌面客户端
# 连接到远程桌面： rdesktop [options] server[:port]
yum -y install rdesktop
##########################################
# connect.sh - 建立远程桌面连接
##########################################
#!/bin/sh
#if [$# -lt 1];then
#echo "请输入服务器IP地址"
#exit 1
#fi
#rdesktop -g 1024x768+200+100 -r sound:local -u cjiabiao $*

####################################################
# 更好的远程桌面连接客户端 freerdp
# http://www.freerdp.com/
####################################################
#yum -y install gcc cmake openssl-devel libX11-devel libXext-devel libXinerama-devel libXcursor-devel libXdamage-devel libXv-devel libxkbfile-devel alsa-lib-devel cups-devel ffmpeg-devel
#cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_SSE2=ON
#make
#make install
#echo "/usr/local/lib64/freerdp" > /etc/ld.so.conf.d/freerdp.conf
#使用
#xfreerdp /u:username /p:password /v:server[:port]

##########################################################
# 安装和配置 samba 服务和客户端
##########################################################
#yum -y install samba*
#修改参数
#nano /etc/samba/smb.conf
#测试参数
#testparm
#设置samba的登陆用户密码
#smbpasswd -a useranme #username必须是已存在的地址 

# 开机自动启动SAMBA服务
#systemctl enable smb.service
#systemctl start smb.service
###############################################
#指定windows系统的用户名，然后输入该用户的密码。
#smbclient -L //IP或机器名 [-U 用户名]
#smbclient -L //MASTER-PC -U Master

# 挂载共享文件夹到Linux目录，命令格式如下面所示:
#mount -t cifs -o username=xxx,password=xxx //hostname/dir /mnt/tmp
#mount -t cifs -o username=Master //192.168.1.6/www /home/master/remote


##########################################################
# 开发环境及工具
##########################################################
# C/C++ 编译器及辅助工具
yum -y install gcc*
yum -y install cmake automake autoconf intltool

#版本管理工具
yum -y install git-core gitk git-gui

# 安装内核开发文件，编译virtualbox内核需要
yum -y install kernel-devel

# C/C++ 集成开发环境
yum -y install anjuta

# GUI端调试器
yum -y install insight

# 文件比较与合并工具
yum -y install diffuse

# 十六进制编辑器
yum -y install ghex

#gtk支持为：
yum -y install gtk2-devel gtk2-devel-docs gtk3-devel gtk3-devel-docs gtk+-devel

#Gnome开发环境为：
yum -y groupinstall development-libs development-tools gnome-software-development

#其他的支持库
yum -y install openssl-devel libX11-devel libXext-devel libXinerama-devel libXcursor-devel libXdamage-devel libXv-devel libxkbfile-devel alsa-lib-devel cups-devel ffmpeg-devel

# php 环境
yum -y install php php-devel

# mysql-server
yum -y install mysql mysql-server php-mysql mysql-devel

# 使用一个配置文件
cp /usr/share/mysql/my-small.cnf /etc/my.cnf

# mysql管理工具phpmyadmin
yum -y install phpMyAdmin php-mysql php-mcrypt

# python
yum -y install python-devel

#其他的一些包
yum -y install python-requests python-lxml MySQL-python
yum -y install PyQt4*

#sqlite管理程序
yum -y install sqliteman

#数据库浏览程序
yum -y install libgda*

#安装Android工具
yum -y install android-tools abootimg
##############################################
# 一些其他工具
##############################################
#二维码工具
yum -y install qrencode qrencode-devel

#音乐标签编辑
yum -y install easytag

#音乐乱码处理
#安装python-mutagen：
yum -y install python-mutagen
#在终端中转到MP3文件夹，然后执行命令：mid3iconv -e GBK *.mp3
#重新导入，完成

#pdf修改程序
yum -y install xournal

#系统信息传感器CPU温度等
yum -y install lm_sensors hddtemp

#安装 FlashPlayer 插件
## Adobe Repository 64-bit x86_64 ##
rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
yum check-update
yum -y install flash-plugin nspluginwrapper alsa-plugins-pulseaudio libcurl

####################################################
#清理旧内核：
#package-cleanup --oldkernels
#清理当前软件仓库不再支持的孤儿包：
#package-cleanup --orphans
#清理不被当前系统任何软件所使用的依赖包： 
#package-cleanup --leaves
####################################################
#安装google-chrome
echo '[google-chrome]' > /tmp/google-chrome.repo
echo 'name=google-chrome' >> /tmp/google-chrome.repo
echo 'baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64' >> /tmp/google-chrome.repo
echo 'enabled=1' >> /tmp/google-chrome.repo
echo 'gpgcheck=1' >> /tmp/google-chrome.repo
cp /tmp/google-chrome.repo /etc/yum.repos.d/google-chrome.repo
rpm --import https://dl-ssl.google.com/linux/linux_signing_key.pub
yum -y install google-chrome-unstable﻿
