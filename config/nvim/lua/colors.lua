-- Colorschemes selection

local M = {}

local g = vim.g

-- Indent blankline settings
g.indentLine_enabled = false
--[[ g.indent_blankline_use_treesitter = true
g.indent_blankline_show_first_indent_level = true
g.indent_blankline_show_trailing_blankline_indent = false ]]
-- g.indent_blankline_show_end_of_line = true
-- g.indent_blankline_char = '|'

-- jellybeans
--[[ g.jellybeans_italic_comments = true
vim.cmd('colorscheme jellybeans-nvim') ]]

-- Codeschool
g.codeschool_contrast_dark = "hard"
-- g.codeschool_number_column = "bg0"
-- g.codeschool_sign_column = "bg0"
-- g.codeschool_color_column = "bg0"
-- g.codeschool_invert_selection = 1
-- g.codeschool_invert_tabline = 1
g.codeschool_tabline_sel = "fg1"
require('codeschool').setup({
	plugins = {"netrw", "gitsigns", "nvimtree", "lsp", "telescope", "treesitter"},
	langs = {"lua", "python", "rust", "markdown"},
})

return M
