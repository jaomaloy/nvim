-- ====================================
--              PLUGINS
-- ====================================
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
     use 'wbthomason/packer.nvim'

      use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
      use 'navarasu/onedark.nvim'

    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-obsession'
    -- use 'tpope/vim-repeat'
    -- use 'tpope/vim-eunuch'
    -- use 'tpope/vim-dadbod'
    -- use 'kristijanhusak/vim-dadbod-completion'
    -- use 'kristijanhusak/vim-dadbod-ui'
    -- use 'itchyny/lightline.vim'
    -- use 'mengelbrecht/lightline-bufferline'
    -- use 'airblade/vim-gitgutter'
    -- use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    -- use 'neoclide/coc.nvim', {'branch': 'release'}
    -- use 'junegunn/fzf', {'do': { -> fzf#install() }}
    -- use 'junegunn/fzf.vim'
    -- use 'justinmk/vim-sneak'
    -- use 'unblevable/quick-scope'
    -- use 'justinmk/vim-dirvish'
    -- use 'inkarkat/vim-ReplaceWithRegister'
    -- use 'norcalli/nvim-colorizer.lua'
    -- use 'honza/vim-snippets'
    -- use 'mattn/emmet-vim'
    -- use 'Yggdroot/indentLine'
    -- use 'vimwiki/vimwiki'
    -- use 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
    -- use 'reedes/vim-pencil'
    -- use 'liuchengxu/vista.vim'
end)
