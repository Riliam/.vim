execute pathogen#infect()
" (pl)ugin (up)date
nnoremap plup :!cd ~/.vim && git submodule sync<cr>
filetype plugin indent on

set nocompatible
filetype off

set noswapfile
set clipboard=unnamedplus

let mapleader = ","
let maplocalleader = "\\"

inoremap jk <ESC>


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
let g:syntastic_python_python_exec = '/usr/bin/python'

" Surround
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

" Shortcuts for Django translate in templates
" t(r)anslate (l)ine under cursor
nnoremap <leader>rl :s/"/\\"/g<CR>A" %}<esc>I{% trans "
" t(r)anslate (w)ord under cursor
nnoremap <leader>rw bi{% trans "<esc>ea" %}
" t(r)anslate input
nnoremap <leader>rr a{% trans "" %}<esc>F"i
" t(r)anslate (s)election
vnoremap <leader>rs <esc>`>a" %}<esc>`<i{% trans "<esc>
" t(r)anslate (b)lock selection
vnoremap <leader>rb >><esc>`>o{% endblocktrans %}<esc><<`<O{% blocktrans %}<esc>F%


" edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
" reload .vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

" insert empty line after the current line
nnoremap <leader>o A<CR><ESC>
" insert empty line before the current line
nnoremap <leader>n I<CR><ESC>k

" move line down
nnoremap <c-j> ddp
" move line up
nnoremap <c-k> ddkP

" word to upper
nnoremap <leader>uu viwgu
" word to lower
nnoremap <leader>UU viwgU

" move to the end of the current line
nnoremap L A<esc> " move to the start of the current line
" move to the start of the current line
nnoremap H I<esc>
