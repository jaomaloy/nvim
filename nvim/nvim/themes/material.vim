
if (has('nvim'))
    let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
    set termguicolors
endif

let g:material_theme_style = 'darker'
let g:material_terminal_italics = 1
colorscheme material

highlight Normal guifg=#ffffff guibg=NONE ctermfg=white ctermbg=black
" highlight Search guifg=#ffffff guibg=#313131 ctermfg=NONE ctermbg=DarkGrey
" highlight CursorLine guibg=#242424 ctermbg=DarkGrey
highlight SignColumn guibg=NONE ctermbg=black
