execute pathogen#infect()
filetype plugin indent on

set nocompatible
filetype off

set noswapfile
set clipboard=unnamedplus

inoremap jk <ESC>
let mapleader=","

syntax on
set encoding=utf-8

set number
set nowrap
"" Whitespace
set tabstop=2 
set shiftwidth=2 " a tab is two spaces
set expandtab  " use spaces, not tabs (optional)
set backspace=indent,eol,start " backspace through everythin in insert mode

"" Searching
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive
set smartcase " searches become case sensitive when they contain at least one capital

"" Russian letters as commands
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

colorscheme monokai 
