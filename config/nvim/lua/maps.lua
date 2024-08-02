-- Lua config to set keymaps and leaderkey

local M = {}

--setting local variable

local map = vim.api.nvim_set_keymap
local g = vim.g
local N = { noremap = true, silent = true }
local option = { noremap = true }

-- set leader key and other keymaps
map('n', '<Space>', '<NOP>', N)
g.mapleader = ' '

map('n', '<leader><esc>', ':nohlsearch<cr>', N)
map('n', '<leader>n', ':bnext<cr>', N)
map('n', '<leader>p', ':bprev<cr>', N)
map('n', '<Tab>', ':tabnext<cr>', N)
map('n', '<S-Tab>', ':tabprevious<cr>', N)

-- remove the arrow keys
map('n', '<Down>', '<NOP>', N)
map('n', '<Up>', '<NOP>', N)
map('n', '<Right>', '<NOP>', N)
map('n', '<Left>', '<NOP>', N)


-- resizing
map('n', '˚', ':resize -2<cr>', N)
map('n', '∆', ':resize +2<cr>', N)
map('n', '˙', ':vertical resize -2<cr>', N)
map('n', '¬', ':vertical resize +2<cr>', N)

-- better indexing
map('v', '<', '<gv', N)
map('v', '>', '>gv', N)

-- navigation
map('n', 'S', ':%s//g<Left><Left>', option)
map('n', '<leader>h', ':wincmd h<cr>', N)
map('n', '<leader>j', ':wincmd j<cr>', N)
map('n', '<leader>k', ':wincmd k<cr>', N)
map('n', '<leader>l', ':wincmd l<cr>', N)
map('n', '<leader>v', ':wincmd v<cr>', N)
map('n', '<leader>z', ':sp<cr>', N)
map('n', '<leader>b', ':buffers<cr>:b', N)
map('n', '<leader>x', ':%bd|e#<cr>', N) -- delete all inactive buffers at once
map('n', '<C-s>', ':luafile %<cr>', N)
-- map('i', 'jk', '<esc>', N) -- using better-escape.nvim plugin

-- Colorizer mapping
map('n', '<leader>3', ':ColorizerToggle<cr>', N)


-- Custom telescope mappings
map('n', '˜', ':lua require("nv_telescope").edit_neovim()<cr>', N)
map('n', 'Ω', ':lua require("nv_telescope").edit_zsh()<cr>', N)
map('n', '˙', ':lua require("nv_telescope").edit_neorg()<cr>', N)

-- Terminal mode remap
map('t', '<Esc>', '<C-\\><C-n>', N)

-- greatest remaps ever - courtesy ThePrimeagen
map('v', '<leader>p', '"_dP', N)
-- map('n', 'Y', 'y$', N)
-- map('n', '<C-q>', ':copen<cr>', N)
map('n', '<C-j>', ':cnext<cr>', N)
map('n', '<C-k>', ':cprev<cr>', N)
map('n', 'gj', ':lnext<cr>', N)
map('n', 'gk', ':lprev<cr>', N)

return M
