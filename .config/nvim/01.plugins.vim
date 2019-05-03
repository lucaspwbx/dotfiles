call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" Org mode
Plug 'jceb/vim-orgmode'

" theme
Plug 'mhartington/oceanic-next'

" vimtex
"Plug 'lervag/vimtex'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

"" javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

"" general tools
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kassio/neoterm'
Plug 'janko-m/vim-test'

"" clojure
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'
Plug 'vim-scripts/paredit.vim'
Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'clojure-vim/acid.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Olical/conjure', { 'tag': 'v0.6.1', 'do': 'make compile', 'for': 'clojure', 'on': 'ConjureAdd'  }

""python
Plug 'tell-k/vim-autopep8'

""denite
Plug 'Shougo/denite.nvim'

"" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"" vim-iced stuff (clojure)
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'junegunn/fzf' " required for vim iced and useful for other stuff as well

"" elixir
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

" seamless navigation between nvim and tmux
"Plug 'christoomey/vim-tmux-navigator'
call plug#end()
