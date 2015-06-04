"Install https://github.com/junegunn/vim-plug
call plug#begin('~/vimfiles/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
call plug#end()

set nocompatible
syntax on
set autoindent
set ignorecase
set hlsearch
set incsearch
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
map <F2> :NERDTreeToggle<CR>
filetype off
filetype indent on
filetype plugin on
autocmd filetype javascript set sw=2 ts=2 expandtab
autocmd filetype html set sw=2 ts=2 expandtab
autocmd filetype css set sw=2 ts=2 expandtab
set backspace=2
colorscheme solarized
set guifont=Consolas:h10
