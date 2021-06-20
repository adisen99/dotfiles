-- TreeSitter configuration

local nv_treesitter = {}

require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"bash",
		"fortran",
		"python",
		"lua",
		"yaml",
		"toml",
		"latex",
		"html",
		"css",
		"javascript"
	},
  indent = {
    enable = false,
		-- disable = { "python" }
  },
  highlight = {
    enable = true,
		disable = { "fortran" }
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    }
  }
}

return nv_treesitter
