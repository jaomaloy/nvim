" let g:airline_theme = 'material'
" let g:airline_powerline_fonts = 1

" let g:airline#extensions#hunks#enabled=0
" au User AirlineAfterInit :let g:airline_section_z = airline#section#create(['%3p%%', 'linenr', 'maxlinenr'])

" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif

" " powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.dirty='⚡'

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail' 'separator': { 'left': '', 'right': '' }, 'subseparator': { 'left': '', 'right': '' },

" LIGHTLINE

set showtabline=2
let g:lightline#bufferline#filename_modifier=':t'
let g:lightline = {
            \ 'colorscheme': 'material_vim',
            \ 'tabline': {
            \   'left': [ ['buffers'] ],
            \   'right': [ ['buffertext'] ]
            \ },
            \ 'active': {
            \   'left': [ ['mode', 'paste'] ,
            \             [ 'gitbranch', 'filename', 'modified'] ],
            \   'right': [ [ 'lineinfo' ],
            \              [ 'percent' ],
            \              [ 'fileformat', 'fileencoding', 'filetype'] ]
            \ },
            \ 'component': {
            \  'buffertext': 'buffers',
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
