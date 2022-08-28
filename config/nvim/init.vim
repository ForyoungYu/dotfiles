" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|
"
" Author: @Foryoung Yu
" Email: foryoung_yu@outlook.com

" ===
" === Editor behavior
" ===

syntax on
syntax enable
set encoding=UTF-8
set mouse=a
set number
set autoindent
set relativenumber
set cursorline
"set cursorcolumn
set conceallevel=1
set ruler
set smartindent
set showcmd
set showmode
set splitright
set splitbelow
set list
" Opension: "»\ ", "↲", "·", "›", "‹", "␣", "\|\ "
"set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set listchars=tab:\|\ ,trail:·

"set matchpairs
set ignorecase
set hlsearch
set wrapscan
set incsearch
let g:mapleader=" "
let g:mkdp_browser="google-chrome"

" ===
" === Basic Mappings
" ===
noremap ; :

nnoremap S :w<CR>
nnoremap Q :q<CR>

nnoremap > >>
nnoremap < <<

nnoremap <leader><space> :nohlsearch<CR>
" open config file
nnoremap <leader>rc :e $HOME/.config/nvim/init.vim<CR>
" reload config file
nnoremap <leader>sv :source $MYVIMRC<cr>

inoremap <C-a> <Esc>A
inoremap <C-o> <Esc>o
inoremap <C-y> <Esc>O

" ===
" === Windows control
" ===
"nnoremap <leader>v :vsplit<CR>
"nnoremap <leader>s :split<CR>

" Only window
noremap <leader>o <C-w>o

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
nnoremap <leader>sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
nnoremap <leader>sj :set splitbelow<CR>:split<CR>
nnoremap <leader>sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
nnoremap <leader>sl :set splitright<CR>:vsplit<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Jump cursor to other window
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l

" Move window to side
noremap <leader>K <C-w>K
noremap <leader>H <C-w>H
noremap <leader>J <C-w>J
noremap <leader>L <C-w>L

" Resize splits with arrow keys
noremap <A-up> :res +5<CR>
noremap <A-down> :res -5<CR>
noremap <A-left> :vertical resize-5<CR>
noremap <A-right> :vertical resize+5<CR>

" ===
" === Buffer management
" ===
noremap - :bprevious<CR>
noremap = :bnext<CR>
noremap bd :bdelete<CR>
noremap bu :bunload<CR>

" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tu :tabe<CR>
noremap tU :tab split<CR>
" Move around tabs with tl and th
noremap tl :+tabnext<CR>
noremap th :-tabnext<CR>
" Move the tabs with tml and tmh
noremap tml :+tabmove<CR>
noremap tmh :-tabmove<CR>

" ===
" === Markdown Settings
" ===
" Snippets
"source $XDG_CONFIG_HOME/nvim/md-snippets.vim
" auto spell
"autocmd BufRead,BufNewFile *.md setlocal spell


source $XDG_CONFIG_HOME/nvim/plug.vim


" ===
" === Quickly Run
" ===
noremap <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		" exec "!g++ % -o %<"
		" exec "!time ./%<"
    :term g++ % -o %<
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		exec "!time ./%<"
    " :sp
    " :res -15
    " :term g++ % -o %<
	elseif &filetype == 'python'
		set splitbelow
		" exec "!python3 %"
    :sp
    :term python %
	elseif &filetype == 'lua'
		set splitbelow
		exec "!lua %"
	elseif &filetype == 'cs'
		set splitbelow
		silent! exec "!mcs %"
		:sp
		:res -5
		:term mono %<.exe
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		exec "!time bash %"
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
    " :term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
    :term node %
  elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc

