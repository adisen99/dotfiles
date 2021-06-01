-- General configuration, keymaps and set options

-- Use local variables for options

local o = vim.o
local wo = vim.wo
local bo = vim.bo
local cmd = vim.cmd

-- Set options

-- global options
o.number = true
o.relativenumber = true
o.background = 'dark'
o.mouse = 'a'
o.smartcase = true
o.incsearch = true
o.scrolloff = 8
o.termguicolors = true
o.pumheight = 10
o.completeopt = "menuone,noselect"
o.clipboard = 'unnamedplus'
o.backup = false
o.writebackup = false
o.cmdheight = 2
o.updatetime = 300
o.timeoutlen = 100

-- buffer options
bo.autoindent = true
bo.smartindent = true
bo.tabstop = 4
bo.softtabstop = 4
bo.shiftwidth = 4
bo.expandtab = true

-- window options
wo.cursorline = true
wo.colorcolumn = '80'
wo.signcolumn = "yes"
cmd('highlight ColorColumn ctermbg=0 guibg=darkgrey')
