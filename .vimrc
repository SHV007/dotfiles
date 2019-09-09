" Gotta be first
set nocompatible
filetype off

" plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'


call vundle#end()
filetype plugin indent on

"--- General settings ---
set number
set showcmd
syntax on
colorscheme murphy
set clipboard=unnamed

" tabs and indentation
set ts=4
set autoindent

" python highlight
let python_highlight_all = 1

" folding 
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" UTF-8
set encoding=utf-8

" open nerdtree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

" running python inside vim (F9)
autocmd FileType python nnoremap <buffer> <F9> :update<bar>!python %<CR>

