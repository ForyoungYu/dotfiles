#!/bin/bash

echo "开始解压字体文件"
tar -xzvf LinuxFonts.tar.gz -C ~/.local/share

echo "安装依赖"
apt install zsh 

echo "安装Anaconda"
sh -c 'curl -fLo "https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh"'

echo "开始复制配置文件"
cp 
