# Alacritty

[homepapage](https://github.com/alacritty/alacritty)

## Installation

[click here](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)

## Themes

[Alacritty Themes](https://github.com/alacritty/alacritty-theme)

[Catppuccin Alacritty Themes](https://github.com/catppuccin/alacritty)

## Installation

### Import

```bash
# We use Alacritty's default Linux config directory as our storage location here.
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme/themes ~/.config/alacritty/themes
git clone https://github.com/catppuccin/alacritty.git
```

Add an import to your alacritty.yml (Replace {theme} with your desired colorscheme):

```bash
import:
 - ~/.config/alacritty/themes/themes/{theme}.yaml
```

### Manual

To manually include a colorscheme in an existing `alacritty.yml`, you just need to copy the entire content of the theme into the root level of your configuration file.