" ====================================
" KEY MAP
" ====================================

" change the leader key to space
let mapleader = " "

inoremap jk <Esc>

" Behave like C or D
nnoremap Y y$

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Moving text
vnoremap K :m '<-2'<CR>gv=gv
vnoremap J :m '>+1'<CR>gv=gv
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

nnoremap <C-c> :wq<CR>
nnoremap <C-q> :q!<CR>
nnoremap <C-s> :w<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>q :hide<CR>

nnoremap <silent> <leader><CR> :noh<CR><CR>

" Nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Navigation
"Tab in general mmode will move to next buffer
nnoremap <silent> <TAB> :bnext<CR>
"Shift-Tab in general mmode will move to previous buffer
nnoremap <silent> <S-TAB> :bprev<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <C-\> :vsplit<CR>

" <TAB> Completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Toggle whitespace view
nnoremap <F9> :set list!<CR>

