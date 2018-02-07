
set nocompatible
syntax on
filetype off
filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kevinw/pyflakes-vim'

set is
set ic
set number
set smartcase
nnoremap / /\v
vnoremap / /\v
set hidden
set encoding=utf-8
set bg=dark
set scrolloff=3

autocmd InsertEnter * set cursorline cursorcolumn
autocmd InsertLeave * set nocursorline nocursorcolumn
highlight cursorline cterm=none ctermfg=7 ctermbg=4
highlight cursorcolumn cterm=none ctermfg=7 ctermbg=4
autocmd BufNewFile,BufRead *.py,*.tmpl call CodingSet0()
autocmd BufNewFile,BufRead *.php call CodingSet0()
autocmd BufNewFile,BufRead *.sql call CodingSet0()
autocmd BufNewFile,BufRead *.md call CodingSet0()
autocmd BufNewFile,BufRead OKUBENI,README,*.txt call CodingSet1()
autocmd BufNewFile,BufRead *.html,*.css,*.js call CodingSet2()

function CodingSet0()
        setlocal
        \ textwidth=79
        \ tabstop=4
        \ shiftwidth=4
        \ softtabstop=4
        \ expandtab
        \ autoindent
        \ list
        \ listchars=tab:»·,trail:·
endfunction

function CodingSet1()
        setlocal
        \ textwidth=79
        \ tabstop=4
        \ shiftwidth=4
        \ softtabstop=4
        \ expandtab
        \ autoindent
        \ list
        \ listchars=tab:»·,trail:·
        \ filetype=txt
        \ syntax=conf
endfunction

function CodingSet2()
        setlocal
        \ textwidth=79
        \ tabstop=4
        \ autoindent
endfunction

