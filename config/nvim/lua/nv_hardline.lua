-- Indent backline configuration

local M = {}

local colors = {
    white = "#fbfbfb",
    light_gray = '#555e61',
    gray = "#2e373b",
    black = "#182227",
    blue = '#87afd7',
    -- blue = '#5fafaf',
    red = "#dda790",
    aqua = "#b5d8f6",
    green = "#8bb664",
    yellow = "#e9c062",
    purple = "#bfabcb"
}

require('hardline').setup {
  -- theme = 'codeschool_dark',   -- change theme
  -- theme = 'jellybeans',   -- change theme
  theme = 'custom',
  custom_theme = colors,
}

return M
