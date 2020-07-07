# Linux系统配置指南

> Linux的配置指南  
> 包括的Linux系统有Arch系（Arch、Manjaro）和Debian系（Ubuntu、deepin）  
> 本仅提供常见Linux OS的配置方法，不提供系统的安装方法  
> 如发现错误，欢迎指正

# **目录**
 
- [1. 基本配置](#基本配置)
    - [1.1 软件源配置 ](#软件源配置)
    - [1.2 修改配置文件(Arch)](#修改配置文件(Arch))
    - [1.3 安装输入法(Arch)](#安装输入法(Arch))
    - [1.4 配置文件](#配置文件)
    - [1.5 字体](#字体)  
- [2. 软件配置](#软件配置)
    - [2.1 vim/neovim配置](#vim/neovim配置)
    - [2.2 zsh配置](#zsh配置)
    - [2.3 ranger配置](#ranger配置)
    - [2.4 python环境配置](#Python)
    - [2.5 st配置和编译](#st配置和编译)
    - [2.6 dwm配置和编译](#dwm配置和编译)
- [3. Linux必安装的依赖以及应用](#Linux必安装的依赖以及应用)
- [4. 疑难问题](#疑难问题)


## 基本配置
-----

### 软件源配置 

切换到中国源(Manjaro)
```bash
sudo pacman-mirrors -c China
```
在 /etc/pacman.conf目录下添加：
```bash
[archlinuxcn]
SigLevel = Never
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
```
运行
```bash
sudo pacman -Syu
```
### 安装输入法(Arch)

#### fcitx
安装三个包
```bash
sudo pacman -S fcitx-im
sudo pacman -S fcitx-configtool
sudo pacman -S fcitx-googlepinyin
```
在家目录下创建文件.xprofile，写入以下内容：
```bash
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
```

#### ibus(gnome桌面)
```bash
sudo pacman -S ibus-fime
sudo pacman -S ibus-pinyin
```
在家目录下创建文件.xprofile，写入以下内容：
```bash
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
```

### 配置文件
克隆配置文件到Github文件夹
```bash
git clone https://github.com/ForyoungYu/config.git ~/Github/config
```

### 字体
> 常用字体下载地址，字体包括：
> + Firacode NF
> + FiraCode
> + Hack
> + SourckCodePro

```bash
wget https://github.com/tonsky/FiraCode/releases/download/2/FiraCode_2.zip
# Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
```
用unzip命令解压后放入～/.local/share/fonts目录下

## **软件配置**
---

### **vim/neovim配置**

复制config/nvim到～/.config目录下  
vim-plug安装
> 在安装vim-plug之前确保python以及相关库已经安装  
> [Jump to Python](#Python)  

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# 如果拒绝连接，打开该文件
sudo vim /etc/hosts
# 添加
199.232.28.133 raw.githubusercontent.com
# 安装插件的依赖库
pip3 install pynvim --upgrade 
# 最后打开neovim执行命令
:PlugInstall
# 如果打开.py文件报错，执行
:UpdateRemotePlugins
```

### **zsh配置**

安装zsh
```bash
sudo pacmen -S zsh # arch
sudo apt install zsh # ubuntu
```
修改默认bash为zsh
```bash
chsh -s which zsh
```

安装oh-my-zsh
```bash
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
# gitee
sh -c "$(curl -fsSL https://gitee.com/shmhlsy/oh-my-zsh-install.sh/raw/master/install.sh)"
sh -c "$(wget -O- https://gitee.com/shmhlsy/oh-my-zsh-install.sh/raw/master/install.sh)"
```

[oh-my-zsh皮肤](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)
```bash
# typewritten
git clone https://github.com/reobin/typewritten.git $ZSH_CUSTOM/themes/typewritten
ln -s "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"

# powerlever10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# 配置powerlever10k
p10k configure
```
oh-my-zsh插件
```bash
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# autojump
git clone git://github.com/wting/autojump.git ~/Github/autojump
cd ~/Github/autojump
./install.py
```
### **ranger配置**
包括的插件和命令有：
+ ranger-devicons
+ :extracter <paths>
+ :extracterhere
+ :compress

复制config/ranger到～/.config/目录下
```bash
# 生成ranger配置文件命令
ranger --copy-config=all

# 修改默认编辑器命令：
select-editor
```

## **Python**

### **pip**
> 可以安装 Python 软件包的 PyPA 工具。 
``` bash
# 从文件安装
wget https://bootstrap.pypa.io/get-pip.py # or
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py 

# Ubuntu
sudo apt install python3-pip 

# Arch
sudo pacman -S python-pip

pip -V　　#查看pip版本
```
### **setuptools**
> 可以简化 Python 软件包的下载、编译、安装、升级和卸载。
```bash
sudo pacman -S python-setuptools
```

### **Conda**

[Miniconda下载网页](https://docs.conda.io/en/latest/miniconda.html)  
运行
```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# or
bash Miniconda3-latest-Linux-x86_64.sh
```

## dwm
复制config/dwm.desktop 到/usr/share/xsessions/

## **应用**
---


## Linux必安装的依赖以及应用
---
```bash
# ===================基础依赖===========================

# fonts
sudo pacman -S wqy-microhei wqy-microhei-lite wqy-bitmapfont wqy-zenhei ttf-arphic-ukai ttf-arphic-uming adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts noto-fonts-cjk

# 设备驱动
sudo pacman -S xorg xorg-server
sudo pacman -S xf86-input-synaptics # 触摸板驱动
sudo pacman -S xf86-input-libinput
sudo pacman -S xf86-video-intel # intel显卡驱动
sudo pacman -S xf86-video-ati # amd显卡驱动
sudo pacman -S alsa-utils pulseaudio pulseaudio-alsa # 声音管理器

# 底层应用
sudo pacman -S w3m # 终端浏览器
sudo pacman -S ntfs-3g # 识别windows分区
sudo pacman -S make cmake # 编译工具

# ======================应用程序==========================
# Arch / Manjaro
sudo pacman -S zsh
sudo pacman -S fish
sudo pacman -S yay # Arch的AUR
sudo pacman -S alacritty
sudo pacman -S htop
sudo pacman -S ranger
sudo pacman -S i3
sudo pacman -S polybar
sudo pacman -S git

sudo pacman -S code # vscode
sudo pacman -S netease-cloud-music # 网易云音乐
sudo pacman -S kdenlive # 视频剪辑软件
sudo pacman -S gimp # 修图软件
sudo pacman -S simplescreenrecorder # 录屏软件
yay -S dropbox

# Wechat
yay -S deepin-wine-wechat
yay -S deepin.com.wechat2
sudo pacman -S electronic-wechat-git
sudo pacman -S electron-wechat
yay -S wechat-devtools
# QQ & TIM
yay -S deepin-wine-tim
yay -S deepin-wine-qq
```

## 疑难问题
---
### 网易云音乐无法输入中文问题
```bash
yay -S qcef
```