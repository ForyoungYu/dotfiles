if has ("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

"
" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.config/nvim/plugged')

" takuya
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'

if has("nvim")
  Plug 'neovim/nvim-lspconfig'
endif

" Icons
Plug 'ryanoasis/vim-devicons'

" Complete
" Plug 'ycm-core/YouCompleteMe'

" Chinese Help
Plug 'yianwillis/vimcdoc'

" Tools
Plug 'lilydjwg/colorizer'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'kshenoy/vim-signature'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" ===
" === vim-startify
" ===
Plug 'mhinz/vim-startify'


" ===
" === Themes
" ===
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tomasr/molokai'
Plug 'connorholyday/vim-snazzy'
" Plug 'itchyny/lightline.vim'
" Plug 'mg979/vim-xtabline'

" === tokyonight.nvim
let g:tokyonight_style = "night" " storm | night | day
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" === gruvbox
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

" === onedark.vim
let g:onedark_hide_endofbuffer='1'
let g:onedark_termcolors='256'
let g:onedark_terminal_italics='1'

" === molokai
let g:molokai_original = 1
let g:rehash256 = 1

let g:lightline = {'colorscheme': 'tokyonight'}

set t_Co=256
set background=dark
colorscheme tokyonight "snazzy | tokyonight | gruvbox | molokai | onehalfdark | onehalflight | onedark


" ===
" === Airline
" ===
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" ===
" === nerdtree
" ===
Plug 'preservim/nerdtree'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" ===
" === ultisnips
" ===
Plug 'honza/vim-snippets'
" Plug 'sirver/ultisnips'
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
Plug 'lervag/vimtex'
filetype plugin indent on
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_quickfix_mode = 0
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let maplocalleader = ","
let g:tex_conceal='abdmg'


" ===
" === indentLine
" ===
Plug 'Yggdroot/indentLine'
let g:indentLine_enabled = 0
let g:indentLine_setColors = 0
let g:indentLine_char = 'c'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:markdown_syntax_conceal=0
let g:vim_json_conceal=0


" ===
" === tagbar
" ===
Plug 'preservim/tagbar'
nmap <F8> :TagbarToggle<CR>


"===
"=== vim-markdown
"===
Plug 'plasticboy/vim-markdown'
set nofoldenable
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_math = 1


" ===
" === vim-instant-markdown
" ===
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_autoscroll = 1

" ===
" === markdown-preview.nvim
" ===
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
nnoremap <F3> :MarkdownPreview<CR> "设置 F3 开启 Markdown 文件预览
let g:mkdp_auto_start = 0 "打开文件后自动弹出, 0 为否
let g:mkdp_auto_close = 1 "关闭文件后自动关闭预览窗口, 1 为是
let g:mkdp_refresh_slow = 1 "慢速预览, 修改后退出 insert 模式后方会刷新视图, 1 为是
let g:mkdp_open_to_the_world = 0 "开启公网链接, 0 为否
let g:mkdp_browser = '' "指定浏览器, 默认会跟随系统浏览器
let g:mkdp_port = '' " 指定端口, 默认随机端口
let g:mkdp_page_title = '「${name}」' "指定浏览器窗口标题, 默认为 Markdown 文件名

" ===
" === vim-gitgutter
" ===
Plug 'airblade/vim-gitgutter'
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
" === vim-hexokinase
" ===
" Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
let g:Hexokinase_highlighters = [ 'virtual' ]
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'

" ===
" === neoformat
" ===
Plug 'sbdchd/neoformat'
nnoremap <leader>f :Neoformat<CR>
let g:shfmt_opt="-ci"
let g:neoformat_enabled_python = ['yapf']
let g:neoformat_python_yapf = {
        \ 'exe': 'yapf',
        \ 'args': ["--style='{SPACES_AROUND_POWER_OPERATOR: True, SPACES_BEFORE_COMMENT: 1}'"]
        \ }

" ===
" === ZSVimIM
" ===
" Plug 'ZSaberLv0/ZFVimIM'
" Plug 'ZSaberLv0/ZFVimJob' " 可选, 用于提升词库加载性能
" function! s:myLocalDb()
"     let db = ZFVimIM_dbInit({
"                 \   'name' : 'YourDb',
"                 \ })
"     call ZFVimIM_cloudRegister({
"                 \   'mode' : 'local',
"                 \   'dbId' : db['dbId'],
"                 \   'repoPath' : '~/.config/ibus/rime/', " 词库路径
"                 \   'dbFile' : '/', " 词库文件, 相对 repoPath 的路径
"                 \   'dbCountFile' : '/YourDbCountFile', " 非必须, 词频文件, 相对 repoPath 的路径
"                 \ })
" endfunction
" autocmd User ZFVimIM_event_OnDbInit call s:myLocalDb()

" ===
" === lazygit.nvim
" ===
Plug 'kdheepak/lazygit.nvim'
" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed


" ===
" === vim-floaterm
" ===
Plug 'voldikss/vim-floaterm'
let g:floaterm_keymap_new    = '<leader>tt'
let g:floaterm_keymap_prev   = '<leader>th'
let g:floaterm_keymap_next   = '<leader>tl'
let g:floaterm_keymap_toggle = '<F12>'


" ===
" === telescope
" ===
" Find files using Telescope command-line sugar.
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" ===
" === rnvimr ranger
" ===
Plug 'kevinhwang91/rnvimr'
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
" Plug 'puremourning/vimspector'
let g:vimspector_enable_mappings = 'HUMAN'


" ===
" === fzf
" ===
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
noremap <silent> <c-p> :Files<CR>
noremap <silent> <C-h> :History<CR>

" ===
" === nerdcommenter
" ===
Plug 'preservim/nerdcommenter'
" Mapping
" <leader>cc:Comment out the current line or text selected in visual mode.
" <leader>cu:Uncomments the selected line(s).
" <leader>ci:Toggles the comment state of the selected line(s) individually.
" <leader>cs:Comments out the selected lines with a pretty block formatted layout.
"
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

call plug#end()
