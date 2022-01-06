" Plugins
call plug#begin('~/.vim/plugged')


Plug 'https://github.com/vim-airline/vim-airline.git' " Status bar

Plug 'https://github.com/preservim/nerdtree.git' " Fancy file system with <c-n>

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc

Plug 'https://github.com/ctrlpvim/ctrlp.vim.git' " Fuzzy search for old vim <c-p>

Plug 'airblade/vim-gitgutter' "small git integration (works with old vim)

Plug 'https://github.com/rking/ag.vim.git' "Project wide search

Plug 'https://github.com/jiangmiao/auto-pairs.git' "Automatic pair


" Plug 'junegunn/fzf' , { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim' " Fuzzy search
" Plug 'https://github.com/tpope/vim-fugitive.git' "Big git integration 
"
" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --tern-completer' }
" Plug 'ycm-core/YouCompleteMe'

Plug 'sainnhe/gruvbox-material' "cololscheme

call plug#end()

colorscheme gruvbox-material
set background =dark

let mapleader=" "

set path+=**

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

set tabstop=4 softtabstop=0
set expandtab
set shiftwidth=4
set smartindent

set number
set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 

set updatetime=100

" Remaps

map <SPACE> <Nop>

let g:clang_library_path='/usr/lib64/libclang.so.3.8'

" fuzzy find shortcut
"nnoremap <C-p> :Files<cr>

" nerd tree toggle
nnoremap <C-n> :NERDTreeToggle <cr>

nnoremap <leader>f  :Ag 
nnoremap <C-p> :CtrlP <cr>

inoremap jk <Esc>

nnoremap <leader>e :Explore<cr>

nnoremap <leader>t :!

nnoremap <leader>w :up<cr>

nnoremap <leader>v :vs<cr>
nnoremap <leader>h :sp<cr>

nnoremap <leader>q :q<cr>

nnoremap <leader>\ :e $MYVIMRC<cr>

nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j

nnoremap <leader>r :reg<cr>

nnoremap <leader><leader>c :!gcc %<cr>

nnoremap <leader><leader>m :make<cr>

nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-j> <c-w><c-j>

nnoremap Q qq

nnoremap Y y$

nnoremap n nzz
nnoremap N Nzz

"Visual Remaps

vnoremap < <gv
vnoremap > >gv




if exists('g:loaded_qfsign')
    finish
endif
let g:loaded_qfsign=1

sign define QFErr texthl=QFErrMarker text=E
sign define QFWarn texthl=QFWarnMarker text=W
sign define QFInfo texthl=QFInfoMarker text=I

augroup qfsign
    autocmd!
    autocmd QuickFixCmdPre [^l]* call s:clear_signs()
    autocmd QuickFixCmdPost [^l]* call s:place_signs()
augroup END

nnoremap <Plug>(QfSignPlace) :silent call <SID>place_signs()<CR>
nnoremap <Plug>(QfSignClear) :silent call <SID>clear_signs()<CR>

let s:sign_count = 0

function! s:place_signs() abort
    let l:errors = getqflist()
    for l:error in l:errors
        if l:error.bufnr < 0
            continue
        endif
        let s:sign_count = s:sign_count + 1
        if l:error.type ==# 'E'
            let l:err_sign = 'sign place ' . s:sign_count
                        \ . ' line=' . l:error.lnum
                        \ . ' name=QFErr'
                        \ . ' buffer=' . l:error.bufnr
        elseif l:error.type ==# 'W'
            let l:err_sign = 'sign place ' . s:sign_count
                        \ . ' line=' . l:error.lnum
                        \ . ' name=QFWarn'
                        \ . ' buffer=' . l:error.bufnr
        else
            let l:err_sign = 'sign place ' . s:sign_count
                        \ . ' line=' . l:error.lnum
                        \ . ' name=QFInfo'
                        \ . ' buffer=' . l:error.bufnr
        endif
        silent! execute l:err_sign
    endfor
endfunction

function! s:clear_signs() abort
    while s:sign_count > 0
        execute 'sign unplace ' . s:sign_count
        let s:sign_count = s:sign_count - 1
    endwhile
    redraw!
endfunction
