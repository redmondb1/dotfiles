set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" autocomplete, ctrl space to open
Bundle 'davidhalter/jedi-vim'
" Syntax check on write, apt-get pylint or flake8
Bundle 'scrooloose/syntastic'
Bundle 'sheerun/vim-polyglot'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'ldx/vim-indentfinder'
" :call VimuxRunCommand("pwd") and VimuxRunLastCommand() for tmux
Bundle 'vim-scripts/vimux'
" remove white space on save
Bundle 'gagoar/StripWhiteSpaces'
" Change statusline color with mode
Bundle 'vim-scripts/SmartusLine'
call vundle#end()
filetype plugin indent on

syntax on
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
let g:syntastic_aggregate_error=1
let g:syntastic_check_on_wq=0

set textwidth=72
set formatoptions+=t

set wrapmargin=0
set expandtab
set tabstop=4
set autoindent
set shiftwidth=4
