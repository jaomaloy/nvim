" ====================================
"              LIGHTLINE
" ====================================
set showtabline=2
let g:lightline#bufferline#filename_modifier=':t'
let g:lightline = {
            \ 'colorscheme': 'material_vim',
            \ 'tabline': {
            \   'left': [ ['buffers'] ],
            \   'right': [ ['close'] ]
            \ },
            \ 'active': {
            \   'left': [ ['mode', 'paste'] ,
            \             [ 'gitbranch', 'filename', 'modified'] ],
            \   'right': [ [ 'lineinfo' ],
            \              [ 'percent' ],
            \              [ 'fileformat', 'fileencoding', 'filetype'] ]
            \ },
            \ 'component_function': {
            \  'gitbranch': 'FugitiveHead',
            \  'fileformat': 'LightlineFileformat',
            \  'filetype': 'LightlineFiletype',
            \ },
            \ 'component_expand': {
            \   'buffers': 'lightline#bufferline#buffers'
            \ },
            \ 'component_type': {
            \   'buffers': 'tabsel'
            \ },
            \}

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

" ====================================
"              COC
" ====================================
" Do not start coc at startup, let user choose to start coc
let g:coc_start_at_startup = v:false

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
nmap <silent> <leader>gr <Plug>(coc-references)

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

" SNIPPETS
imap <C-l> <Plug>(coc-snippets-expand)

" ====================================
"              FZF
" ====================================
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit'  }

" Enable per-command history
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <leader>f :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

let g:fzf_tags_command = 'ctags -R'

" Border color
" let g:fzf_layout = { 'up':'~90%', 'window': {'width': 0.8, 'height': 0.8, 'yoffset': 0.5, 'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' }}

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND = 'fd --hidden --type f --exclude ".git"'

let g:fzf_colors =
\  { 'fg':       ['fg', 'Normal'],
\  'bg':       ['bg', 'Normal'],
\  'hl':       ['fg', 'Comment'],
\  'fg+':      ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\  'bg+':      ['bg', 'CursorLine', 'CursorColumn'],
\  'hl+':      ['fg', 'Statement'],
\  'info':     ['fg', 'PreProc'],
\  'border':   ['fg', 'Ignore'],
\  'prompt':   ['fg', 'Conditional'],
\  'pointer':  ['fg', 'Exception'],
\  'marker':   ['fg', 'Keyword'],
\  'spinner':  ['fg', 'Label'],
\  'header':   ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

"Get text in files with Rg
command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \      'rg --hidden --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
    \      fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --hidden --column --line-number --no-heading --color=always --smart-case %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" ====================================
"            GIT SUPPORT
" ====================================
"Git grep
command! -bang -nargs=* GGrep
    \ call fzf#vim#grep(
    \       'git grep --line-number '.shellescape(<q-args>), 0,
    \       fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}, <bang>0))

" Fugitive
nnoremap <leader>g :vert G<CR>
nnoremap <leader>gd :vert Gdiff<CR>
nnoremap <leader>gm :vert Gdiffsplit!<CR>
nnoremap <leader>gf :diffget //2 \| diffupdate<CR>
nnoremap <leader>gj :diffget //3 \| diffupdate<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gl :vert Git log<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gS :Git stash<CR>
nnoremap <leader>gSp :Git stash pop<CR>
nnoremap <leader>gR :Git rebase -i HEAD~
nnoremap <leader>gs :Git show HEAD~

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
let g:vimwiki_list = [{'path': '~/Documents/vwiki/', 'syntax': 'markdown', 'ext': '.md'},
                   \ {'path': '~/Documents/vwiki/makin-magic', 'syntax': 'markdown', 'ext': '.md'},
                   \ {'path': '~/Documents/vwiki/makin-magic/general', 'syntax': 'markdown', 'ext': '.md'},
                   \ {'path': '~/Documents/vwiki/makin-magic/linux', 'syntax': 'markdown', 'ext': '.md'},
                   \ {'path': '~/Documents/vwiki/makin-magic/languages', 'syntax': 'markdown', 'ext': '.md'},
                   \ {'path': '~/Documents/vwiki/makin-magic/languages/ccpp', 'syntax': 'markdown', 'ext': '.md'},
                   \ {'path': '~/Documents/vwiki/lxdocs', 'syntax': 'markdown', 'ext': '.md'},
                   \ {'path': '~/Documents/vwiki/lxdocs/scan', 'syntax': 'markdown', 'ext': '.md'}]

" Vimwiki has a feature that will treat every file with
" configured file-extension as a wiki. Disable with:
let g:vimwiki_global_ext = 0

nmap ]l <Plug>VimwikiNextLink
nmap [l <Plug>VimwikiPrevLink

autocmd Filetype markdown nnoremap <C-n> *<CR><Esc>!!date<CR>A*<Esc>kJxA<CR><CR>
au FileType markdown setlocal shiftwidth=6 tabstop=6 noexpandtab
" Disable indent line on markdown files, indentline seem to disable vimwiki decorators
autocmd FileType markdown let g:indentLine_enabled = 0

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
let g:mkdp_browser = 'qutebrowser'

" ====================================
"            INDENTLINE
" ====================================
nnoremap <F10> :IndentLinesToggle<CR>
