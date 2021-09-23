-- Neogit configuration

local map = vim.api.nvim_set_keymap
local N = { noremap = true, silent= true }

local neogit = require('neogit')
neogit.setup {}

-- Mapping for Neogit
map('n', '<leader>g', ':lua require("neogit").open()<cr>', N)
