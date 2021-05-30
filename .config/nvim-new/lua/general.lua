-- General configuration, keymaps and set options

-- Use local variables for options

local o = vim.o
local wo = vim.wo
local bo = vim.bo
local cmd = vim.cmd

-- Set options

o.relativenumber = true
o.background = 'dark'
o.mouse = 'a'
o.smartcase = true
o.incsearch = true
o.scrolloff = 8
o.termguicolors = true
o.completeopt = "menuone,noselect"
o.clipboard = 'unnamedplus'
bo.autoindent = true
bo.smartindent = true
bo.tabstop = 4
bo.softtabstop = 4
bo.shiftwidth = 4
bo.expandtab = true

wo.cursorline = true
wo.colorcolumn = '80'
wo.signcolumn = "number"
cmd('highlight ColorColumn ctermbg=0 guibg=darkgrey')
