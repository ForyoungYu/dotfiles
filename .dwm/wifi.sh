#!/bin/env bash

cd ~/.dwm
ip link set wlp2s0 up
# read -p "Please input where are you:" LO

wpa_supplicant -c internet.conf -i wlp2s0 &
sleep 3
dhcpcd &
sleep 3
ping -c 2 baidu.com
#if [ $? = 0];then
 #   echo "Wifi has heen connected!"
#else
#    echo "Wifi connected failed!"
#fi

/bin/bash /home/salt/.dwm/dwm-status-refresh.sh
