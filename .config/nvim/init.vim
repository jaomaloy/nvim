lua require'jaomaloy.packer-config'
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keybindings.vim
lua require'jaomaloy.treesitter'
lua require'jaomaloy.telescope'
lua require'jaomaloy.statusline'
lua require'jaomaloy.gitsigns'

if (has('nvim'))
    let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
    set termguicolors
endif
lua require'jaomaloy.theme.onedark'

lua require("bufferline").setup{}

source $HOME/.config/nvim/plugin-config.vim
lua require'jaomaloy.plug-colorizer'
lua require('nvim-autopairs').setup{}
lua require'jaomaloy.lsp-config'
