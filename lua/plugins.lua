-- ====================================
--              PLUGINS
-- ====================================
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
     use 'wbthomason/packer.nvim'

      use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
      use 'navarasu/onedark.nvim'

    -- Git support
    use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
        config = function() require('gitsigns').setup() end
    }

    use 'nvim-lua/popup.nvim'
    use 'ThePrimeagen/harpoon'

     use({
         "NTBBloodbath/galaxyline.nvim",
         requires = { "kyazdani42/nvim-web-devicons", opt = true }
     })

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'

   use {
       'fatih/vim-go',
       run = ':GoUpdateBinaries'
   }

    use 'tpope/vim-obsession'
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
