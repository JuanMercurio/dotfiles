
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'

  use 'tpope/vim-surround'

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

   --[[ use {
      "mhinz/vim-startify",
      cmd = { "SLoad", "SSave" },
      config = function()
        vim.g.startify_disable_at_vimenter = true
      end,
    } ]]

  use 'nvim-treesitter/nvim-treesitter'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "godlygeek/tabular" -- Quickly align text by pattern
  use "tpope/vim-repeat" -- Repeat actions better


  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  use 'christoomey/vim-tmux-navigator' 

  use 'morhetz/gruvbox'
end)
