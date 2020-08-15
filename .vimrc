"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"call plug#begin('~/vimfiles/plugged')
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-sensible'
call plug#end()

set nocompatible
set ignorecase
set shiftwidth=4
set tabstop=4
set expandtab
autocmd filetype javascript,html,css,yaml set shiftwidth=2 tabstop=2
autocmd filetype make set shiftwidth=4 tabstop=4 noexpandtab

map <F2> :NERDTreeToggle<CR>

set background=dark

"autocomplete
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap ` ``<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
