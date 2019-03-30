" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc
call plug#begin('~/.vim/plugged')

"" general tools
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kassio/neoterm'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

"" clojure
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'

"" vim-iced stuff (clojure)
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'junegunn/fzf' " required for vim iced and useful for other stuff as well

"" acid
Plug 'clojure-vim/acid.nvim', { 'do': ':UpdateRemotePlugins' }

"" conjure
Plug 'Olical/conjure', { 'tag': 'v0.6.1', 'do': 'make compile', 'for': 'clojure', 'on': 'ConjureAdd'  }

"" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"" elixir
Plug 'slashmili/alchemist.vim'

" window manager for vim
Plug 'paroxayte/vwm.vim'

" seamless navigation between nvim and tmux
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

let mapleader = ","

"" deoplete
let g:deoplete#enable_at_startup = 1

"" vim iced
set hidden
let g:iced_enable_default_key_mappings = v:true

"" NERDTREE
""map <C-n> :NERDTreeToggle<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

"" terminal - leave terminal insert mode
tnoremap <esc> <C-\><C-n><esc><cr>

"" nerdcommenter recommendation
filetype plugin on

"" better whitespace
nnoremap <leader>s :StripWhitespace<CR>

"" general shortcuts
nnoremap <leader>q :q!<CR>
nnoremap <leader>s :w<CR>

""
set autoindent
set mouse=a

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


" LANGUAGE SERVER STUFF
"
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'clojure': ['/home/lucas/apps/clojure-lsp'],
    \ 'go': ['/home/lucas/go/bin/go-langserver']
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
