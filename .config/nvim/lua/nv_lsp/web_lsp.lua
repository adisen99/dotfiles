-- html, css and javascript lsp setup

local M = {}

local nvim_lsp = require('lspconfig')
local on_init = require('nv_lsp.on_init')
local on_attach = require('nv_lsp.on_attach')
local capabilities = require('nv_lsp.capabilities')

nvim_lsp.html.setup {
  on_init = on_init,
	on_attach = on_attach,
  capabilities = capabilities;
}

nvim_lsp.cssls.setup {
	on_attach = on_attach,
  capabilities = capabilities;
}

return M
