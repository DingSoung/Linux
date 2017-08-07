#!/bin/sh
clear 

ssserver -p 1324 -d stop
ssserver -p 1324 -k aaaaaa -d start

