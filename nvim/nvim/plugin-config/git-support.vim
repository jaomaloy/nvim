" Fugitive
nnoremap <leader>gs :vert G<CR>
nnoremap <leader>gd :vert Gdiff<CR>
nnoremap <leader>gm :vert Gdiffsplit!<CR>
nnoremap <leader>gf :diffget //2 \| diffupdate<CR>
nnoremap <leader>gj :diffget //3 \| diffupdate<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gl :vert Git log<CR>
nnoremap <leader>gb :Git blame<CR>

" Git gutter
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

let g:gitgutter_sign_added              = '▐'
let g:gitgutter_sign_modified           = '▐'
let g:gitgutter_sign_removed            = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed   = ''

let g:gitgutter_enabled = 1

highlight GitGutterAdd    guifg=#98c379 ctermfg=2
highlight GitGutterChange guifg=#61afef ctermfg=3
highlight GitGutterDelete guifg=#e06c75 ctermfg=1
