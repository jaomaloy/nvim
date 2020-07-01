" ============
" SNEAK CONFIG
" ============
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor
" sneak is back to default behavior
let g:sneak#s_next = 1

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=Cyan
highlight SneakScope guifg=red guibg=Yellow ctermfg=red ctermbg=Yellow

" ============
" QUICKSCOPE CONFIG
" ============
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline
let g:qs_max_chars=150
