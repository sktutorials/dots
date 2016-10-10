set nocompatible
filetype plugin indent on
syntax enable

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'PeterRincker/vim-narrow'
Plug 'Raimondi/delimitMate'
Plug 'FSwitch'
call plug#end()

set backspace=2
set laststatus=1
set shiftwidth=4
set tabstop=4
set modeline
set modelines=5
set nonumber expandtab smarttab autoindent smartindent hidden nowrap nobackup
set path=$PWD/**
set path+=/usr/include/**
colorscheme default


set foldtext=MyFoldText()
set fillchars=fold:\ 
function MyFoldText()
    return "-- ..."
endfunction
hi Folded ctermbg=258 ctermfg=4

"Move windows with C-Direction
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
let mapleader = ","

nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>a :FSHere<CR>
