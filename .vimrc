set t_Co=256
colorscheme skittles_berry

set backspace=indent,eol,start
let python_highlight_all=1
set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set smarttab

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive
set smartcase                   " ... unless they contain at least one capital letter

set colorcolumn=80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType python map <f2> :w\|!python %<cr>

set number
nnoremap <F3> :set nonumber!<CR>:set foldcolumn=0<CR>
set foldmethod=indent
set foldlevel=99
