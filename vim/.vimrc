" general
set nocompatible
set nomodeline
set encoding=utf-8

" syntax
filetype indent plugin on
syntax enable

" swap & sessions
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

" tab indent
set noexpandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" indent
set autoindent
set wrap
set linebreak
set breakindent

" fix posix syntax
let g:is_posix=1

" ui
set noruler
set nonumber
set shortmess=actI
colorscheme cherry
