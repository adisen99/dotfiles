-- Lua lsp configuration

local M = {}

local nvim_lsp = require('lspconfig')
local on_init = require("nv_lsp.on_init")
local on_attach = require('nv_lsp.on_attach')
local capabilities = require('nv_lsp.capabilities')

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local luals_root_path = '/opt/homebrew'
local luals_binary = luals_root_path .. "/bin/lua-language-server"

nvim_lsp.lua_ls.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { luals_binary },
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          -- [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          -- [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
          vim.env.VIMRUNTIME
        },
        -- library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

return M
