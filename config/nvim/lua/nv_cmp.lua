-- nvim-cmp setup and configuration

local M = {}

local lspkind = require('lspkind')

-- luasnip setup
-- local luasnip = require 'luasnip'
-- require("luasnip/loaders/from_vscode").lazy_load()

--[[ local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end ]]

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = lspkind.presets.default[vim_item.kind] .. " " .. vim_item.kind
      -- setting name for each source
      vim_item.menu = ({
        nvim_lua = "[Lua]",
        nvim_lsp = "[LSP]",
        path = "[Path]",
        vsnip = "[Snippet]",
        -- luasnip = "(Snippet)",
        buffer = "[Buffer]",
        latex_symbols = "[Latex]",
        calc = "[Calc]",
        -- cmp_tabnine = "[Tabnine]",
        -- emoji = "[Emoji]",
      })[entry.source.name]
      return vim_item
    end,
  },
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  },
  sources = {
    { name = 'nvim_lua' },
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'vsnip' },
    { name = "buffer", keyword_length = 5 },
    { name = "latex_symbols" },
    -- { name = "treesitter" },
    { name = "calc" },
    -- { name = 'cmp_tabnine' },
    -- { name = "crates" },
    -- { name = "emoji" },
  },
  experimental = {
    native_menu = false,
    ghost_text = false
  }
}

return M
