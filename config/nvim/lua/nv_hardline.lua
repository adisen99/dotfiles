-- Indent backline configuration

local M = {}

local codeshcool = {
  white = "#fbfbfb",
  light_gray = '#555e61',
  gray = "#2e373b",
  black = "#182227",
  blue = '#87afd7',
  red = "#dda790",
  aqua = "#b5d8f6",
  green = "#8bb664",
  yellow = "#e9c062",
  purple = "#bfabcb",
  cool = '#87afd7'
}

--[[ local apprentice = {
  white = "#fbfbfb",
  light_gray = '#585858',
  gray = "#444444",
  black = "#303030",
  blue = '#5fafaf',
  red = "#af5f5f",
  aqua = "#5f87af",
  green = "#87afd7",
  yellow = "#dad085",
  purple = "#8787af",
  cool = '#5fafaf'
} ]]

--[[ local modus = {
  white = "#e0e6f0",
  light_gray = "#a8a8a8",
  grey = "#323232",
  black = "#1e1e1e",
  blue = "#92baff",
  red = "#ffa0a0",
  aqua = "#90c4ed",
  green = "#88cf88",
  yellow = "#d2b580",
  purple = "#e0b2d6",
  cool = "#92baff"
} ]]

--[[ local rasmus = {
  white = "#d1d1d1",
  light_gray = "#6a6a69",
  grey = "#3a3a39",
  black = "#222221",
  blue = "#8db4d4",
  red = "#ff968c",
  aqua = "#7bb099",
  green = "#61957f",
  yellow = "#ffc591",
  purple = "#d39bc8",
  cool = "#8db4d4"
} ]]

local sections_cool = {         -- define sections
    {class = 'mode_cool', item = require('hardline.parts.mode').get_item},
    {class = 'cool', item = require('hardline.parts.git').get_item, hide = 100},
    {class = 'cool', item = '%='},
    -- {class = 'cool', item = require('hardline.parts.filetype').get_item, hide = 80},
    {class = 'cool', item = require('hardline.parts.fileicon').get_item, hide = 50},
    -- {class = 'cool', item = '~'},
    {class = 'cool', item = require('hardline.parts.filename').get_item},
    '%<',
    {class = 'cool', item = '%='},
    {class = 'cool', item = require('hardline.parts.wordcount').get_item, hide = 100},
    {class = 'cool', item = require('hardline.parts.server_progress').get_item, hide=80},
    {class = 'cool', item = require('hardline.parts.lsp').get_error},
    {class = 'cool', item = require('hardline.parts.lsp').get_warning},
    {class = 'cool', item = require('hardline.parts.whitespace').get_item},
    {class = 'cool', item = require('hardline.parts.line').get_item},
}

--[[ local sections_normal = {         -- define sections
    {class = 'mode', item = require('hardline.parts.mode').get_item},
    {class = 'high', item = require('hardline.parts.git').get_item, hide = 100},
    {class = 'med', item = '%='},
    -- {class = 'cool', item = require('hardline.parts.filetype').get_item, hide = 80},
    {class = 'med', item = require('hardline.parts.fileicon').get_item, hide = 50},
    -- {class = 'cool', item = '~'},
    {class = 'med', item = require('hardline.parts.filename').get_item},
    '%<',
    {class = 'med', item = '%='},
    {class = 'low', item = require('hardline.parts.wordcount').get_item, hide = 100},
    {class = 'low', item = require('hardline.parts.server_progress').get_item, hide=80},
    {class = 'error', item = require('hardline.parts.lsp').get_error},
    {class = 'warning', item = require('hardline.parts.lsp').get_warning},
    {class = 'warning', item = require('hardline.parts.whitespace').get_item},
    {class = 'high', item = require('hardline.parts.line').get_item},
} ]]

require('hardline').setup {
  theme = codeshcool,
  sections = sections_cool,
}

return M
