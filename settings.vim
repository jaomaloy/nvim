" ====================================
"           GENERAL SETTINGS
" ====================================
set lazyredraw
syntax enable                                   " Enables syntax highlighting
set updatetime=100
set timeoutlen=500
set hidden                                      " Required to keep multiple buffers open multiple buffers
set nowrap                                      " Display long lines as just one line
set encoding=utf-8                              " Set encoding as utf-8
set fileencoding=utf-8                          " Save the file encoding as utf-8
set mouse=a                                     " Enable mouse mode
set iskeyword+=-                                " Treat dash seprated words as a word text object
set tabstop=4                                   " spaces instead of tabs
set softtabstop=4                                   " spaces instead of tabs
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
set clipboard=unnamedplus
set ignorecase
set smartcase
set nobackup
set nowritebackup
set autoread
filetype plugin on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Stop newline continuation of comments

" ====================================
"             EDITOR VIEW
" ====================================
set t_Co=256                                    " Support 256 colors
set background=dark
set cursorline
set number
set relativenumber                              " show relative line number
set signcolumn=yes:1
set numberwidth=2
set list
set lcs+=space:.
set pumheight=10                                " Makes popup menu smaller
set ruler                                       " Show the cursor position all the time
set noshowmode                                  " don't show mode in bottom status bar
set splitright                                  " Split windows below if horizontal
set splitbelow                                  " Split on the right if vertical
set laststatus=2
set scrolloff=2

" autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2
" autocmd Filetype dart setlocal tabstop=2 shiftwidth=2
" autocmd FileType go set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
" autocmd FileType json set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

set completeopt=menu,menuone,noselect
