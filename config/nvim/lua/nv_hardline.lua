-- Indent backline configuration

local M = {}

require('hardline').setup {
  bufferline = false,  -- enable bufferline
  -- theme = 'codeschool_dark',   -- change theme
  -- theme = 'jellybeans',   -- change theme
	theme = 'custom',
	custom_theme = {
		text = {gui = "#fbfbfb"},
  	normal = { gui = "#182227"},
  	-- insert = {gui = "#2a343a"},
  	insert = {gui = "#00688b"},
  	visual = {gui = "#00688b"},
  	replace = {gui = "#182227"},
  	inactive_comment = {gui = "#2a343a"},
  	inactive_cursor = {gui = "#00688b"},
  	inactive_menu = {gui = "#00688b"},
  	command = {gui = "#00688b"},
  	alt_text = {gui = "#fbfbfb"},
  	warning = {gui = "#00688b"},
	},
  bufferline_settings = {
    exclude_terminal = true,  -- don't show terminal buffers in bufferline
    show_index = false,        -- show buffer indexes (not the actual buffer numbers) in bufferline
  },
}

return M
