"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"call plug#begin('~/vimfiles/plugged')
call plug#begin('~/vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp'
Plug 'mattn/emmet-vim'
call plug#end()

set nocompatible
set autoindent
set ignorecase
set hlsearch
set incsearch
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
syntax enable
filetype on
filetype indent on
filetype plugin on
set backspace=2
autocmd filetype javascript set sw=2 ts=2 expandtab
autocmd filetype html set sw=2 ts=2 expandtab
autocmd filetype css set sw=2 ts=2 expandtab

map <F2> :NERDTreeToggle<CR>
let g:user_emmet_expandabbr_key='<C-E>'
colorscheme solarized
set guifont=Consolas:h10
