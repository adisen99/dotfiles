-- Main neovim lua configuration file

-- General settings and keymappings
require('general')
require('maps')

-- Get the plugins
require('plugins')

-- LSP stuff
require('nv-lsp')
require('nv-completion')

-- Colorschemes
require('colors')

-- Plugins settings imported
require('nv-tree')
require('nv-kommentary')
require('nv-autopairs')
require('nv-fzf')
require('nv-hardline')
require('nv-gitsigns')
require('nv-treesitter')

-- Set the default python environment
vim.g.python3_host_prog='/home/aditya/anaconda3/bin/python3'
