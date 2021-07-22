local gl = require('galaxyline')
local gls = gl.section
local condition = require('galaxyline.condition')
gl.short_line_list = {'packer','NvimTree'}

local colors = {
  white = "#fbfbfb",
  light_gray = '#555e61',
  gray = "#2e373b",
  black = "#182227",
  blue = '#94aadb',
  red = "#dda790",
  aqua = "#b5d8f6",
  green = "#8bb664",
  yellow = "#e9c062",
  purple = "#bfabcb"
}

-- Colors
local mode_color_fg = function()
 local mode_colors_fg = {
   [110] = colors.white,
   [105] = colors.black,
   [99] = colors.red,
   [116] = colors.white,
   [118] = colors.black,
   [86] = colors.black,
   [22] = colors.black,
   [82] = colors.yellow,
   [115] = colors.yellow,
   [83] = colors.yellow
 }

 -- Mode colors
 local color_fg = mode_colors_fg[vim.fn.mode():byte()]

 if color_fg ~= nil then
   return color_fg
  else
    return colors.white
 end
end


local mode_color_bg = function()
 local mode_colors_bg = {
   [110] = colors.gray,
   [105] = colors.blue,
   [99] = colors.gray,
   [116] = colors.gray,
   [118] = colors.blue,
   [86] = colors.blue,
   [22] = colors.blue,
   [82] = colors.gray,
   [115] = colors.gray,
   [83] = colors.gray
 }

 local color_bg = mode_colors_bg[vim.fn.mode():byte()]

 if color_bg ~= nil then
   return color_bg
  else
    return colors.gray
 end
end

-- locla helper functions

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

local is_file = function()
  return vim.bo.buftype ~= 'nofile'
end

local function has_value(tab, val)
  for _, v in ipairs(tab) do
    if v[1] == val then
      return true
    end
  end
  return false
end

gls.left[1] = {
  ViMode = {
    provider = function()
      local alias = {
        [110] = 'NORMAL',
        [105] = 'INSERT',
        [99] = 'COMMAND',
        [116] = 'TERM',
        [118] = 'VISUAL',
        [86] = 'V-LINE',
        [22] = 'V-BLOCK',
        [82] = 'REPLACE',
        [115] = 'SELECT',
        [83] = 'S-LINE'
      }
      vim.api.nvim_command('hi GalaxyViMode guibg=' .. mode_color_bg())
      vim.api.nvim_command('hi GalaxyViMode guifg=' .. mode_color_fg())
      local mode = alias[vim.fn.mode():byte()]
      return '  ' .. mode .. ' '
    end,
    highlight = { colors.gray,colors.gray, 'bold' },
  },
}

gls.left[2] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = '  +',
    highlight = {colors.black, colors.blue},
    -- seperator = '  ',
  }
}

gls.left[3] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = '  ~',
    highlight = {colors.black, colors.blue},
    seperator = '  ',
  }
}

gls.left[4] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = '  -',
    highlight = {colors.black, colors.blue},
    seperator = '  ',
  }
}

gls.left[5] = {
  GitBranch = {
    provider = { function()
      return '    '
    end, 'GitBranch' },
    condition = condition.check_git_workspace,
    highlight = {colors.black,colors.blue,'bold'},
  }
}

gls.left[6] = {
  FileIcon = {
    provider = { function()
      return '   '
    end, 'FileIcon' },
    condition = condition.buffer_not_empty,
    highlight = { colors.black, colors.blue }
  }
}

gls.left[7] = {
  FileName = {
    provider = { function()
      return ' '
    end, 'FileName' },
    condition = function()
      return is_file() and checkwidth()
    end,
    highlight = { colors.black, colors.blue },
    },
}

gls.right[1] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = ' E: ',
    -- condition = condition.check_active_lsp,
    highlight = { colors.black, colors.blue }
  }
}

gls.right[2] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = ' W: ',
    -- condition = condition.check_active_lsp,
    highlight = { colors.black, colors.blue }
  }
}

gls.right[3] = {
  DiagnosticInfo = {
    provider =  'DiagnosticInfo',
    icon = ' I: ',
    -- condition = condition.check_active_lsp,
    highlight = { colors.black, colors.blue }
  }
}

gls.right[4] = {
  FileTypeName = {
    provider = function()
      return '  ' .. vim.bo.filetype .. '  '
    end,
    highlight = { colors.black, colors.blue }
  }
}

gls.right[5] = {
  LineInfo = {
    provider = { function()
      return '  '
    end, 'LineColumn' },
    highlight = {colors.white,colors.gray},
  },
}

gls.right[6] = {
  LinePercent = {
    provider = { function()
      return '  '
    end, 'LinePercent' },
    highlight = {colors.white,colors.gray},
  }
}

-- Short statusline

--[[ gls.short_line_left[1] = {
  FileIcon = {
    provider = { function()
      return '   '
    end, 'FileIcon' },
    condition = function ()
     return condition.buffer_not_empty and has_value(gl.short_line_list, vim.bo.filetype)
    end,
    highlight = { colors.light_gray, colors.black }
  }
}

gls.short_line_left[2] = {
  FileName = {
    provider = { function()
      return ' '
    end, 'FileName' },
    condition = condition.buffer_not_empty,
    highlight = { colors.light_gray, colors.black }
  }
}

gls.short_line_right = {
  LinePercent = {
    provider = { function()
      return '  '
    end, 'LinePercent' },
    highlight = { colors.light_gray, colors.black }
  }
} ]]

-- Force manual load so that nvim boots with a status line
gl.load_galaxyline()
