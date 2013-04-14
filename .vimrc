syntax on
set background=dark
colorscheme slate

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'nathanaelkane/vim-indent-guides'

set number
set autoindent
set copyindent
set tabstop=4
set shiftwidth=4
set textwidth=80
set colorcolumn=82
set wrapscan
set incsearch
set infercase
set encoding=utf-8
set laststatus=2
set t_Co=256

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1

filetype plugin indent on
