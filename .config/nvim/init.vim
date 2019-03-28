" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc
call plug#begin('~/.vim/plugged')

"" general tools
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ntpeters/vim-better-whitespace'

"" clojure
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'

"" vim-iced stuff (clojure)
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'junegunn/fzf' " required for vim iced and useful for other stuff as well

" window manager for vim
Plug 'paroxayte/vwm.vim'

" seamless navigation between nvim and tmux
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

let mapleader = ","

"" vim iced
set hidden
let g:iced_enable_default_key_mappings = v:true

"" NERDTREE
""map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

"" nerdcommenter recommendation
filetype plugin on

"" better whitespace
nnoremap <leader>s :StripWhitespace<CR>

"" NVIM Window Manager
let g:vwm#layouts = [
      \  {
      \    'name': 'test',
      \    'bot':
      \    {
      \      'init': ['call termopen("fish", {"detach": 0})'],
      \      'sz': 12,
      \      'left':
      \      {
      \        'init': ['call termopen("fish", {"detach": 0})'],
      \      },
      \      'right':
      \      {
      \        'init': ['call termopen("fish", {"detach": 0})'],
      \      }
      \    }
      \  }
      \]
