execute pathogen#infect()
filetype plugin indent on

set nocompatible
filetype off

set noswapfile
set clipboard=unnamedplus

let mapleader=","

inoremap jk <ESC>
nnoremap <c-o> A<CR><ESC>
nnoremap <c-O> i<CR><ESC>
nnoremap <c-j> ddp
nnoremap <c-k> ddkP

syntax on
set encoding=utf-8

set number
set relativenumber
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
set tags=~/.tags.ctags

"" Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/home/riliam/projects/asyncio-hw/env/bin/python'
