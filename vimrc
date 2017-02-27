set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo"

Plugin 'Valloric/YouCompleteMe'
Plugin 'crusoexia/vim-monokai'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=700
filetype plugin on
filetype indent on 
set autoread
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=10
set so=7
set wildmenu
set ruler
set cmdheight=2
set hid
set ignorecase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set t_Co=256
set background=dark
colorscheme monokai
set encoding=utf8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-c> <CR><Esc>0
map j gj
map k gk
map <space> /
map <c-space> ?
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
set viminfo^=%

