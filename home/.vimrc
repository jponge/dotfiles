""" General
set nocompatible
set nobackup

""" Pathogen
filetype off
call pathogen#infect()
syntax on
filetype plugin indent on

""" Indenting
set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab

""" Spelling
set spell

""" Menu
set wildmenu
set wildmode=list:longest,full

""" Editing visual aids
set number
set cursorline
set showmatch
set ruler

""" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

""" Files
set autoread
set encoding=utf-8
set fileencodings=utf-8
set textwidth=100
set nofoldenable

""" GUI
set guifont=Source\ Code\ Pro:h14
"set background=light
set background=dark
" colorscheme Tomorrow-Night-Blue
"colorscheme github
colorscheme smyck
set guioptions=egmrt

""" Nerd tree plugin
nmap @ :NERDTree<Return>
