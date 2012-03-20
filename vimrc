set nocompatible
set backspace=indent,eol,start
let python_highlight_all=1
syntax on
filetype plugin indent on
set autoindent
set hlsearch
set incsearch

set foldmethod=indent
set foldlevel=99
set number
nnoremap <F3> :set nonumber!<CR>:set foldcolumn=0<CR>

set colorcolumn=80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType python map <f2> :w\|!python %<cr>

set t_Co=256
colorscheme skittles_berry
