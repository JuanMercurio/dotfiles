call plug#begin('~/.vim/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'sainnhe/gruvbox-material' "cololscheme

call plug#end()

colorscheme gruvbox-material
set background =dark

let mapleader=" "

set nohlsearch 
set incsearch 
set ignorecase 
set smartcase 
set hidden 
set noerrorbells 
set nowrap 

syntax on

set mouse=a

set nocompatible

set noswapfile
set nobackup

set scrolloff=5

set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent

set number
set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 

" Remaps

map <SPACE> <Nop>

inoremap jk <Esc>

nnoremap <leader>e :Explore<cr>

nnoremap <leader>t :!

nnoremap <leader>w :up<cr>

nnoremap <leader>q :q<cr>

nnoremap <leader>\ :e $MYVIMRC<cr>

nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j

nnoremap <leader>r :reg<cr>

nnoremap <leader><leader>c :!gcc %<cr>

nnoremap <leader><leader>m :make<cr>

nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

nnoremap Q qq

nnoremap Y y$

nnoremap n nzz
nnoremap N Nzz

"Visual Remaps

vnoremap < <gv
vnoremap > >gv





