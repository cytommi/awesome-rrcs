return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'


  -- Autocompletion
  use 'hrsh7th/nvim-cmp' 
  -- Sources for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' 
  use 'hrsh7th/cmp-buffer' 
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  
  -- Smooth Scroll
  use 'terryma/vim-smooth-scroll'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Cheatsheet
  use 'RishabhRD/popfix'
  use 'RishabhRD/nvim-cheat.sh'

  -- Tpope goodness
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tpope/vim-commentary'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-unimpaired'

  -- Status line
  use 'nvim-lualine/lualine.nvim'

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  use 'mbbill/undotree'

  -- File Jumping
  use 'theprimeagen/harpoon'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'folke/trouble.nvim'

  -- Colorschemes
  use 'gruvbox-community/gruvbox'
  use 'eddyekofo94/gruvbox-flat.nvim'
  use 'sainnhe/gruvbox-material'
  use 'EdenEast/nightfox.nvim'

  use 'edkolev/tmuxline.vim'
end)

