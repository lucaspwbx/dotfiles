call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace'
Plug 'junegunn/fzf'
Plug 'venantius/vim-cljfmt'
Plug 'vim-scripts/paredit.vim'
Plug 'junegunn/rainbow_parentheses.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'itchyny/vim-haskell-indent'
Plug 'nbouscal/vim-stylish-haskell'

Plug 'paroxayte/vwm.vim'

call plug#end()
"" minpac stuff
"packadd minpac
"call minpac#init()
"call minpac#add('tpope/vim-unimpaired')
"call minpac#add('tpope/vim-fireplace')
"call minpac#add('scrooloose/nerdtree')
"
"command! PackUpdate call minpac#update()
"command! PackClean call minpac#clean()
"
"" setting leader key
let mapleader = ","
"
"" basics
set nocompatible
filetype plugin indent on
syntax enable
colorscheme yin
set number
set relativenumber
set hidden
set shiftwidth=4 " for haskell
set term=screen-256color
"
"" some mappings for buffer stuff
nnoremap <leader>b :ls<CR>:buffer<Space>
nnoremap <leader>p :bprev<CR>
nnoremap <leader>n :bnext<CR>

" other mappings
nnoremap <leader>t :terminal<CR>

" mapping for fzf
nnoremap <C-p> :<C-u>FZF<CR>

" JAVASCRIPT

autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab

" MARKDOWN

autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" Automatically deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
"
"" OLD STUFF if you will to load plugins without minpac
"
"" Load all plugins now.
"" Plugins need to be added to runtimepath before helptags can be generated.
""packloadall
"" Load all of the helptags now, after plugins have been loaded.
"" All messages and errors will be ignored.
""silent! helptags ALL
""
""
"" CLOJURE
"
let g:iced_enable_default_key_mappings = v:true

"" RAINBOW PARENTHESES

augroup rainbow_lisp
	autocmd!
	autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

"" NERDTREE
map <C-n> :NERDTreeToggle<CR>

let g:vwm#layouts = [
      \  {
      \    'name': 'test',
      \    'bot':
      \    {
      \      'init': ['call termopen("zsh", {"detach": 0})'],
      \      'sz': 12,
      \      'left':
      \      {
      \        'init': ['call termopen("zsh", {"detach": 0})'],
      \      },
      \      'right':
      \      {
      \        'init': ['call termopen("zsh", {"detach": 0})'],
      \      }
      \    }
      \  }
      \]
