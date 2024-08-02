-- General configuration, keymaps and set options

local M = {}

-- Use local variables for options

local opt = vim.opt
local o = vim.o
local wo = vim.wo
local bo = vim.bo
-- local cmd = vim.cmd

-- Set options

-- global options
-- Ignore compiled files
opt.wildignore = "__pycache__"
opt.wildignore = opt.wildignore + { "*.o", "*~", "*.pyc", "*pycache*" }
opt.wildmode = { "longest", "list", "full" }
-- Cool floating window popup menu for completion on command line
opt.wildmode = opt.wildmode - "list"
opt.wildmode = opt.wildmode + { "longest", "full" }
opt.wildoptions = "pum"
opt.laststatus=3
o.showmode = false
o.showcmd = true
o.relativenumber = true
o.number = true
o.background = 'dark'
o.mouse = 'nv'
o.smartcase = true
o.incsearch = true
o.scrolloff = 8
o.termguicolors = true
o.pumheight = 10
o.completeopt = "menuone,noinsert,noselect"
opt.shortmess:append "c"
o.clipboard = 'unnamedplus'
o.hidden = true
o.backup = false
o.writebackup = false
o.cmdheight = 2
o.updatetime = 300
o.timeoutlen = 500
o.listchars='tab:→ ,eol:↲'
o.equalalways = false
o.splitright = true
o.splitbelow = true
o.inccommand = 'split'
o.joinspaces = false
-- o.tabline = '%!v:lua.require\'luatab\'.tabline()'

opt.formatoptions = opt.formatoptions
  - "a" -- Auto formatting is BAD.
  - "t" -- Don't auto format my code. I got linters for that.
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore

-- buffer options
bo.autoindent = true
bo.smartindent = true
bo.tabstop = 4
bo.softtabstop = 4
bo.shiftwidth = 4
bo.expandtab = true
bo.swapfile = false

-- window options
wo.breakindent = true
opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
wo.linebreak = true
wo.cursorline = true
wo.colorcolumn = '100'
wo.signcolumn = "yes"
wo.list = true
wo.wrap = true
-- cmd('highlight ColorColumn ctermbg=0 guibg=darkgrey')

return M
