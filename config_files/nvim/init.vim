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
noremap <leader>rc :e $HOME/.config/nvim/init.vim<CR>

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
noremap <leader>sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <leader>sj :set splitbelow<CR>:split<CR>
noremap <leader>sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <leader>sl :set splitright<CR>:vsplit<CR>

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


" source $XDG_CONFIG_HOME/nvim/plug.vim
" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.config/nvim/plugged')
" Languange supports
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'
" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
" Plug 'puremourning/vimspector'

" Complete
" Plug 'ycm-core/YouCompleteMe'

" Snippets in VIM
" Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" Statusline/Tabline plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'mg979/vim-xtabline'
" Plug 'itchyny/lightline.vim'

" Themes/Icons
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'connorholyday/vim-snazzy'
Plug 'ryanoasis/vim-devicons'

" Chinese Help
Plug 'yianwillis/vimcdoc'

" Formater
Plug 'sbdchd/neoformat'

" Other tools
Plug 'preservim/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'kevinhwang91/rnvimr'
Plug 'kdheepak/lazygit.vim'
Plug 'akinsho/toggleterm.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'kshenoy/vim-signature'
Plug 'preservim/nerdcommenter'
call plug#end()

" ===
" === coc.nvim
" === https://github.com/neoclide/coc.nvim/wiki
set hidden
set updatetime=300
set shortmess+=c
set nobackup
set nowritebackup
let g:coc_global_extensions =[
  \ 'coc-clangd',
  \ 'coc-cmake',
  \ 'coc-css',
  \ 'coc-explorer',
  \ 'coc-emmet',
  \ 'coc-go',
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-lists',
  \ 'coc-json',
  \ 'coc-markdownlint',
  \ 'coc-markdown-preview-enhanced',
  \ 'coc-marketplace',
  \ 'coc-prettier',
  \ 'coc-pyright',
  \ 'coc-snippets',
  \ 'coc-texlab',
  \ 'coc-vimtex',
  \ 'coc-webview',
  \ 'coc-xml',
  \ 'coc-yaml',
  \ ]

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <leader>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <leader>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <leader>c  :<C-u>CocList commands<cr>


" ===
" === coc-configs
" ===

" To enable highlight current symbol on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" coc-snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
"xmap <leader>x  <Plug>(coc-convert-snippet)
let g:snips_author = 'Foryoung Yu'

" coc-translator
nmap <Leader>tl <Plug>(coc-translator-p)
vmap <Leader>tl <Plug>(coc-translator-pv)
"" echo
nmap <Leader>te <Plug>(coc-translator-e)
vmap <Leader>te <Plug>(coc-translator-ev)
"" replace
"nmap <Leader>r <Plug>(coc-translator-r)
"vmap <Leader>r <Plug>(coc-translator-rv)

" coc-explorer
nnoremap tt :CocCommand explorer<CR>

" coc-markdown-preview-enhanced
nnoremap <leader>m :CocCommand markdown-preview-enhanced.openPreview<CR>


" ===
" === Themes
" ===
set t_Co=256
set background=dark
let g:gruvbox_bold='1'
let g:gruvbox_italic='1'
let g:gruvbox_transparent_bg='1'
let g:gruvbox_underline='1'
let g:gruvbox_undercurl='1'
let g:gruvbox_termcolors='256'
"let g:gruvbox_hls_cursor='green'
"let g:gruvbox_number_column='green'
"let g:gruvbox_sign_column='bg1'
"let g:gruvbox_color_column='green'
let g:gruvbox_vert_split='gray'
let g:onedark_hide_endofbuffer='1'
let g:onedark_termcolors='256'
let g:onedark_terminal_italics='1'
let g:molokai_original = 1
let g:rehash256 = 1
" Options: snazzy, gruvbox, molokai, onehalfdark, onehalflight, onedark
colorscheme gruvbox


