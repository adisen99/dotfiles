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

-- for vim-markdown
require('nv_markdown')

-- run packer compile when plugins.lua is updated
vim.cmd([[autocmd BufWritePost plugins.lua PackerCompile]])

-- load vim-markdown only when for markdown filetype
vim.cmd([[autocmd FileType markdown packadd! vim-markdown]])

-- Following plugins are lazy-loaded so not mentioned here
-- nvim-compe
-- vim-vsnip
-- nvim-tree
-- kommentary
-- nvim-autopairs
-- telescope.nvim
-- nvim-gitsigns
-- colorizer
