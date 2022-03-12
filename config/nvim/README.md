# Vim 快捷键及插件

## 1 Vim 快捷键设置

### 1.1. 基础键位

在该配置文件当中，`Leader`键设置为`Space`。

**正常模式**

| 按键            | 替代命令                             | 功能              |
| :-------------- | :----------------------------------- | ----------------- |
| `S`             | `:w`                                 | 保存文件          |
| `Q`             | `:q`                                 | 离开 Vim          |
| `;`             | `:`                                  | 输入命令键`:`     |
| `>`             | `>>`                                 | 缩进              |
| `<`             | `<<`                                 | 反向缩进          |
| `space` `space` | `:nohlsearch`                        | 取消高亮搜索      |
| `leader` `rc`   | `:e $HOME/.config/nvim/init.vim<CR>` | 打开 Vim 配置文件 |

**插入模式**

| 按键       | 替代命令 | 功能                   |
| :--------- | :------- | ---------------------- |
| `Ctrl`+`a` | `<ESC>A` | 在该行末尾插入文字     |
| `Ctrl`+`o` | `<ESC>o` | 光标移动到下方新的一行 |
| `ctrl`+`k` | `<ESC>O` | 光标移动到上方新的一行 |

### 1.2 分屏键位

| 按键          | 替代命令                 | 功能               |
| ------------- | ------------------------ | ------------------ |
| `leader` `sj` |                          | 向下分屏           |
| `leader` `sk` |                          | 向上分屏           |
| `leader` `sh` |                          | 向左分屏           |
| `leader` `sl` |                          | 向右分屏           |
| `leader` `o`  | `<C-w>o`或`:only`        | 仅保留当前窗口     |
| `leader` `j`  | `<C-w>j`                 | 跳转到下方窗口     |
| `leader` `k`  | `<C-w>k`                 | 跳转到上方窗口     |
| `leader` `h`  | `<C-w>h`                 | 跳转到左方窗口     |
| `leader` `l`  | `<C-w>l`                 | 跳转到右方窗口     |
| `leader` `J`  | `<C-w>J`                 | 将窗口移动到最下方 |
| `leader` `K`  | `<C-w>K`                 | 将窗口移动到最上方 |
| `leader` `H`  | `<C-w>H`                 | 将窗口移动到最左方 |
| `leader` `L`  | `<C-w>L`                 | 将窗口移动到最右方 |
| `alt`+`up`    | `:res +5<CR>`            | 增加窗口高度       |
| `alt`+`down`  | `:res -5<CR>`            | 减小窗口高度       |
| `alt`+`left`  | `:vertical resize-5<CR>` | 增加窗口宽度       |
| `alt`+`right` | `:vertical resize+5<CR>` | 减小窗口宽度       |

### 1.3 Buffer 操作

| 按键 | 替代命令       | 功能        |
| ---- | -------------- | ----------- |
| `bd` | `:bdelete<CR>` | 删除 buffer |
| `bu` | `:dunload<CR>` | 卸载 buffer |

### 1.4 Tag 操作

| 按键  | 替代命令         | 功能           |
| ----- | ---------------- | -------------- |
| `tu`  | `:tabe<CR>`      | 创建 tab（空） |
| `tU`  | `:tab split<CR>` | 创建 tab       |
| `tl`  | `:+tabnext<CR>`  | 向右切换 tab   |
| `th`  | `:-tabnext<CR>`  | 向左切换 tab   |
| `tml` | `:+tabmove<CR>`  | 向右移动 tab   |
| `tmh` | `:-tabmove<CR>`  | 向左移动 tab   |

## 2 插件快捷键

### 2.1 [coc.nvim](https://github.com/neoclide/coc.nvim)

| 按键           | 功能                         |
| -------------- | ---------------------------- |
| `ctrl`+`sapce` | 启动补全                     |
| `[g`           | 向上查找代码报错             |
| `]g`           | 向下查找代码报错             |
| `gd`           | 跳转到定义的函数             |
| `gy`           | 跳转到定义的类型             |
| `gi`           |                              |
| `gr`           |                              |
| `K`            | 显示文档                     |
| `leader` `rn`  | 重命名                       |
| `leader` `f`   | 格式化选中的文档             |
| `leader` `a`   | 显示该文件所有的诊断         |
| `leader` `e`   | 显示所有安装的 coc 扩展      |
| `leader` `c`   | 显示 coc 命令                |
| `leader` `lo`  | 显示当前文件的所有变量和函数 |

#### 2.2 [coc-snippets](https://github.com/neoclide/coc-snippets)

