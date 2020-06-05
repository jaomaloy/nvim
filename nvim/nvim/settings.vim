" ====================================
"           GENERAL SETTINGS
" ====================================
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
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
set clipboard=unnamedplus
"set formatoptions-=cro                          " Stop newline continuation of comments

" ====================================
"             EDITOR VIEW
" ====================================
set t_Co=256                                    " Support 256 colors
colorscheme onedark
set background=dark
highlight Normal ctermfg=white ctermbg=black
highlight Search cterm=NONE ctermbg=DarkGrey
set number
set relativenumber                              " show relative line number
set scl=yes:1
set numberwidth=2
set list
set lcs+=space:.
set pumheight=10                                " Makes popup menu smaller
set ruler                                       " Show the cursor position all the time
set noshowmode                                  " don't show mode in bottom status bar
set splitright                                  " Split windows below if horizontal
set splitbelow                                  " Split on the right if vertical
set laststatus=0
set scrolloff=2

au! BufWritePost $MYVIVMRC source %             " Auto source when writing to init.vim

" You can't stop me
cmap w!! w !sudo tee %
