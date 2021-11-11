-- nvim telescope configuration

local M = {}

local map = vim.api.nvim_set_keymap
local N = { noremap = true, silent= true }

require('telescope').setup{
  defaults = {
    prompt_prefix = ">> ",
    selection_caret = "> ",
    entry_prefix = "  ",
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
  },
  layout_config = {
    prompt_position = "bottom",
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
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
map('n', '<A-p>', ':lua require("telescope.builtin").find_files()<cr>', N)
map('n', '<A-g>', ':lua require("telescope.builtin").git_files()<cr>', N)
map('n', '<A-b>', ':lua require("telescope.builtin").buffers()<cr>', N)
map('n', '<A-f>', ':lua require("telescope.builtin").live_grep()<cr>', N)
-- map('n', '<A-h>', ':lua require("telescope.builtin").help_tags()<cr>', N)

return M
