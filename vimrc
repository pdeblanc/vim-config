" dependencies
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()

" global ui options
inoremap jj <ESC>
set hlsearch
set number
set ruler
set mouse=nicr

" syntax rules
syntax on
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set colorcolumn=120

" flake8
let g:flake8_cmd="flake8"
