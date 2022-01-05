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

" nnoremap <C-c> :wq<CR>
nnoremap <C-q> :q!<CR>
nnoremap <C-s> :w<CR>
nnoremap <leader>d :bd<CR>
" nnoremap <leader>q :hide<CR>

nnoremap <silent> <leader><CR> :noh<CR><CR>

" Navigation
"Tab in general mmode will move to next buffer
nnoremap <silent> <TAB> :bnext<CR>
"Shift-Tab in general mmode will move to previous buffer
nnoremap <silent> <S-TAB> :bprev<CR>

" To map <Esc> to exit terminal-mode:
tnoremap <Esc> <C-\><C-n>

" To simulate |i_CTRL-R| in terminal-mode:
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

nnoremap <silent> <C-\> :vsplit<CR>

" <TAB> Completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Toggle whitespace view
nnoremap <F9> :set list!<CR>

