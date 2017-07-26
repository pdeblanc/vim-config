" dependencies
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()

" global ui options
inoremap jj <ESC>
set hlsearch
set number
set ruler
set mouse=nicr

" filetypes
filetype plugin indent on
syntax on

" flake8
let g:flake8_cmd="flake8"
