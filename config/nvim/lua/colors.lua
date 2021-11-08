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
-- g.codeschool_number_column = "bg0"
-- g.codeschool_sign_column = "bg0"
-- g.codeschool_color_column = "bg0"
-- g.codeschool_invert_selection = 1
-- g.codeschool_invert_tabline = 1
-- g.codeschool_transparent_bg = false
g.codeschool_contrast_dark = "hard"
g.codeschool_tabline_sel = "fg0"
require('lush')(require('codeschool').setup({
	plugins = {"netrw", "gitsigns", "cmp", "nvimtree", "neogit", "lsp", "telescope"},
	langs = {"lua", "python", "rust", "markdown", "viml", "golang"},
}))

-- Appretice
--[[ g.apprentice_contrast_dark = "hard"
g.apprentice_tabline_sel = "fg0"
require('lush')(require('apprentice').setup({
	plugins = {"netrw", "gitsigns", "cmp", "nvimtree", "neogit", "lsp", "telescope"},
	langs = {"lua", "python", "rust", "markdown", "viml", "golang"},
})) ]]

-- nvim-base16
-- vim.cmd('colorscheme base16-tomorrow-night')

-- Modus theme
-- g.modus_yellow_comments = 1
--[[ g.modus_green_strings = 1
g.modus_faint_syntax = 1
g.modus_cursorline_intense = 1
vim.cmd('colorscheme modus-vivendi') ]]

return M
