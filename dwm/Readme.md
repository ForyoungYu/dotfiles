# 修改的关键内容

config.h文件第十行
```
X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib
// 改为
X11INC = /usr/include/X11
X11LIB = /usr/include/X11
```

dwm.c第748、749、774的tw改为sw
