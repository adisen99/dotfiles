-- Rust lsp setup

local M = {}

local nvim_lsp = require('lspconfig')
local on_init = require('nv_lsp.on_init')
local on_attach = require('nv_lsp.on_attach')
local capabilities = require('nv_lsp.capabilities')

nvim_lsp.rust_analyzer.setup({
  on_init = on_init,
  on_attach=on_attach,
  capabilities = capabilities;
    settings = {
        ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
              loadOutDirsFromCheck = true
            },
            checkOnSave = {
              allFeatures = true,
              command = 'clippy'
            },
            diagnostics = {
              disabled = { 'macro-error' },
              enableExperimental = false
            },
            inlayHints = {
              chainingHints = false,
              enable = false,
              typeHints = false,
            },
            hover = {
              debug = false,
              implementations = false
            },
            lens = {
              debug = false,
              implementations = false
            },
            procMacro = {
              enable = true
            }
        }
    }
})

return M
