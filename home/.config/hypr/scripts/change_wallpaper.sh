#!/bin/bash

wallpaper_dir=~/Pictures/壁纸/轮播
killall swaybg
swaybg -i $(find $wallpaper_dir -type f | shuf -n 1) -m fill &
# npid=$(ps -ef | grep "swaybg" | grep -v grep | awk '{print $2}'| wc -l)

# sleep 1
# while (( $npid>=2 ))
# do
#     kill $(ps -ef | grep "swaybg" | grep -v grep | awk '{print $2}' | awk 'NR==1')
#     npid=$(ps -ef | grep "swaybg" | grep -v grep | awk '{print $2}'| wc -l)
# done
