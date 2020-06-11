" ====================================
"              PLUGINS
" ====================================
call plug#begin("~/.config/nvim/plugged")
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'justinmk/vim-dirvish'
"Plug 'editorconfig/editorconfig-vim'
"Plug 'jremmen/vim-ripgrep'
"Plug 'ryanoasis/vim-devicons'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'tpope/vim-eunuch'
"Plug 'w0rp/ale'
call plug#end()

"let g:rg_command = 'rg --vimgrep -S'
let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1

au User AirlineAfterInit :let g:airline_section_z = airline#section#create(['%3p%%'])

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

