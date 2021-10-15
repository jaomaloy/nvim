
if (has('nvim'))
    let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
    set termguicolors
endif

let g:onedark_style = 'warmer'
let g:onedark_transparent_background = v:true
colorscheme onedark
