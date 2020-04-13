"Plugin Section
call plug#begin("~/.vim/plugged")
	Plug 'sonph/onehalf',
	Plug 'airblade/vim-gitgutter',
	Plug 'editorconfig/editorconfig-vim',
	Plug 'itchyny/lightline.vim',
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim',
	Plug 'jremmen/vim-ripgrep',
	Plug 'mattn/emmet-vim',
	Plug 'scrooloose/nerdtree',
	Plug 'ryanoasis/vim-devicons',
	Plug 'terryma/vim-multiple-cursors',
	Plug 'tpope/vim-eunuch',
	Plug 'tpope/vim-surround',
	Plug 'w0rp/ale'
call plug#end()

let g:rg_command = 'rg --vimgrep -S'

syntax on

let g:lightline = {
			\ 'colorscheme': 'wombat',
			\}
