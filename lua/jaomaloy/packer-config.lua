-- ====================================
--              PLUGINS
-- ====================================
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'navarasu/onedark.nvim'

    use 'windwp/nvim-autopairs'

    -- Git support
    use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    }

    use 'nvim-lua/popup.nvim'

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'

     use({
         "NTBBloodbath/galaxyline.nvim",
         requires = { "kyazdani42/nvim-web-devicons", opt = true }
     })

    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    -- use 'tpope/vim-repeat'
    use 'tpope/vim-eunuch'
    -- use 'tpope/vim-dadbod'
    -- use 'kristijanhusak/vim-dadbod-completion'
    -- use 'kristijanhusak/vim-dadbod-ui'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'justinmk/vim-sneak'
    use 'unblevable/quick-scope'
    -- use 'justinmk/vim-dirvish'
    -- use 'inkarkat/vim-ReplaceWithRegister'
    use 'norcalli/nvim-colorizer.lua'
    -- use 'honza/vim-snippets'
    -- use 'mattn/emmet-vim'
    -- use 'Yggdroot/indentLine'
    use 'vimwiki/vimwiki'
    use { 'iamcco/markdown-preview.nvim', run = 'cd app & yarn install' }
    use 'reedes/vim-pencil'
    use 'liuchengxu/vista.vim'
end)
