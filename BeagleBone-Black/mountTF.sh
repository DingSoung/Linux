#!/bin/sh
echo "Setting mount TF Card to ~/TF"
umount /dev/mmcblk1p1
mount /dev/mmcblk1p1 ~/TF
