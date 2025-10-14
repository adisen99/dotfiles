-- Nvim-lspconfig configuration

local M = {}


-- vim.cmd [[packadd nvim-lspconfig]]
local nvim_lsp = vim.lsp
local on_init = require('nv_lsp.on_init')
local on_attach = require('nv_lsp.on_attach')
local capabilities = require('nv_lsp.capabilities')

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches

--[[ local servers = { "pylsp", "bashls", "texlab", "vimls", "html", "cssls", "fortls", "rust_analyzer", "gopls",
  "intelephense" } ]]
local servers = { "pylsp", "bashls", "texlab", "vimls", "html", "cssls", }
for _, lsp in ipairs(servers) do
  -- nvim_lsp[lsp].config {
  nvim_lsp.enable(lsp)
  nvim_lsp.config(lsp, {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      pylsp = {
        plugins = {
          pycodestyle = {
            ignore = {'W391'},
            maxLineLength = 150
          }
        }
      },
      --[[ ["rust-analyzer"] = {
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
      },
      ["gopls"] = {
        codelenses = { test = true },
      },
    },
    flags = {
      debounce_text_changes = 200, ]]
    },
  })
end


-- reuqiring lua language modules
require('nv_lsp.lua_lsp')

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
