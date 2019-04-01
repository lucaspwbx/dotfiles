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
Plug 'clojure-vim/acid.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Olical/conjure', { 'tag': 'v0.6.1', 'do': 'make compile', 'for': 'clojure', 'on': 'ConjureAdd'  }

"" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"" vim-iced stuff (clojure)
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'junegunn/fzf' " required for vim iced and useful for other stuff as well

"" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"" elixir
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

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
nnoremap <C-b> :NERDTreeToggle<CR>

"" terminal - leave terminal insert mode
tnoremap <esc> <C-\><C-n><esc><cr>

nnoremap <leader>tp :split term://python3<CR> :startinsert<CR>
nnoremap <leader>tf :split term://fish<CR> :startinsert<CR>
""nnoremap <leader>tl :<c-u>exec v:count.'Tclear'<cr><Paste>

nnoremap <leader>n :split /home/lucas/toy-projects/notes/notes.md<CR>

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
    \ 'go': ['/home/lucas/go/bin/go-langserver'],
    \ 'rust': ['rls'],
    \ 'haskell': ['hie'],
    \ 'python': ['pyls'],
    \ 'elixir': ['/home/lucas/apps/elixir-ls/rel/language_server.sh'],
    \ 'tex': ['java','-jar', '/home/lucas/apps/texlab.jar']
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" vim elixir
let g:mix_format_on_save = 1

"" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'
