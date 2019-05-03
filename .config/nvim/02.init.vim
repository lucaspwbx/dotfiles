let mapleader = ","

filetype plugin indent on
set number
set autoindent
set mouse=a

" yaml
"
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
