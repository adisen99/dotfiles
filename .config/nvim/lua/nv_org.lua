-- Nvim org mode configuration

local M = {}

require('neorg').setup {
  -- Tell Neorg what modules to load
  load = {
    ["core.defaults"] = {},
    ["core.keybinds"] = {
      config = {
        default_keybinds = true,
        neorg_leader = '<Leader>o'
      }
    },
    ["core.norg.concealer"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          my_workspace = "~/Nextcloud2/neorg"
        }
      }
    }
  }
}

return M
