" general
set nocompatible
set encoding=utf-8

" syntax
filetype indent plugin on
syntax enable

" swap and sessions
set hidden
set noswapfile

" case insensitive search
set ignorecase
set smartcase
set infercase

" better search
set hlsearch
set incsearch

" sane backspace
set backspace=indent,eol,start

" tab
set expandtab
set shiftwidth=4
set tabstop=4

" indent
set autoindent
set wrap
set linebreak
set breakindent

" fix posix syntax
let g:is_posix=1

" interface
set noruler
set nonumber
set vb t_vb=
set shortmess=actI
colorscheme cherry
