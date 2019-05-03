"" VIM ICED
set hidden
let g:iced_enable_default_key_mappings = v:true

"" RAINBOW PARENTHESES

augroup rainbow_lisp
	autocmd!
	autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
