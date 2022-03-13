# Alacritty

[homepapage](https://github.com/alacritty/alacritty)

## Installation

[click here](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)

## Themes

[alacritty-theme](https://github.com/eendroroy/alacritty-theme)

[alacritty-colorscheme](https://github.com/eendroroy/alacritty-theme)

### Installation

```bash
pip install --user alacritty-colorscheme
```

### Getting colorschemes

```bash
REPO=https://github.com/eendroroy/alacritty-theme.git
DEST="$HOME/.eendroroy-colorschemes"
# Get colorschemes
git clone $REPO $DEST
# Create symlink at default colors location (optional)
ln -s "$DEST/themes" "$HOME/.config/alacritty/colors"
```

### Usage

```bash
usage: alacritty-colorscheme [-c configuration file] [-C colorscheme directory] [-V] [-h]
                             {list,status,toggle,apply} ...
```
