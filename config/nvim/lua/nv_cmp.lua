-- nvim-cmp setup and configuration

local M = {}

-- luasnip setup
-- local luasnip = require 'luasnip'
-- require("luasnip/loaders/from_vscode").lazy_load()

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true, 'n')
end

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  formatting = {
    format = function(entry, vim_item)
      local icons = require("nv_lsp.kind").icons
      vim_item.kind = icons[vim_item.kind]
      vim_item.menu = ({
        nvim_lsp = "(LSP)",
        emoji = "(Emoji)",
        path = "(Path)",
        calc = "(Calc)",
        cmp_tabnine = "(Tabnine)",
        vsnip = "(Snippet)",
        -- luasnip = "(Snippet)",
        buffer = "(Buffer)",
      })[entry.source.name]
      vim_item.dup = ({
        buffer = 1,
        path = 1,
        nvim_lsp = 0,
      })[entry.source.name] or 0
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
    ["<Tab>"] = cmp.mapping(function()
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(t "<down>", "n")
      --[[ elseif luasnip.expand_or_jumpable() then
        vim.fn.feedkeys(t "<Plug>luasnip-expand-or-jump", "") ]]
      elseif check_back_space() then
        vim.fn.feedkeys(t "<Tab>", "n")
      else
        vim.fn.feedkeys(t "<Tab>", "n")
      end
    end, {
      "i",
      "s",
    }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(t "<up>", "n")
      --[[ elseif luasnip.jumpable(-1) then
        vim.fn.feedkeys(t "<Plug>luasnip-jump-prev", "") ]]
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'vsnip' },
    -- { name = 'cmp_tabnine' },
    { name = 'nvim_lua' },
    { name = "buffer" },
    { name = "calc" },
    -- { name = "emoji" },
    -- { name = "treesitter" },
    { name = "latex_symbols" },
    -- { name = "crates" },
  },
}

return M