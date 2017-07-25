" dependencies
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()

" global ui options
inoremap jj <ESC>
set number
set ruler

" syntax rules
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
