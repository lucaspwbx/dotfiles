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

"" better whitespace
nnoremap <leader>s :StripWhitespace<CR>

"" general shortcuts
nnoremap <leader>q :q!<CR>
nnoremap <leader>s :w<CR>

" mapping for fzf
nnoremap <C-p> :<C-u>FZF<CR>

" MARKDOWN

autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
