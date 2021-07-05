-- Indent backline configuration

local M = {}

require('hardline').setup {
  bufferline = false,  -- enable bufferline
  -- theme = 'codeschool_dark',   -- change theme
  -- theme = 'jellybeans',   -- change theme
	theme = 'none',
	custom_theme = {
		text = {gui = "#fbfbfb"},
  	normal = { gui = "#182227"},
  	-- insert = {gui = "#2a343a"},
  	insert = {gui = "#6495ed"},
  	visual = {gui = "#bfabcb"},
  	replace = {gui = "#182227"},
  	inactive_comment = {gui = "#6495ED"},
  	inactive_cursor = {gui = "#6495ED"},
  	inactive_menu = {gui = "#6495ED"},
  	command = {gui = "#182227"},
  	alt_text = {gui = "#fbfbfb"},
  	warning = {gui = "#e9c062"},
	},
  bufferline_settings = {
    exclude_terminal = true,  -- don't show terminal buffers in bufferline
    show_index = false,        -- show buffer indexes (not the actual buffer numbers) in bufferline
  },
}

return M