" ===
" === ultisnips
" ===
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsSnippetDirectories=[
"           \ 'UltiSnips',
"           \ '$XDG_CONFIG_HOME/nvim/UltiSnips',
"           \ '$xdg_config_home/nvim/plugged/vim-snippets/snippets',
"           \ '$xdg_config_home/nvim/plugged/vim-snippets/ultisnips']
let g:UltiSnipsEditSplit="vertical"

" ===
" === vimtex
" ===
filetype plugin indent on
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_quickfix_mode = 0
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines={'_':'xelatex'}
let maplocalleader = ","
let g:tex_conceal='abdmg'


" ===
" === airline
" ===
" source ./plugs_config/vim-airline.vim
" - https://github.com/vim-airline/vim-airline
let g:airline_theme='onehalfdark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'


" ===
" === tagbar
" ===
nmap <F8> :TagbarToggle<CR>


"===
"=== vim-markdown
"===
set nofoldenable
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_math = 1


" ===
" === vim-instant-markdown
" ===
" let g:instant_markdown_slow = 0
" let g:instant_markdown_autostart = 0
" let g:instant_markdown_open_to_the_world = 1
" let g:instant_markdown_allow_unsafe_content = 1
" let g:instant_markdown_allow_external_content = 0
" let g:instant_markdown_mathjax = 1
" let g:instant_markdown_autoscroll = 1


" ===
" === vim-gitgutter
" ===
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap H :GitGutterPreviewHunk<CR>
nnoremap [h :GitGutterPrevHunk<CR>
nnoremap ]h :GitGutterNextHunk<CR>


" ===
" === neoformat
" ===
nnoremap <leader>f :Neoformat<CR>
let g:shfmt_opt="-ci"
let g:neoformat_enabled_python = ['yapf', 'autopep8', 'docformatter']
let g:neoformat_python_yapf = {
        \ 'exe': 'yapf',
        \ 'args': ["--style", "{SPACES_AROUND_POWER_OPERATOR: True, SPACES_BEFORE_COMMENT: 1}"]
        \ }


" ===
" === lazygit.nvim
" ===
" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed


" ===
" === toggleterm
" ===
nnoremap <leader>tt :ToggleTerm<CR>
let g:toggleterm_terminal_mapping = '<C-t>'


" ===
" === telescope
" ===
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" ===
" === rnvimr
" ===
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_draw_border = 0
highlight link RnvimrNormal CursorLine
nnoremap <silent> R :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 1<CR>
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-n>': 'NvimEdit badd',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }
let g:rnvimr_ranger_views = [
            \ {'minwidth': 75, 'ratio': []},
            \ {'minwidth': 40, 'maxwidth': 74, 'ratio': [1,1]},
            \ {'maxwidth': 39, 'ratio': [1]}
            \ ]
let g:rnvimr_layout = {
            \ 'relative': 'editor',
            \ 'width': float2nr(round(0.7 * &columns)),
            \ 'height': float2nr(round(0.7 * &lines)),
            \ 'col': float2nr(round(0.15 * &columns)),
            \ 'row': float2nr(round(0.15 * &lines)),
            \ 'style': 'minimal'
            \ }
let g:rnvimr_presets = [
            \ {'width': 0.600, 'height': 0.600},
            \ {},
            \ {'width': 0.800, 'height': 0.800},
            \ {'width': 0.950, 'height': 0.950},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}
            \ ]

" ===
" === vimspector
" ===
let g:vimspector_enable_mappings = 'HUMAN'


" ===
" === FZF
" ===
noremap <silent> <c-p> :Files<CR>
noremap <silent> <C-h> :History<CR>

" ===
" === nerdcommenter
" ===
" mapping
" <leader>cc:Comment out the current line or text selected in visual mode.
" <leader>cu:Uncomments the selected line(s).
" <leader>ci:Toggles the comment state of the selected line(s) individually.
" <leader>cs:Comments out the selected lines with a pretty block formatted layout.
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" ===
" === Quickly Run
" ===
noremap <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		exec "!time ./%<"
		" :sp
		" :res -15
		" :term ./%<
	elseif &filetype == 'python'
		set splitbelow
		exec "!python3 %"
		" :sp
		" :term python3 %
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
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc
