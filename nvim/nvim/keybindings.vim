" ====================================
" KEY MAP
" ====================================

" change the leader key to space
let mapleader = " "

inoremap jk <Esc>

nnoremap <C-a> :wq<CR>
nnoremap <C-q> :q!<CR>
nnoremap <C-d> :bd<CR>
nnoremap <C-o> :only<CR>
nnoremap <C-h> :hide<CR>
nnoremap <leader>w :w<CR>

nnoremap <silent> <CR> :noh<CR>

" Nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Navigation
"Tab in general mmode will move to next buffer
nnoremap <TAB> :bnext<CR>
"Shift-Tab in general mmode will move to previous buffer
nnoremap <S-TAB> :bprev<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-\> :vsplit<CR>

" <TAB> Completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Toggle whitespace view
nnoremap <F9> :set list!<CR>
nnoremap <F11> :source %<CR>
