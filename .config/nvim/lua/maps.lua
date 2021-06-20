-- Lua config to set keymaps and leaderkey

local maps = {}

--setting local variable

local map = vim.api.nvim_set_keymap
local g = vim.g
local M = { noremap = true, silent= true }
local option = { noremap = true }

-- set leader key and other keymaps

map('n', '<Space>', '<NOP>', M)
g.mapleader = ' '

map('n', '<leader><esc>', ':nohlsearch<cr>', M)
map('n', '<leader>n', ':bnext<cr>', M)
map('n', '<leader>p', ':bprev<cr>', M)
-- map('n', '<leader>x', ':BufferClose<cr>', M)

-- nvim-tree shortcuts

map('n', '<leader>t', ':NvimTreeToggle<cr>', M)
map('n', '<leader>r', ':NvimTreeRefresh<CR>', M)

-- remove the arrow keys

map('n', '<Down>', '<NOP>', M)
map('n', '<Up>', '<NOP>', M)
map('n', '<Right>', '<NOP>', M)
map('n', '<Left>', '<NOP>', M)

-- resizing
map('n', '<A-k>', ':resize -2<cr>', M)
map('n', '<A-j>', ':resize +2<cr>', M)
map('n', '<A-h>', ':vertical resize -2<cr>', M)
map('n', '<A-l>', ':vertical resize +2<cr>', M)

-- better indexing

map('v', '<', '<gv', M)
map('v', '>', '>gv', M)

-- navigation

map('n', 'S', ':%s//g<Left><Left>', option)
map('n', '<leader>h', ':wincmd h<cr>', M)
map('n', '<leader>j', ':wincmd j<cr>', M)
map('n', '<leader>k', ':wincmd k<cr>', M)
map('n', '<leader>l', ':wincmd l<cr>', M)
map('n', '<leader>v', ':wincmd v<cr>', M)
map('n', '<leader>z', ':sp<cr>', M)
map('n', '<leader>b', ':buffers<cr>:b', M)
map('n', '<leader>x', ':%bd|e#<cr>', M) -- delete all inactive buffers at once
map('n', '<C-s>', ':luafile %<cr>', M)
map('i', 'jk', '<esc>', M)

-- Colorizer mapping

map('n', '<leader>3', ':ColorizerToggle<cr>', M)

return maps
