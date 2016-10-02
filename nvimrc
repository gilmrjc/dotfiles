"Load vim-plug
if empty(glob("~/.config/nvim/autoload/plug.vim"))
  execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin()

"Plugins
Plug 'junegunn/vim-plug'
"Markdown syntaxis
Plug 'tpope/vim-markdown', { 'for' : 'markdown' }
"HTML and CSS editing
Plug 'othree/html5.vim', { 'for': ['html', 'htmldjango'] }
Plug 'mattn/emmet-vim',  { 'for': ['css', 'html', 'htmldjango', 'scss'] }
Plug 'hail2u/vim-css3-syntax', { 'for': [ 'css', 'scss', 'html', 'htmldjango' ] }
Plug 'gko/vim-coloresque', { 'for': [ 'css', 'scss', 'html', 'htmldjango' ] }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
"IDE-like plugins
Plug 'valloric/youcompleteme', { 'do': 'python3 install.py --tern-completer --clang-completer'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'majutsushi/tagbar'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'justinmk/vim-sneak'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'editorconfig/editorconfig-vim'
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Python
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'ehamberg/vim-cute-python', { 'for': 'python' }
"CtrlP
Plug 'ctrlpvim/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
"Colorschemas
Plug 'evgenyzinoviev/vim-vendetta'
Plug 'dfxyz/CandyPaper.vim'
Plug 'thomd/vim-wasabi-colorscheme'
Plug 'vim-scripts/Perfect-Dark'
Plug 'tomsik68/vim-crystallite'
Plug 'blindFS/flattr.vim'

call plug#end()

filetype plugin indent on

"define colorscheme
colorscheme vendetta
hi Normal ctermbg=none

"Use pymatcher for CtrlP
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

"Editorconfig exclude fugitive buffers
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"YCM options
let g:ycm_complete_in_strings = 0
let g:ycm_autoclose_preview_window_after_completion = 1

"better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<right>"
let g:UltiSnipsJumpForwardTrigger = "<right>"
let g:UltiSnipsJumpBackwardTrigger = "<left>"

set cursorline
set lazyredraw
"powerline options
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long', 'mixed-indent-file' ]
let g:airline_theme = 'wombat'

"IndentLine options
let g:indentLine_setConceal = 0
let g:indentLine_indentLevel = 3

"NERDTree options
map <F4> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

"Show hints
set listchars=tab:▸\ ,trail:·,extends:>,precedes:<,nbsp:·
if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
    set listchars=tab:⇥\ ,trail:␣,extends:⇉,precedes:⇇,nbsp:⚭
    set fillchars=vert:╎,fold:·
endif
set list

"IDE-like settings
set ruler
set number
set relativenumber

set autoindent
set copyindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set smarttab
set expandtab
set shiftround

set nowrap
set showmatch
set autoread
set showcmd

set hlsearch
set smartcase
set incsearch

set backspace=indent,eol,start
set hidden

set foldlevelstart=5
set foldnestmax=10
set foldmethod=syntax

set scrolloff=4
set sidescrolloff=2
set sidescroll=1

set title

set nobackup

let g:NumberToggleTrigger="<F2>"
nmap <F3> :GitGutterLineHighlightsToggle<CR>
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1

autocmd FileType html,htmldjango,css,scss :EmmetInstall
let g:user_emmet_leader_key="<C-e>"

"Remap leader
let mapleader=","

"Vim keyboard navigation only
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nmap <silent> ,/ :nohlsearch<CR>

"sudo write
cmap w!! w !sudo tee % >/dev/null

"Format this file
autocmd BufRead nvim set filetype=vim

"""Remap CAPS LOCK to ESC
autocmd VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
autocmd VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

"ESC from terminal mode
:tnoremap <ESC> <C-\><C-n>

"set conceal to display text in insert mode
set concealcursor=nc
set conceallevel=2

"Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>y  "+yy
"Copy to middle button
vnoremap  <leader>Y  "*y
nnoremap  <leader>Y  "*yy

"Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
"Paste from middle button
nnoremap <leader><leader>p "*p
nnoremap <leader><leader>P "*P

"Autoformat tables
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

augroup configgroup
    autocmd!
    autocmd FileType html setlocal tabstop=2
    autocmd FileType html setlocal shiftwidth=2
    autocmd FileType html setlocal softtabstop=2
    autocmd FileType  setlocal tabstop=2
    autocmd FileType  setlocal shiftwidth=2
    autocmd FileType c setlocal softtabstop=2
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType python setlocal textwidth=80
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
augroup END
