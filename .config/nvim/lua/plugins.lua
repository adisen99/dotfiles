local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- colorscheme
  use 'rktjmp/lush.nvim' -- support for colorschemes
  use 'metalelf0/jellybeans-nvim' -- jellybeans
  use 'marko-cerovac/material.nvim' -- material
  -- nvim-tree
  use 'kyazdani42/nvim-web-devicons' -- for file icons
  use 'kyazdani42/nvim-tree.lua'
  -- nvim lsp
  use 'neovim/nvim-lspconfig' -- built-in lsp config
  use 'hrsh7th/nvim-compe' -- autocompletion
  -- treesitter
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
  -- nvim-hardline (statusline)
  use 'ojroques/nvim-hardline'
  -- comments
  use 'b3nj5m1n/kommentary'
  -- autopairing bracket
  use 'windwp/nvim-autopairs'
  -- indent blankline
  use { 
    'lukas-reineke/indent-blankline.nvim',
    branch = 'lua'
  }
  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'
  -- Git integration
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  -- fuzzy search
  use {
    'ojroques/nvim-lspfuzzy',
    requires = {
      {'junegunn/fzf'},
      {'junegunn/fzf.vim'},  -- to enable preview (optional)
    },
  }
end)