-- Colorschemes selection

local cmd = vim.cmd
local g = vim.g

-- Indent blankline settings
g.indentLine_enabled = true
g.indent_blankline_use_treesitter = true
g.indent_blankline_show_first_indent_level = true
-- g.indent_blankline_show_end_of_line = true
-- g.indent_blankline_char = '|'

-- jellybeans
cmd('colorscheme jellybeans-nvim')
vim.g.jellybeans_italic_comments = true

-- material
--[[ vim.g.material_style = 'deep ocean'
vim.g.material_italic_comments = true
vim.g.material_italic_keywords = true
vim.g.material_italic_functions = true
vim.g.material_italic_variables = false
vim.g.material_contrast = false
vim.g.material_borders = false
vim.g.material_disable_background = false
--vim.g.material_custom_colors = { black = "#000000", bg = "#0F111A" }

require('material').set() ]]
