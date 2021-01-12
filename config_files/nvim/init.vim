set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8

" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 开启文件类型侦测
filetype on

" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 启用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 设置行号
set number
" 突出显示当前行
set cursorline
" 显示括号匹配
set showmatch

" 专注模式

" 禁止光标闪烁
"set gcr=a:block-blinkon0
"" 禁止显示滚动条
"set guioptions-=l
"set guioptions-=L
"set guioptions-=r
"set guioptions-=R
"" 禁止显示菜单和工具条
"set guioptions-=m
"set guioptions-=T

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on


" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 键位绑定
map W :w<CR>
map Q :q<CR>
map R :search $MYVIMRC<CR>
noremap <LEADER><CR> :nohlesearch<CR>
noremap - Nzz
noremap = nzz

" ===========插件安装开始位置==========
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
" 主题
Plug 'connorholyday/vim-snazzy'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ncm2/ncm2'
Plug 'lervag/vimtex'
Plug 'sbdchd/neoformat'
Plug 'lervag/vimtex'
call plug#end()

" ========主题设置========
"set background=dark

colorscheme molokai
let g:molokai_original = 1
"let g:rehash256 = 1

"colorscheme solarized
"colorscheme snazzy
"let g:molokai_original = 1
"let g:lightline = {
"\ 'colorscheme': 'snazzy',
"\ }

