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
Plug 'othree/html5.vim', { 'for': ['html', 'htmldjango', 'jinja'] }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja'}
Plug 'mattn/emmet-vim',  { 'for': ['css', 'html', 'htmldjango', 'jinja', 'scss'] }
Plug 'hail2u/vim-css3-syntax', { 'for': [ 'css', 'scss', 'html', 'htmldjango', 'jinja' ] }
Plug 'gko/vim-coloresque', { 'for': [ 'css', 'scss', 'html', 'htmldjango', 'jinja' ] }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'vim-scripts/closetag.vim', { 'for': ['html', 'htmldjango', 'jinja'] }
Plug 'elzr/vim-json', { 'for': 'json' }
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
Plug 'terryma/vim-smooth-scroll'
Plug 'matze/vim-move'
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
let g:UltiSnipsExpandTrigger = "<C-s>"
let g:UltiSnipsJumpForwardTrigger = "<right>"
let g:UltiSnipsJumpBackwardTrigger = "<left>"

set cursorline
"powerline options
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long', 'mixed-indent-file' ]
let g:airline_theme = 'wombat'

"IndentLine options
let g:indentLine_setConceal = 0
let g:indentLine_indentLevel = 3

"NERDTree options
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

"Show hints
set listchars=tab:▸\ ,trail:·,extends:>,precedes:<,nbsp:·
if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
    set listchars=tab:⇥\ ,trail:␣,extends:⇉,precedes:⇇,nbsp:⚭
    set fillchars=vert:╎,fold:·
endif
set list

" IDE-like settings
set ruler
set number
set relativenumber

" Tab and indent settings
set autoindent
set copyindent
set smartindent
set breakindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set shiftround
nnoremap <leader>= mzgg=G`zz

" Editor tweaks
set title
set nowrap
set autoread
set showcmd
set backspace=indent,eol,start
set hidden
set virtualedit=onemore
set splitbelow
set splitright
nnoremap <leader>m :mksession!<CR>

" Buffer helpers
for i in range(1, 99)
    execute printf('nnoremap <Leader>%d :%db<CR>', i, i)
endfor
for i in range(1, 99)
    execute printf('nnoremap <Leader>d%d :Bdelete %d<CR>', i, i)
endfor

" Searching
set hlsearch
set smartcase
set showmatch
set incsearch
set gdefault
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Folding
set foldlevelstart=5
set foldnestmax=10
set foldmethod=syntax

" Reselect after indent
vnoremap > >gv
vnoremap < <gv

" One tap indent
nnoremap <A-<> <<
nnoremap <A->> >>

" Jump to the end of the yanked, put'ed text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Select all
noremap <Leader>a ggVG

" Do the splits
noremap <Leader>s :split<CR>
noremap <Leader>h :split<CR>
noremap <Leader>v :vsplit<CR>

" Redraw the screen
set scrolloff=4
set sidescrolloff=2
set sidescroll=1

set nobackup

" Function keys
let g:NumberToggleTrigger="<F2>"
nmap <F3> :GitGutterLineHighlightsToggle<CR>
map <F4> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1

" Emmet configuration
autocmd FileType html,htmldjango,jinja2,css,scss :EmmetInstall
let g:user_emmet_leader_key="<C-e>"

" Auto-pairing
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
imap <C-l> <Plug>delimitMateJumpMany

" Fugitive shortcuts
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>

" Remap leader
let mapleader=","

" Vim keyboard navigation only
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Smooth scrolling
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 120, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 120, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 120, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 120, 4)<CR>

" Easy window navigation
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

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

augroup TabSettings
    autocmd!
    autocmd FileType html setlocal tabstop=2
    autocmd FileType html setlocal shiftwidth=2
    autocmd FileType html setlocal softtabstop=2
    autocmd FileType css setlocal tabstop=2
    autocmd FileType css setlocal shiftwidth=2
    autocmd FileType css setlocal softtabstop=2
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
augroup END


augroup configgroup
    autocmd!
    autocmd FileType python setlocal textwidth=80
    autocmd FileType html nnoremap <expr> j v:count ? 'j' : 'gj'
    autocmd FileType html nnoremap <expr> k v:count ? 'k' : 'gk'
    autocmd FileType html vnoremap <expr> j v:count ? 'j' : 'gj'
    autocmd FileType html vnoremap <expr> k v:count ? 'k' : 'gk'
    autocmd BufEnter,BufRead *.html setlocal wrap
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
augroup END
