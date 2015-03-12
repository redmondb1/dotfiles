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
" :Fw show lines containing word under cursor
Bundle 'embear/vim-foldsearch'
" powerline replacement
Bundle 'bling/vim-airline'
" shows what function you're in on status line, apt-get ctags
Bundle 'majutsushi/tagbar'
" shows git diff signs in gutter
Bundle 'airblade/vim-gitgutter'
" lots of git integration
Bundle 'tpope/vim-fugitive'
" darker color scheme
Bundle 'nanotech/jellybeans.vim'
call vundle#end()
filetype plugin indent on

syntax on
set laststatus=2
let g:syntastic_aggregate_error=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

let g:gitgutter_realtime=1
set textwidth=72
set formatoptions+=t

set wrapmargin=0
set expandtab
set tabstop=4
set autoindent
set shiftwidth=4
