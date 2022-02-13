function! ToggleList()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

" function! ToggleQuickFix()
"     if empty(filter(getwininfo(), 'v:val.quickfix'))
"         copen
"     else
"         cclose
"     endif
" endfunction

buf_set_keymap('n', '<C-q>', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
buf_set_keymap('n', '<C-l', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
