-- Snippets vsnip configuration

local M = {}

local ls = require("luasnip")
local types = require("luasnip.util.types")

-- If you're reading this file for the first time, best skip to around line 190
-- where the actual snippet-definitions start.

-- Every unspecified option will be set to the default.
ls.config.set_config({
	history = true,
	-- Update more often, :h events for more info.
	updateevents = "TextChanged,TextChangedI",
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "choiceNode", "Comment" } },
			},
		},
	},
	-- treesitter-hl has 100, use something higher (default is 200).
	ext_base_prio = 300,
	-- minimal increase in priority.
	ext_prio_increase = 1,
	enable_autosnippets = true,
})

-- require("luasnip.loaders.from_vscode").lazy_load() -- Lazy loading
require("luasnip.loaders.from_snipmate").lazy_load({path = '../snippets'}) -- Lazy loading

return M
