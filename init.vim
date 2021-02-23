set relativenumber
set nu
set nohlsearch
set noerrorbells
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set updatetime=50

call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
call plug#end()

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif


let mapleader = " "
