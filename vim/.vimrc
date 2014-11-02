" Colors and syntax highlighting
syntax on
set background=dark
colorscheme slate

" Vundle vim plugin manager
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'altercation/vim-colors-solarized'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'bling/vim-airline'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

call vundle#end()
filetype plugin indent on

"Turn off annoying bell
set noerrorbells visualbell t_vb=
" Turn on line numbers
set number
" Turn off line wrapping
set nowrap
" Indentation settings
set autoindent
set copyindent
autocmd FileType * set tabstop=4 | set shiftwidth=4 | set softtabstop=4
autocmd FileType html set tabstop=2 | set shiftwidth=2 | set softtabstop=2
set expandtab
" Text formating
set textwidth=80
set colorcolumn=82
set wrapscan
" Search lower and upper case
set incsearch
set infercase
" Vim command completion
set wildmode=longest,list,full
set wildmenu
" Set encoding and terminal color support
set encoding=utf-8
set laststatus=2
set t_Co=256

" Change leader key to , (default is \)
let mapleader = ","

" Show tabs and trailing spaces, toggle with F4
map <F6> :set list!<CR>
set list listchars=tab:»-,nbsp:·,eol:¶,trail:§

" Toggle spell check with F5
map <F5> :setlocal spell! spelllang=en_us<CR>

" Remove all spaces at eol
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Options for vim indent guides plugin
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1

" Options for Vim airline statusline
let g:airline_powerline_fonts = 1
