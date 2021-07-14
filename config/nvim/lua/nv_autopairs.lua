-- autopairs configuration

local M = {}

--[[ local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs') ]]

require('nvim-autopairs').setup()

require("nvim-autopairs.completion.compe").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true -- it will auto insert `(` after select function or method item
})

--[[ npairs.add_rules({
	Rule("<",">")
}) ]]

return M
