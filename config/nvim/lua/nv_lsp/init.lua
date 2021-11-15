-- Nvim-lspconfig configuration

local M = {}

require('nv_lsp.handlers')
require('nv_lsp.status').activate()

vim.cmd [[packadd nvim-lspconfig]]
local nvim_lsp = require('lspconfig')
local on_init = require('nv_lsp.on_init')
local on_attach = require('nv_lsp.on_attach')
local capabilities = require('nv_lsp.capabilities')

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches

local servers = { "pyright", "bashls", "texlab", "vimls" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities;
  }
end

-- reuqiring other language modules

require('nv_lsp.fortran_lsp')
require('nv_lsp.lua_lsp')
require('nv_lsp.rust_lsp')
require('nv_lsp.go_lsp')
require('nv_lsp.web_lsp')

-- General configuration

-- redifining the singcolumn icons

--[[ vim.fn.sign_define(
    "LspDiagnosticsSignError",
    {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"}
)
vim.fn.sign_define(
    "LspDiagnosticsSignWarning",
    {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"}
)
vim.fn.sign_define(
    "LspDiagnosticsSignHint",
    {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"}
)
vim.fn.sign_define(
    "LspDiagnosticsSignInformation",
    {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"}
) ]]

return M
