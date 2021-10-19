lua require'plugins'
lua require'voidtline'
lua require'gitsigns'

lua << EOF
require("harpoon").setup({
    nav_first_in_list = true,
})
EOF

source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keybindings.vim
source $HOME/.config/nvim/themes/onedark.vim
" source $HOME/.config/nvim/plugin-config.vim
lua require'plug-colorizer'
