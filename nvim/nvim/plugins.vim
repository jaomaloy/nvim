" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" ====================================
"              PLUGINS
" ====================================
call plug#begin("~/.config/nvim/plugged")
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'justinmk/vim-dirvish'
Plug 'inkarkat/vim-ReplaceWithRegister'
Plug 'norcalli/nvim-colorizer.lua'
"Plug 'editorconfig/editorconfig-vim'
"Plug 'jremmen/vim-ripgrep'
"Plug 'ryanoasis/vim-devicons'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'w0rp/ale'
Plug 'jaomaloy/material.vim'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
