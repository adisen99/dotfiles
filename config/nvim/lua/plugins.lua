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

	-- treesitter and associated extensions
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require('nv_treesitter')
		end
	}

	-- treesitter/playground
	use {
		"nvim-treesitter/playground",
		event = "BufRead",
		disable = true
	}

	-- snippets
	use {
		'hrsh7th/vim-vsnip',
		requires = {'hrsh7th/vim-vsnip-integ', event = 'InsertEnter'},
		event = 'InsertEnter',
		after = 'vim-vsnip-integ',
		config = function()
			require('nv_snippets')
		end
	}

	-- (statusline)
	-- nvim-hardline
	use {
		'ojroques/nvim-hardline',
		event = 'BufRead',
		config = function()
			require('nv_hardline')
		end
	}
	-- nvim-tabline
	use {
		'crispgm/nvim-tabline',
		event = 'BufRead',
		setup = function()
			vim.o.showtabline = 1
		end,
		config = function()
			require('nv_tabline')
		end,
		disable = false
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
		keys = {'<A-p>', '<A-g>', '<A-b>', '<A-h>'},
		config = function()
			require('nv_telescope')
		end
	}
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make',
	}

  -- Neorg, nvim org mode
  use {
    "vhyrro/neorg",
    event = 'BufRead',
    config = function()
      require('nv_org')
    end
  }
end)
