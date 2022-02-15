" ====================================
"            GIT SUPPORT
" ====================================
" Fugitive
nnoremap <leader>g :vert G<CR>
nnoremap <leader>gd :vert Gdiff<CR>
nnoremap <leader>gm :vert Gdiffsplit!<CR>
nnoremap <leader>gf :diffget //2 \| diffupdate<CR>
nnoremap <leader>gj :diffget //3 \| diffupdate<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gl :vert Git log<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gs :Git show HEAD~

" ====================================
"            NAVIGATION
" ====================================
" SNEAK CONFIG
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor
" sneak is back to default behavior
let g:sneak#s_next = 1

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=Cyan
highlight SneakScope guifg=red guibg=Yellow ctermfg=red ctermbg=Yellow

" QUICKSCOPE CONFIG
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline
let g:qs_max_chars=150

" ====================================
"            VIMWIKI
" ====================================
let g:vimwiki_list = [{'path': '~/Documents/vwiki/docs', 'syntax': 'markdown', 'ext': '.md'},
                    \ {'path': '~/Documents/vwiki/work', 'syntax': 'markdown', 'ext': '.md'},
                    \ {'path': '~/Documents/vwiki/personal', 'syntax': 'markdown', 'ext': '.md'}]

" Vimwiki has a feature that will treat every file with
" configured file-extension as a wiki. Enable with:
let g:vimwiki_global_ext = 1

nnoremap ]l <Plug>VimwikiNextLink
nnoremap [l <Plug>VimwikiPrevLink

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END
" ====================================
"            MARKDOWN
" ====================================
" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
" let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
" let g:mkdp_open_ip = ''

let g:mkdp_page_title = '${name}'
" let g:mkdp_browser = 'qutebrowser'

" ====================================
"            INDENTLINE
" ====================================
nnoremap <F10> :IndentLinesToggle<CR>

" ====================================
"            HARPOON
" ====================================
" --  Terminal commands
" --  ueoa is first through fourth finger left hand home row.
" --  This just means I can crush, with opposite hand, the 4 terminal positions

" nnoremap <leader>m :lua require("harpoon.mark").add_file()<CR>
" nnoremap <leader>' :lua require("harpoon.ui").toggle_quick_menu()<CR>
" nnoremap <leader>tu :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

" nnoremap <C-h> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <C-j> :terminal<CR>
" nnoremap <C-k> :lua require("harpoon.ui").nav_file(3)<CR>
" nnoremap <C-l> :lua require("harpoon.ui").nav_file(4)<CR>
" nnoremap <leader>tj :lua require("harpoon.term").gotoTerminal(1)<CR>
" nnoremap <leader>tk :lua require("harpoon.term").gotoTerminal(2)<CR>
" nnoremap <leader>cj :lua require("harpoon.term").sendCommand(1, 1)<CR>
" nnoremap <leader>ck :lua require("harpoon.term").sendCommand(1,2)<CR>
