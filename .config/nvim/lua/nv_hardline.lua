-- Indent backline configuration

local M = {}

require('hardline').setup {
  bufferline = true,  -- enable bufferline
  theme = 'codeschool_dark',   -- change theme
  -- theme = 'jellybeans',   -- change theme
	-- theme = 'none',
	--[[ custom_theme = {
		text = {gui = "#32302f", cterm = "236", cterm16 = "0"},
  	normal = { gui = "#83a598", cterm = "109", cterm16 = "12"},
  	replace = {gui = "#8ec07c", cterm = "108", cterm16 = "14"},
  	insert = {gui = "#b8bb26", cterm = "142", cterm16 = "10"},
  	inactive_comment = {gui = "#928374", cterm = "244", cterm16 = "8"},
  	inactive_cursor = {gui = "#665c54", cterm = "241", cterm16 = "8"},
  	inactive_menu = {gui = "#7c6f64", cterm = "243", cterm16 = "8"},
  	visual = {gui = "#d3869b", cterm = "175", cterm16 = "13"},
  	command = {gui = "#fb4934", cterm = "167", cterm16 = "9"},
  	alt_text = {gui = "#f2e5bc", cterm = "228", cterm16 = "15"},
  	warning = {gui = "#fabd2f", cterm = "214", cterm16 = "11"},
	}, ]]
  bufferline_settings = {
    exclude_terminal = true,  -- don't show terminal buffers in bufferline
    show_index = false,        -- show buffer indexes (not the actual buffer numbers) in bufferline
  },
}

return M
