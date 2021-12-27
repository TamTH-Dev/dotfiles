local M = {}

local cmd = vim.cmd

-- TODO: Find the way to get colors from scheme
-- Get color from current scheme
-- local colors = require('colors').get()

-- Declare colors manually
local colors = {
  bg = '#1a1b26',
  stormBg = '#24283b',
  fg = '#c0caf5',
  red = '#f7768e',
  orange = '#ff9e64',
  brown = '#e0af68',
  yellow = '#f1fa8c',
  green = '#9ece6a',
  magenta = '#bb9af7',
  blue = '#2ac3de',
  cyan = '#7dcfff',
  lightBlue = '#73daca',
  gray = '#414868',
}

-- Define fg color
-- @param group Group
-- @param color Color
local fg = function(group, color)
   cmd('hi '..group..' guifg='.. color)
end

-- Define bg color
-- @param group Group
-- @param color Color
local bg = function(group, color)
   cmd('hi '..group..' guibg='.. color)
end

-- General
fg('FloatBorder', colors.blue)

-- Telescope
fg('TelescopeBorder', colors.blue)
fg('TelescopePromptPrefix', colors.magenta)
fg('TelescopeNormal', colors.gray)
fg('TelescopeSelection', colors.fg)
fg('TelescopeSelectionCaret', colors.orange)
fg('TelescopeMultiSelection', colors.gray)
fg('TelescopeMatching', colors.blue)

-- LSP
fg('DiagnosticFloatingError', colors.red)
fg('DiagnosticFloatingWarn', colors.orange)
fg('DiagnosticFloatingInfo', colors.magenta)
fg('DiagnosticFloatingHint', colors.blue)
fg('DiagnosticSignError', colors.red)
fg('DiagnosticSignWarn', colors.orange)
fg('DiagnosticSignInfo', colors.magenta)
fg('DiagnosticSignHint', colors.blue)
fg('DiagnosticVirtualTextError', colors.red)
fg('DiagnosticVirtualTextWarn', colors.orange)
fg('DiagnosticVirtualTextInfo', colors.magenta)
fg('DiagnosticVirtualTextHint', colors.blue)
bg('DiagnosticVirtualTextError', 'default')
bg('DiagnosticVirtualTextWarn', 'default')
bg('DiagnosticVirtualTextInfo', 'default')
bg('DiagnosticVirtualTextHint', 'default')

-- Indent_blankline
fg('IndentBlanklineContextChar', colors.orange)

-- Barbar
bg('BufferCurrent', colors.stormBg)
fg('BufferCurrentSign', colors.red)
bg('BufferCurrentSign', colors.stormBg)
fg('BufferCurrentMod', colors.blue)
bg('BufferCurrentMod', colors.stormBg)
fg('BufferVisible', colors.fg)
bg('BufferVisible', colors.bg)
fg('BufferVisibleIndex', colors.fg)
bg('BufferVisibleIndex', colors.bg)
fg('BufferVisibleMod', colors.fg)
bg('BufferVisibleMod', colors.bg)
fg('BufferVisibleSign', colors.magenta)
bg('BufferVisibleSign', colors.bg)
fg('BufferVisibleTarget', colors.fg)
bg('BufferVisibleTarget', colors.bg)

-- NvimTree
fg('NvimTreeFolderIcon', colors.blue)

-- Export colors to use somewhere else
M.colors = colors
return M
