let g:coc_global_extensions = [
    \ 'coc-vimlsp',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-tsserver',
    \]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
    let g:coc_global_extensions += ['coc-prettier']
endif
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
    let g:coc_global_extensions += ['coc-eslint']
endif

nmap <silent> gh :call CocAction('doHover')<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

" Show diagnostics on prolonged cursor focus
" function! ShowDocIfNoDiagnostic(timer_id)
"     if (coc#util#has_float() == 0)
"         silent call CocActionAsync('doHover')
"     endif
" endfunction

" function! s:show_hover_doc()
"     call timer_start(3000, 'ShowDocIfNoDiagnostic')
" endfunction

" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()
