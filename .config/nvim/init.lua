-- Main neovim lua configuration file

-- General settings and keymappings
require('general')
require('maps')

-- Get the plugins
require('plugins')

-- LSP stuff
require('nv_lsp')
require('nv_completion')

-- Snippets using vsnip
require('nv_snippets')

-- Colorschemes
require('colors')

-- Plugins settings imported
require('nv_tree')
require('nv_kommentary')
require('nv_autopairs')
require('nv_telescope')
require('nv_hardline')
require('nv_gitsigns')
require('nv_treesitter')
require('nv_markdown')
