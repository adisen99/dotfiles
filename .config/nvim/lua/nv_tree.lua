-- Configuration for the nvim-tree plugin

local M = {}

local g = vim.g
local map = vim.api.nvim_set_keymap
local N = { noremap = true, silent= true }

g.nvim_tree_side = 'right' -- left by default
g.nvim_tree_auto_close = 1 -- 0 by default, closes the tree when it's the last window
g.nvim_tree_follow = 1 -- 0 by default, this option allows the cursor to be updated when entering a buffer
g.nvim_tree_hide_dotfiles = 1 -- 0 by default, this option hides files and folders starting with a dot `.`
g.nvim_tree_git_hl = 1 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
g.nvim_tree_highlight_opened_files = 1 -- 0 by default, will enable folder and file icon highlight for opened files/directories.
g.nvim_tree_width_allow_resize  = 1 -- 0 by default, will not resize the tree when opening a file
g.nvim_tree_disable_netrw = 1 -- 1 by default, disables netrw
g.nvim_tree_hijack_netrw = 1 -- 1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
g.nvim_tree_add_trailing = 1 -- 0 by default, append a trailing slash to folder names
g.nvim_tree_group_empty = 1 --  0 by default, compact folders that only contain a single folder into one node in the file tree

g.nvim_tree_icons = {
	default = '',
  symlink = '',
  git= {
		unstaged = "M",
  	staged = "S",
  	unmerged = "",
  	renamed = "R",
  	untracked = "U",
  	deleted = "",
  	ignored = "◌"
  },
  folder= {
		arrow_open = "",
  	arrow_closed = "",
  	default = "",
  	open = "",
  	empty = "",
  	empty_open = "",
  	symlink = "",
  	symlink_open = "",
  },
  lsp = {
     hint = "",
     info = "",
     warning = "w",
     error = "",
  }
}

-- nvim-tree shortcuts

map('n', '<leader>e', ':NvimTreeToggle<cr>', N)
map('n', '<leader>r', ':NvimTreeRefresh<CR>', N)

return M
