lua require'packer-config'
lua require'voidtline'
lua require'gitsignz'

" lua << EOF
" require("harpoon").setup({
"     nav_first_in_list = true,
" })
" EOF

set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keybindings.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/plugin-config.vim
lua require'lsp'
lua require'plug-colorizer'
lua require('nvim-autopairs').setup{}
