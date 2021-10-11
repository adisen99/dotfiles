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

local packer = require('packer')
local use = packer.use

packer.startup(function()
	-- Packer can manage itself
	use {
		'wbthomason/packer.nvim',
		opt = true
  }

  -- better-escape.nvim
  use {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup({
        mapping = {"jk"},
        timeout = 200,
        keys = "<Esc>"
      })
    end,
  }

	-- colorscheme
	use {
		'adisen99/jellybeans-nvim',
		branch = 'personal',
    requires = {'rktjmp/lush.nvim'},
	}
	use {
		'adisen99/codeschool.nvim',
		branch = 'feature',
    requires = {'rktjmp/lush.nvim'},
	}
	use {
		'adisen99/apprentice.nvim',
		branch = 'feature',
    requires = {'rktjmp/lush.nvim'},
	}

	-- file browsing

  -- web devicons
  use {
    'kyazdani42/nvim-web-devicons',
    module = "nvim-web-devicons"
  }

  -- nvim-tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'nvim-web-devicons',
		-- keys = {'<leader>e', '<leader>r'},
    cmd = { 'NvimTreeToggle', 'NvimTreeRefresh', 'NvimTreeOpen' },
    setup = function()
      require('nv_tree').setup()
    end,
		config = function()
			require('nv_tree').config()
		end,
    disable = true
	}

  -- lir nvim
  use {
    'tamago324/lir.nvim',
    requires = {
      {'nvim-web-devicons'},
      {'tamago324/lir-git-status.nvim'},
      {'nvim-lua/plenary.nvim'},
    },
    config = function()
      require('nv_lir')
    end,
    disable = false
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
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    config = function()
      require('nv_cmp')
    end,
    requires = {
      {"onsails/lspkind-nvim"},
      -- {"L3MON4D3/LuaSnip", after = "nvim-cmp"},
      -- {"saadparwaiz1/cmp_luasnip", after = "nvim-cmp"},
      {"hrsh7th/cmp-buffer", after = "nvim-cmp"},
      {"hrsh7th/cmp-vsnip", after = "nvim-cmp"},
      {"hrsh7th/cmp-nvim-lsp", after = "nvim-cmp"},
      {"hrsh7th/cmp-path", after = "nvim-cmp"},
      {"hrsh7th/cmp-nvim-lua", after = "nvim-cmp"},
      {"hrsh7th/cmp-calc", after = "nvim-cmp"},
      {"kdheepak/cmp-latex-symbols", after = "nvim-cmp"},
      -- {'tzachar/cmp-tabnine', run = './install.sh', after = "nvim-cmp"}
    },
    disable = false
  }

	-- treesitter and associated extensions
	use {
		"nvim-treesitter/nvim-treesitter",
    event = { 'BufRead', 'BufNewFile' },
		run = ":TSUpdate",
		config = function()
			require('nv_treesitter')
		end
	}

	-- treesitter/playground
	use {
		"nvim-treesitter/playground",
    after = 'nvim-treesitter',
		disable = true
	}

	-- snippets
	use {
		'hrsh7th/vim-vsnip',
		requires = {'hrsh7th/vim-vsnip-integ', event = 'InsertEnter'},
		event = 'InsertEnter',
		config = function()
			require('nv_snippets')
		end,
    disable = false
	}

	-- (statusline)
	-- nvim-hardline
	use {
		'adisen99/nvim-hardline',
    branch = 'personal',
    event = 'VimEnter',
		config = function()
			require('nv_hardline')
		end,
    disable = false
	}
  -- galaxyline
  use {
    'glepnir/galaxyline.nvim',
      branch = 'main',
      -- lazy load
      event = 'VimEnter',
      -- your statusline
      config = function()
        require'nv_galaxyline'
      end,
      -- some optional icons
      requires = 'nvim-web-devicons',
      disable = true
  }
	-- nvim-tabline
	use {
		'crispgm/nvim-tabline',
		event = 'VimEnter',
		config = function()
			require('nv_tabline')
		end,
		disable = true
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
		after = 'nvim-cmp',
		config = function()
			require('nv_autopairs')
		end
	}

	-- indent blankline
  use {
    'lukas-reineke/indent-blankline.nvim',
    branch = 'lua',
    event = 'BufRead',
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
  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    event = 'BufRead',
    config = function()
      require('nv_neogit')
    end
  }

  -- fuzzy search using telescope
	use {
	  'nvim-telescope/telescope.nvim',
		requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'nvim-web-devicons'}
		},
		-- keys = {'<A-p>', '<A-g>', '<A-b>', '<A-f>'},
    event = 'VimEnter',
		config = function()
			require('nv_telescope')
		end
	}
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make',
    after = 'telescope.nvim',
    config = function()
      require('telescope').load_extension('fzf')
    end
	}

  -- Neorg, nvim org mode
  use {
    "vhyrro/neorg",
    requires = {'nvim-lua/plenary.nvim'},
    config = function()
      require('nv_org')
    end
  }
end)
