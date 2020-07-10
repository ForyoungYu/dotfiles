" Show Character
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
	
" Tab Length 
set tabstop=4

" Autoindent Length
set shiftwidth=4

" Inherit the indentation of the previouse line, works for multi-line note
set autoindent

" paste model 
set paste

" Syntax hightlight
syntax on

" 配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

exec "nohlsearch"

let mapleader=" "

set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set smartcase
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Keymap config
map S :w<CR>
map Q :q<CR> 
map R :search $MYVIMRC<CR>
noremap <LEADER><CR> :nohlsearch<CR>
noremap = nzz
noremap - Nzz

"=========== Plugs========================
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline' 

" snazzy theme
"Plug 'connorholyday/vim-snazzy'

" Vimtex
Plug 'lervag/vimtex'

" nroformat
Plug 'sbdchd/neoformat'

" NCM2
Plug 'ncm2/ncm2'

Plug 'roxma/nvim-yarp'

call plug#end()
"========================================

"colorscheme snazzy
"let g:SnazzyTransparent = 1 
"let g:lightline = {
"\ 'colorscheme': 'snazzy',
"\ }



