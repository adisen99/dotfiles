-- Main neovim lua configuration file

-- Some autocommands

-- General settings and keymappings
require('general')
require('maps')

-- Get the plugins
require('plugins')

-- LSP stuff
-- require('nv_lsp')

-- Colorschemes
require('colors')

-- run packer compile when plugins.lua is updated
vim.cmd([[autocmd BufWritePost plugins.lua PackerCompile]])

-- Following plugins are lazy-loaded so not mentioned here
-- nvim-compe
-- vim-vsnip
-- nvim-tree
-- kommentary
-- nvim-autopairs
-- telescope.nvim
-- nvim-gitsigns
-- colorizer
