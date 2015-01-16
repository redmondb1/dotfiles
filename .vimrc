set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/syntastic'
Bundle 'sheerun/vim-polyglot'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'ldx/vim-indentfinder' 
call vundle#end()
filetype plugin indent on 

syntax on
set laststatus=2
let g:syntastic_aggregate_error=1
let g:syntastic_check_on_wq=0

set textwidth=72
set formatoptions+=t

set wrapmargin=0
set expandtab
set tabstop=4
set autoindent
set shiftwidth=4
