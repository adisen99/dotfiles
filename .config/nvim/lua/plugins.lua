-- Lua config file containing all plugin details

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use {
		'wbthomason/packer.nvim',
		opt = true
}

	-- colorscheme
	-- use 'metalelf0/jellybeans-nvim' -- jellybeans
	use {
		'adisen99/jellybeans-nvim',
		branch = 'testing',
		requires = {'rktjmp/lush.nvim'}
	}
	use {
		'adisen99/codeschool.nvim',
		branch = 'feature',
		requires = {"rktjmp/lush.nvim"}
	}

	-- nvim-tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {'kyazdani42/nvim-web-devicons'},
		keys = {'<leader>e', '<leader>r'},
		config = function()
			require('nv_tree')
		end
	}

	-- nvim lsp
	use {
		'neovim/nvim-lspconfig',
		config = function()
			require('nv_lsp')
		end
	}
	-- autocompletion
	use {
		'hrsh7th/nvim-compe',
		event = "InsertEnter",
		config = function()
			require('nv_completion')
		end
	}

	-- treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require('nv_treesitter')
		end
	}

	-- snippets
	use {
		'hrsh7th/vim-vsnip',
		requires = {'hrsh7th/vim-vsnip-integ', after = 'vim-vsnip', event = 'InsertEnter'},
		event = 'InsertEnter',
		config = function()
			require('nv_snippets')
		end
	}

	-- nvim-hardline (statusline)
	use {
		'ojroques/nvim-hardline',
		config = function()
			require('nv_hardline')
		end
	}

	-- comments
	use {
		'b3nj5m1n/kommentary',
		keys = {'<leader>/', '<leader>c'},
		config = function()
			require('nv_kommentary')
		end
	}

	-- autopairing bracket
	use {
		'windwp/nvim-autopairs',
		after = 'nvim-compe',
		config = function()
			require('nv_autopairs')
		end
	}

	-- indent blankline
  use {
    'lukas-reineke/indent-blankline.nvim',
    branch = 'lua',
		disable = true
  }

	-- markdown
	use {
		'plasticboy/vim-markdown',
		opt = true
	}

  -- Colorizer
  use {
		'norcalli/nvim-colorizer.lua',
		cmd = 'ColorizerToggle',
		config = function ()
			require('colorizer').setup()
			vim.cmd('ColorizerReloadAllBuffers')
		end
	}

  -- Git integration
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
		event = 'BufRead',
		config = function()
			require('nv_gitsigns')
		end
  }

  -- fuzzy search using telescope
	use {
	  'nvim-telescope/telescope.nvim',
		requires = {
			{'nvim-lua/popup.nvim'},
			{'nvim-lua/plenary.nvim'}
		},
		keys = {'<A-p>', '<A-g>'},
		config = function()
			require('nv_telescope')
		end
	}
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make',
	}
end)
