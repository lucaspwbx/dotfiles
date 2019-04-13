call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

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
"Plug 'kassio/neoterm'
Plug 'janko-m/vim-test'

"" clojure
"Plug 'tpope/vim-fireplace'
"Plug 'venantius/vim-cljfmt'
"Plug 'vim-scripts/paredit.vim'
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'clojure-vim/acid.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Olical/conjure', { 'tag': 'v0.6.1', 'do': 'make compile', 'for': 'clojure', 'on': 'ConjureAdd'  }

""python
Plug 'tell-k/vim-autopep8'

"" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"" vim-iced stuff (clojure)
"Plug 'guns/vim-sexp',    {'for': 'clojure'}
"Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'junegunn/fzf' " required for vim iced and useful for other stuff as well

"" elixir
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

" window manager for vim
" Plug 'paroxayte/vwm.vim'

" seamless navigation between nvim and tmux
"Plug 'christoomey/vim-tmux-navigator'
call plug#end()

let mapleader = ","

filetype plugin indent on
syntax enable
set number

"" vim iced
"set hidden
"let g:iced_enable_default_key_mappings = v:true

"" NERDTREE
""map <C-n> :NERDTreeToggle<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

"" terminal - leave terminal insert mode
tnoremap <esc> <C-\><C-n><esc><cr>

nnoremap <leader>tp :split term://python3<CR> :startinsert<CR>
nnoremap <leader>tf :split term://fish<CR> :startinsert<CR>

nnoremap <leader>n :split /home/lucas/toy-projects/notes/notes.md<CR>
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"" vimtest
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

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

" vim elixir
let g:mix_format_on_save = 1

""" deoplete
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#keyword_patterns = {}
"let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

" mapping for fzf
nnoremap <C-p> :<C-u>FZF<CR>

" MARKDOWN

autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

""" RAINBOW PARENTHESES
"
"augroup rainbow_lisp
"	autocmd!
"	autocmd FileType lisp,clojure,scheme RainbowParentheses
"augroup END
"
"let g:rainbow#max_level = 16
"let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]


"let g:coc_global_extensions = ['coc-conjure']

" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }



" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" yaml
"
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
