" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'

"" following are required for vim-iced
Plug 'junegunn/fzf'
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}

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
