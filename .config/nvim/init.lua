-- Main neovim lua configuration file

-- vim.opt.shadafile = "NONE"
vim.g.loaded_gzip = false
vim.g.loaded_matchit = false
vim.g.loaded_netrwPlugin = false
vim.g.loaded_tarPlugin = false
vim.g.loaded_zipPlugin = false
vim.g.loaded_man = false
vim.g.loaded_2html_plugin = false
vim.g.loaded_remote_plugins = false

-- General settings and keymappings
require('general')
require('maps')
-- Colorschemes
require('colors')
-- Get the plugins
require('plugins')

-- run packer compile when plugins.lua is updated
vim.cmd([[autocmd BufWritePost plugins.lua PackerCompile]])
