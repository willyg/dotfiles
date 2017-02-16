"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()

set nocompatible
set autoindent
set ignorecase
set hlsearch
set incsearch
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
map <F2> :NERDTreeToggle<CR>
syntax enable
filetype on
filetype indent on
filetype plugin on
autocmd filetype javascript set sw=2 ts=2 expandtab
autocmd filetype html set sw=2 ts=2 expandtab
autocmd filetype css set sw=2 ts=2 expandtab
