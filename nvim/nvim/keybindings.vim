" ====================================
" KEY MAP
" ====================================

" change the leader key to space
let mapleader = " "

inoremap jk <Esc>

nnoremap <leader>a :wq<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Nav for omnicomplete? TODO: research this
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")

" Navigation
"Tab in general mmode will move to next buffer
nnoremap <TAB> :bnext<CR>
"Shift-Tab in general mmode will move to previous buffer
nnoremap <S-TAB> :bprev<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nnoremap <C-S-h> :resize -2<CR>
" nnoremap <C-S-j> :resize +2<CR>
" nnoremap <C-S-k> :vertical resize -2<CR>
" nnoremap <C-S-l> :vertical resize -2<CR>

" <TAB> Completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Toggle whitespace view
nnoremap <F9> :set list!<CR>
nnoremap <F11> :source %<CR>
