## Requiremence

### vim-plug

在安装 vim-plug 之前确保 python 以及相关库已经安装  

```bash
# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

如果拒绝连接，编辑/etc/hosts文件

```bash
sudo echo 199.232.28.133 raw.githubusercontent.com >> /etc/hosts
```

安装插件的依赖库

```
pip install pynvim --upgrade
```

最后打开neovim执行命令

```
:PlugInstall
```

### Others

```bash
# Node.js >=v16.14.0

# pynvim
pip install pynvim --upgrade

# latex: latexindent
conda install latexindent.pl -c conda-forge

# python: yapf
pip install yapf

# shell: shfmt
sudo dnf install shfmt -y
# c/c++: clang-format
```

**PS:** 在安装插件的过程中，如果遇到 coc.nvim 安装失败的情况，需要进入到 nvim 的插件安装目录`.vim`下的`coc.nvim`目录下运行`yarn install`即可。

### NeoVim Configuration

我已经配置好了自己的neovim键位，查看[这里](vimConfig.md)。