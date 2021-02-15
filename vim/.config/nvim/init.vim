" general
set nocompatible
set encoding=utf-8

" init
set runtimepath+=~/.local/share/nvim

if empty(glob('~/.local/share/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

" syntax
syntax enable
filetype indent plugin on

" behavior
set hidden
set noswapfile

set ignorecase
set smartcase
set infercase

set hlsearch
set incsearch

set backspace=indent,eol,start

set clipboard=unnamed,unnamedplus

set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

set wrap
set linebreak
set autoindent
set breakindent

" interface
set noruler
set number
set mouse=a
set guicursor=
set laststatus=1
set shortmess=actI
set fillchars=vert:\|

" keybindings
tnoremap <esc> <c-\><c-n>
nnoremap <silent> <esc> :nohlsearch<cr>

" autocmds
autocmd TermOpen * set nonumber
autocmd BufNewFile,BufRead *Pkgfile set filetype=sh

" plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'turquoise-hexagon/fruity'
call plug#end()

colorscheme fruity
