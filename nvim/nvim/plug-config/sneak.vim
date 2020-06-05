let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor
" sneak is back to default behavior
let g:sneak#s_next = 1

" Change the colors
highlight Sneak guifg=white guibg=grey ctermfg=white ctermbg=DarkGrey
highlight SneakScope guifg=white guibg=Gray ctermfg=white ctermbg=Grey