所有的按键都是在**插入模式**：

| 按键       | 功能                       |
| ---------- | -------------------------- |
| `ctrl`+`l` | 激活 snippet 扩展          |
| `ctrl`+`j` | 跳转到下一个占位符         |
| `ctrl`+`k` | 跳转到上一个占位符         |
| `ctrl`+`x` | 将选定的代码转换为 snippet |

#### 2.3 [coc-translaor](https://github.com/voldikss/coc-translator)

| 按键          | 功能             |
| ------------- | ---------------- |
| `leader` `tl` | 翻译单词（弹出） |
| `leader` `te` | 翻译单词（下方） |

#### 2.4 [coc-explorer](https://github.com/weirongxu/coc-explorer)

| 按键 | 功能             |
| ---- | ---------------- |
| `tt` | 左侧弹出文件列表 |

#### 2.5 [coc-markdown-preview-enhanced](https://github.com/weirongxu/coc-markdown-preview-enhanced)

| 按键         | 功能          |
| ------------ | ------------- |
| `leader` `m` | markdown 预览 |

### 2.2 [vim-markdown](https://github.com/plasticboy/vim-markdown)

Plug 'plasticboy/vim-markdown'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

### 2.3 [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)

| 按键          | 功能         |
| ------------- | ------------ |
| `leader` `gg` | 打开 lazygit |

### 2.4 [fzf.nvim](https://github.com/junegunn/fzf.vim)

| 按键       | 功能   |
| ---------- | ------ |
| `ctrl` `p` | :Files |

### 2.3 [nerdcommenter](https://github.com/preservim/nerdcommenter)

| 按键            | 功能                 |
| --------------- | -------------------- |
| `<leader>` `cc` | 注释当前行或所选行   |
| `<leader>` `ci` | 切换所选行的注释状态 |
| `<leader>` `cs` | 用块格式注释         |
| `<leader>` `cu` | 取消注释             |

### 2,4 [rnvimr](https://github.com/kevinhwang91/rnvimr)

| 按键       | 功能           |
| ---------- | -------------- |
| `R`        | 打开 ranger    |
| `ctrl` `t` | 打开到 tab     |
| `ctrl` `n` | 打开到 buffer  |
| `ctrl` `x` | 打开到水平分屏 |
| `ctrl` `v` | 打开到垂直分屏 |

### 2.5 [vim-surround](https://github.com/tpope/vim-surround)

| 按键 | 功能       |
| ---- | ---------- |
| `cs` | Definition |

### 2.6 状态栏

- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
  "Plug 'itchyny/lightline.vim'

## 代码片段

- [ultisnips](https://github.com/SirVer/ultisnips)
- [vim-snippets](https://github.com/honza/vim-snippets)

" Other tools
Plug 'akinsho/toggleterm.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'kdheepak/lazygit.vim'
Plug 'skywind3000/vim-keysound'
Plug 'sheerun/vim-polyglot'

## 主题类

- [gruvbox](https://github.com/morhetz/gruvbox)
- [vim-snazzy](https://github.com/connorholyday/vim-snazzy)
- [solarized](https://github.com/altercation/solarized)
- [onedark](https://github.com/joshdick/onedark.vim)
- [onehalf](https://github.com/sonph/onehalf)
- [molokai](https://github.com/tomasr/molokai)

Plug 'ryanoasis/vim-devicons'

## 功能类

- [vim-signature](https://github.com/kshenoy/vim-signature)
- [coc](https://github.com/neoclide/coc.nvim)
- [ncm2](https://github.com/ncm2/ncm2)

## 目录树

- [nerdtree](https://github.com/preservim/nerdtree)
- [tagbar](https://github.com/preservim/tagbar)
- [taglist.vim](https://github.com/vim-scripts/taglist.vim)

## 自动补全

- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

## 格式化

- [neoformat](https://github.com/sbdchd/neoformat)

## 代码对齐

- [tabular](https://github.com/godlygeek/tabular)

## 快速添加/删除注释

- [nerdcommenter](https://github.com/preservim/nerdcommenter)

## 代码动态检查

- [ale](https://github.com/dense-analysis/ale)

## 模糊搜索

- [fzf.vim](https://github.com/junegunn/fzf.vim)

## 快速定位

- [vim-easymotion](https://github.com/easymotion/vim-easymotion)

## 个人 wiki

- [vimwiki](https://github.com/vimwiki/vimwiki)

## VIM 中文文档计划

- [vimcdoc](https://github.com/yianwillis/vimcdoc)

### LaTex

- [vimtex](https://github.com/lervag/vimtex)
