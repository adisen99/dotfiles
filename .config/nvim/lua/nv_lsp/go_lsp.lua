-- Nvim-lspconfig configuration for GoLang

local M = {}

local nvim_lsp = require('lspconfig')
local on_init = require('nv_lsp.on_init')
local on_attach = require('nv_lsp.on_attach')
local capabilities = require('nv_lsp.capabilities')

nvim_lsp.gopls.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    gopls = {
      codelenses = { test = true },
    },
  },
  flags = {
    debounce_text_changes = 200,
  },
}

return M
