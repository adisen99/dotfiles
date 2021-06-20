-- Colorschemes selection

local colors = {}

local cmd = vim.cmd
local g = vim.g

-- Indent blankline settings
g.indentLine_enabled = true
g.indent_blankline_use_treesitter = true
g.indent_blankline_show_first_indent_level = true
g.indent_blankline_show_trailing_blankline_indent = false
-- g.indent_blankline_show_end_of_line = true
-- g.indent_blankline_char = '|'

-- jellybeans
cmd('colorscheme jellybeans-nvim')
vim.g.jellybeans_italic_comments = true

return colors
