-- Lsp fuzzy seach setup

local map = vim.api.nvim_set_keymap
local g = vim.g

require('lspfuzzy').setup {
  methods = 'all',         -- either 'all' or a list of LSP methods (see below)
  fzf_action = {           -- FZF actions
    ['ctrl-t'] = 'tabedit',  -- go to location in a new tab
    ['ctrl-v'] = 'vsplit',   -- go to location in a vertical split
    ['ctrl-x'] = 'split',    -- go to location in a horizontal split
  },
  fzf_modifier = ':~:.',   -- format FZF entries, see |filename-modifiers|
  fzf_trim = true,         -- trim FZF entries
}

map('n', '<A-g>', ':GFiles<cr>', {})
map('n', '<A-p>', ':Files<cr>', {})

g['fzf_layout'] = {down = '30%'}
