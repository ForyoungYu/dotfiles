# Kitty

[homepapge](https://sw.kovidgoyal.net/kitty/)

## Installation

```bash
sudo dnf insall kitty

```

## Themes

[Kitty-themes](https://github.com/dexpota/kitty-themes)

Clone source code from kitty-themes repository:

```bash
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
```

Or you can use Conda to install it:

```bash
conda install -c conda-forge kitty-themes
```

Choose a theme and create a symlink:

```bash
cd ~/.config/kitty
ln -s ./kitty-themes/themes/Floraverse.conf ~/.config/kitty/theme.conf

```

Here are my favourite themes:

- ayu_mirage
- Jellybeans
- [tokyonight](https://github.com/folke/tokyonight.nvim/tree/main/extras)

Finally add this line to my `kitty.conf` configuration file:

```bash
include ./theme.conf
```
