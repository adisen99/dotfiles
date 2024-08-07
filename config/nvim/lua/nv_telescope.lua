-- nvim telescope configuration

local M = {}

local icons = require('nvim-nonicons')
local map = vim.api.nvim_set_keymap
local N = { noremap = true, silent = true }

require('telescope').setup {
  defaults = {
    prompt_prefix = "  " .. icons.get("telescope") .. "  ",
    selection_caret = " ❯ ",
    entry_prefix = "   ",
  },
  pickers = {
    -- Your special builtin config goes in here
    buffers = {
      sort_lastused = true,
      theme = "ivy",
      previewer = false,
    },
    find_files = {
      theme = "ivy"
    },
    git_files = {
      theme = "ivy"
    },
    help_tags = {
      theme = "ivy"
    },
    live_grep = {
      theme = "ivy"
    },
    grep_string = {
      theme = "ivy"
    },
  },
  layout_config = {
    prompt_position = "bottom",
  },
  extensions = {
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
    }
  }
}

-- Custom functions

-- Function to edit dotfiles
M.edit_neovim = function()
  require("telescope.builtin").find_files {
    shorten_path = false,
    cwd = "~/.config/nvim",
    prompt_title = "~ neovim config ~",
    theme = "ivy"
  }
end

M.edit_zsh = function()
  require("telescope.builtin").find_files {
    shorten_path = false,
    cwd = "~/.config/zsh",
    prompt_title = "~ zsh config ~",
    theme = "ivy"
  }
end

M.edit_neorg = function()
  require("telescope.builtin").find_files {
    shorten_path = false,
    cwd = "~/Nextcloud2/neorg",
    prompt_title = "~ neorg ~",
    theme = "ivy"
  }
end


-- Mappings
map('n', 'π', ':lua require("telescope.builtin").find_files()<cr>', N)
map('n', '©', ':lua require("telescope.builtin").git_files()<cr>', N)
map('n', '∫', ':lua require("telescope.builtin").buffers()<cr>', N)
map('n', 'ƒ', ':lua require("telescope.builtin").grep_string()<cr>', N)
map('n', '˙', ':lua require("telescope.builtin").help_tags()<cr>', N)

return M
