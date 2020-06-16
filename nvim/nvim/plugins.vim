" ====================================
"              PLUGINS
" ====================================
call plug#begin("~/.config/nvim/plugged")
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'justinmk/vim-dirvish'
"Plug 'editorconfig/editorconfig-vim'
"Plug 'jremmen/vim-ripgrep'
"Plug 'ryanoasis/vim-devicons'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'tpope/vim-eunuch'
"Plug 'w0rp/ale'
Plug 'joshdick/onedark.vim'
Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

