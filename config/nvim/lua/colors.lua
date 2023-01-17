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
g.jellybeans_italic_comments = true
vim.cmd('colorscheme jellybeans-nvim')

-- Codeschool
-- g.codeschool_number_column = "bg0"
-- g.codeschool_sign_column = "bg0"
-- g.codeschool_color_column = "bg0"
-- g.codeschool_invert_selection = 1
-- g.codeschool_invert_tabline = 1
-- g.codeschool_transparent_bg = false
--[[ g.codeschool_hls_lspreference = "light4"
g.codeschool_hls_cursor = "light4"
g.codeschool_hls_highlight = "light4"
g.codeschool_contrast_dark = "hard"
g.codeschool_italicize_booleans = true
g.codeschool_sign_column = 'dark0_hard'
g.codeschool_tabline_sel = "fg0"
require('lush')(require('codeschool').setup({
  plugins = { "netrw", "gitsigns", "cmp", "nvimtree", "neogit", "lsp", "telescope", "packer" },
  langs = { "lua", "python", "rust", "markdown", "viml", "golang" },
})) ]]

-- Appretice
--[[ g.apprentice_hls_lspreference = "light4"
g.apprentice_hls_cursor = "light4"
g.apprentice_hls_highlight = "light4"
g.apprentice_contrast_dark = "hard"
g.apprentice_italicize_booleans = true
g.apprentice_tabline_sel = "fg0"
g.apprentice_sign_column = 'dark0_hard'
require('lush')(require('apprentice').setup({
  plugins = { "netrw", "gitsigns", "cmp", "nvimtree", "neogit", "lsp", "telescope", "packer" },
  langs = { "lua", "python", "rust", "markdown", "viml", "golang" },
})) ]]

-- Gruvy
-- vim.cmd('colorscheme gruvy')

-- nvim-base16
-- vim.cmd('colorscheme base16-tomorrow-night')

-- Modus theme
-- g.modus_yellow_comments = 1
--[[ g.modus_green_strings = 1
g.modus_faint_syntax = 1
g.modus_cursorline_intense = 1
vim.cmd('colorscheme modus-vivendi') ]]

-- Kanagawa theme

--[[ local colors = {
  sumiInk1 = "#111111",
  fujiWhite = "#f0f0f0"
}

require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    variablebuiltinStyle = "italic",
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = false,        -- do not set background color
    colors = colors,
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa") ]]

-- Rasmus theme
--[[ g.rasmus_italic_booleans = true
g.rasmus_variant = "dark"
vim.cmd('colorscheme rasmus') ]]

-- Arctic colorscheme
-- vim.cmd("colorscheme arctic")

-- Mellifluous colorscheme
--[[ require 'mellifluous'.setup({
  color_set = 'mellifluous',
  neutral = true,
  bg_contrast = 'hard',
  styles = {
    comments = 'italic',
    booleans = 'italic',
  },
  plugins = {
    cmp = true,
    gitsigns = true,
    indent_blankline = false,
    nvim_tree = {
      enabled = false,
      show_root = false,
    },
    telescope = {
      enabled = true,
      nvchad_like = true,
    },
  },
})
vim.cmd('colorscheme mellifluous') ]]

return M
