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
- Dracula

Finally add this line to my `kitty.conf` configuration file:

```bash
include ./theme.conf
```
# Issues
## Q: I can't use ibus and fcitx input framework in Kitty

Watch Github Issues: [kitten for IME input #469](https://github.com/kovidgoyal/kitty/issues/469)

Open the Kitty Desktop Entry file and modify its `Exec` items as follows:

```bash
[Desktop Entry]
Version=1.0
Type=Application
Name=kitty
GenericName=Terminal emulator
Comment=Fast, feature-rich, GPU based terminal
TryExec=/location/of/kitty
Exec=env GLFW_IM_MODULE=ibus /location/of/kitty
Icon=/location/of/kitty/icon
Categories=System;TerminalEmulator;
```
Where the `/location/of/kitty` is the path of kitty you installed.

## Q: CJK fonts are not well displayed

Here is the soluation: [symbol_map | Kitty Fonts](https://sw.kovidgoyal.net/kitty/conf/#opt-kitty.symbol_map) and [the range of Chinese characters | stack overflow](https://stackoverflow.com/questions/1366068/whats-the-complete-range-for-chinese-characters-in-unicode)

Map the specified Unicode codepoints to a particular font. Useful if you need special rendering for some symbols, such as for Powerline. Avoids the need for patched fonts. Each Unicode code point is specified in the form U+<code point in hexadecimal>. You can specify multiple code points, separated by commas and ranges separated by hyphens. This option can be specified multiple times. The syntax is:

```bash
symbol_map codepoints Font Family Name
```
In my `kitty.conf`, I specified the range of CJK Fonts and Punctuations:

```bash
symbol_map U+4E00-U+9FFF,U+3400-U+4DBF Microsoft YaHei
symbol_map U+3000-U+303F,U+FF00-U+FFEF Microsoft YaHei
```
