-- Fortan lsp setup

local nvim_lsp = require('lspconfig')
local on_init = require("nv_lsp.on_init")
local on_attach = require('nv_lsp.on_attach')
local capabilities = require('nv_lsp.capabilities')

nvim_lsp.fortls.setup{
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities;
  settings = {
    nthreads = 4 -- setting nthreads manually to 4
  }
}
