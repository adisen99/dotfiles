-- TreeSitter configuration

local M = {}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "bash",
    "comment",
    "fortran",
    "python",
    "lua",
    "rust",
    "go",
    "yaml",
    "toml",
    "latex",
    "html",
    "css",
    "javascript"
  },
  autopairs = {
    enable = true
  },
  matchup = {
    enable = true
  },
  -- context_commentstring = {enable = true, config = {css = '// %s'}},
  indent = {
    enable = false,
    -- disable = { "python" }
  },
  highlight = {
    enable = true,
    -- disable = { "fortran", "latex" }
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = true },
    smartrename = {
      enable = true,
      keymaps = {
        smart_rename = ",r"
      }
    }
  },
  autotag = { enable = true }
}

return M
