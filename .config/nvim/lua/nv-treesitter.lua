-- TreeSitter configuration

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "fortran", "python", "lua", "yaml", "toml", "latex" },
  indent = {
    enable = true
  },
  highlight = {
    enable = true,
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