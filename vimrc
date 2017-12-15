" dependencies
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()
let g:neocomplete#enable_at_startup = 1

" global ui options
inoremap jj <ESC>
set hlsearch
set number
set ruler
set mouse=a
set ttymouse=sgr
set statusline+=%F
set laststatus=2

" filetypes
filetype plugin indent on
syntax on

" syntax
let g:flake8_cmd="flake8"
let g:syntastic_javascript_checkers = ['eslint']

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 40

command Yankpath let @" = expand("%")

" ctrlp options
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore='\v(htmlcov|node_modules|coverage)$'
" greplace
"
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" https://superuser.com/questions/604102/vim-open-files-containing-a-specific-string-in-new-tabs
com! -nargs=+ TabGrep call s:TabGrep(<q-args>)

function! s:TabGrep(pattern)
    let savelz=&lz
    let savlast=@#
    let savfile=@%
    let hash={}
    let files=[]
    sil! redir => result
    exec 'sil! grep ' . a:pattern . ' -r .'
    sil! redir end
    for line in split(result, '\n')
        if (match(line, ':\d\+:') > 0)
            let filen=substitute(line, ':.*', '', '')
            if (!has_key(hash,filen))
                let hash[filen] = 1
                let files += [ filen ]
            endif
        endif
    endfor
    for filen in files
        exec 'sil! tabedit ' . filen
        1
        sil! call search(a:pattern)
    endfor
    exec 'sil! tabp ' . len(files)
    exec 'sil! edit ' . savlast
    exec 'sil! edit ' . savfile
    let &lz=savelz
endfunction
