" dependencies
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()
let g:neocomplete#enable_at_startup = 1

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

" NERDTree
map <C-n> :NERDTreeToggle<CR>
