# Linux系统配置指南

> Linux的配置指南  
> 包括的Linux系统有Arch系（Arch、Manjaro）和Debian系（Ubuntu、deepin）  
> 本仅提供常见Linux OS的配置方法，不提供系统的安装方法  
> 如发现错误，欢迎指正

## 目录
 
---
- [Linux系统配置指南](#linux系统配置指南)
  - [目录](#目录)
  - [基本配置](#基本配置)
    - [软件源配置](#软件源配置)
    - [安装输入法](#安装输入法)
      - [fcitx](#fcitx)
      - [ibus(gnome桌面)](#ibusgnome桌面)
    - [配置文件](#配置文件)
    - [NVIDIA显卡配置](#nvidia显卡配置)
    - [字体&壁纸](#字体壁纸)
  - [Python的安装及配置](#python的安装及配置)
    - [pip](#pip)
    - [Conda](#conda)
    - [setuptools](#setuptools)
  - [软件配置](#软件配置)
    - [vim/neovim配置](#vimneovim配置)
    - [zsh配置](#zsh配置)
    - [ranger配置](#ranger配置)
  - [st & dwm](#st--dwm)
  - [美化](#美化)
    - [Gnome美化](#gnome美化)
    - [KDE Plasma美化](#kde-plasma美化)
      - [Dock](#dock)
      - [主题](#主题)
      - [Plasma样式](#plasma样式)
      - [图标](#图标)
      - [光标](#光标)
      - [欢迎屏幕](#欢迎屏幕)
  - [Linux必安装的依赖以及应用](#linux必安装的依赖以及应用)


## 基本配置

----

### 软件源配置 

切换到中国源(Manjaro)
```bash
sudo pacman-mirrors -c China
```

在 /etc/pacman.conf文件末尾添加以下内容：
```bash
[archlinuxcn]
SigLevel = Never
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
```
运行
```bash
sudo pacman -Syu
```
### 安装输入法

#### fcitx

安装fcitx框架及输入法：
```bash
sudo pacman -S fcitx-im
sudo pacman -S fcitx-configtool
sudo pacman -S fcitx-googlepinyin
sudo pacman -S fcitx-rime
sudo pacman -S rime-double-pinyin
sudo pacman -S kcm-fcitx # KDE Config Module for Fcitx
```
然后将`default.custom.yaml`文件复制到`~/.config/fcitx/rime/`目录下。

在家目录下创建文件`.xprofile`，写入以下内容：
```bash
export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
```

#### ibus(gnome桌面)

```bash
sudo pacman -S ibus-fime
sudo pacman -S ibus-pinyin
```

在家目录下创建文件.xprofile，写入以下内容：
```bash
export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS="@im=ibus"
```

### 配置文件

克隆配置文件到Github文件夹：
```bash
cp -r ~/Github/config/home_files/.* ~
cp -r ~/Github/config/config_files/* ~/.config
```

### NVIDIA显卡配置

首先安装驱动程序：
```bash
sudo pacman -S nvidia 
```
hoquxmkaPCI地址：
```bash
lspci | grep -E "VGA|3D"
# 例输出如下
00:02.0 VGA compatible controller: Intel Corporation HD Graphics 530 (rev 06)
01:00.0 3D controller: NVIDIA Corporation GM107 [GeForce 940MX] (rev a2)
```
转换示例：将第二行的01:00.0转换为1:0:0
打开/etc/X11/xorg.conf（如果没有就新建一个），输入：
```bash
Section "Module"
    Load "modesetting"
EndSection

Section "Device"
    Identifier  "nvidia"
    Driver      "nvidia"
    BusID       "1:0:0"
    Option      "AllowEmptyInitialConfiguration"
EndSection
```

配置/usr/share/sddm/scripts/Xsetup文件，追加：
```bash
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
```

### 字体&壁纸

```bash
# 中文字体
sudo pacman -S wqy-microhei wqy-microhei-lite wqy-bitmapfont wqy-zenhei ttf-arphic-ukai ttf-arphic-uming adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts noto-fonts-cjk

git clone https://gitee.com/foryoungyu/fonts.git ~/.local/share/fonts

# wallpapers
git clone https://gitee.com/foryoungyu/wallpaper.git ~/Pictures/wallpapers
```

## Python的安装及配置

---

### pip

> 可以安装 Python 软件包的 PyPA 工具。 

``` bash
# 从文件安装
wget https://bootstrap.pypa.io/get-pip.py 
# or
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py 

# Ubuntu
sudo apt install python3-pip 

# Arch
sudo pacman -S python-pip

#查看pip版本
pip -V　　
```

添加pip源：复制.pip/文件夹到家目录。

### Conda

[Anaconda官网](https://www.anaconda.com/)  
[Anaconda下载地址](https://www.anaconda.com/products/individual#Downloads)  
[Miniconda下载地址](https://docs.conda.io/en/latest/miniconda.html)  

或运行：
```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

bash Miniconda3-latest-Linux-x86_64.sh
```
添加conda源，将.condarc文件复制到用户目录下。

### setuptools

> 可以简化 Python 软件包的下载、编译、安装、升级和卸载。  

```bash
sudo pacman -S python-setuptools # arch
```

## 软件配置

---

### vim/neovim配置

复制config/nvim到～/.config目录下  
vim-plug安装
> 在安装vim-plug之前确保python以及相关库已经安装  
> [Jump to Python的安装及配置](#Python的安装及配置)  

```bash
# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# neovim
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

### zsh配置

安装zsh
```bash
sudo pacman -S zsh # arch
sudo apt install zsh # ubuntu
```
修改默认bash为zsh
```bash
chsh -s /usr/bin/zsh
```

安装oh-my-zsh
```bash
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

# gitee
sh -c "$(curl -fsSL https://gitee.com/shmhlsy/oh-my-zsh-install.sh/raw/master/install.sh)"
# or
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
git clone git://github.com/wting/autojump.git ~/autojump && ./autojump/install.py
```
### ranger配置
包括的插件和命令有：
+ ranger-devicons
+ :extracter <paths>
+ :extracterhere
+ :compress

复制ranger目录到～/.config/目录下
```bash
# 生成ranger配置文件命令
ranger --copy-config=all

# 修改默认编辑器命令
select-editor # Ubuntu
```
## st & dwm

---

分别进入两个目录下，输入以下命令：
```bash
make
sudo make clean install
```

其中，dwm需复制dwm.desktop文件到/usr/share/xsessions目录下，并将.screpts目录复制到家目录中。

## 美化

---

### Gnome美化
```bash
sudo pacman -S gnome-tweak-tool # gnome美化面板
sudo pacman -S chrome-gnome-shell # 用chromium配置gnome的工具
```

### KDE Plasma美化

#### Dock
```bash
sudo pacman -S latte-dock # kde dock
sudo pacman -S plank # plank dock
yay -S compiz 
```
之后运行`latte-dock`或`plank`开启。
这两种Dock会默认自启动。

#### 主题



#### Plasma样式

- brease2
- brease2 Dark
- McMojave
- cherry
- Qogir-dark
- ChromeOS

#### 图标

- Tela
- Tela Dark

#### 光标

- Breeze 微风
- Breeze 微风亮色
- DeepinDark Cursors
- DeepinWhite Cursors

#### 欢迎屏幕

- BeautifulTreeAnimation
- Harmaony
- McMojave
- QuarksSplashDark
- QuarksSplashDarkLight


## Linux必安装的依赖以及应用

---

```bash
# ===================基础依赖===========================

# 设备驱动
sudo pacman -S net-tools
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
sudo pacman -S git
sudo pacman -S yay # Arch的AUR
sudo pacman -S alacritty
sudo pacman -S htop
sudo pacman -S ranger
sudo pacman -S i3
sudo pacman -S polybar

sudo pacman -S code # vscode
sudo pacman -S netease-cloud-music # 网易云音乐
sudo pacman -S kdenlive # 视频剪辑软件
sudo pacman -S gimp # 修图软件
sudo pacman -S simplescreenrecorder # 录屏软件
sudo pacman -S libreoffice-fresh-zh-cn # 中文版libreoffice
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