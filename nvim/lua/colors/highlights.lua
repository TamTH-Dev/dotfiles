local M = {}

local cmd = vim.cmd

-- TODO: Find the way to get colors from scheme
-- Get color from current scheme
-- local colors = require('colors').get()

-- Declare colors manually
local colors = {
  bg = '#1a1b26',
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

-- Telescope
fg('TelescopeBorder', colors.blue)
fg('TelescopePromptPrefix', colors.magenta)
fg('TelescopeNormal', colors.fg)
fg('TelescopeSelection', colors.blue)
fg('TelescopeSelectionCaret', colors.blue)
fg('TelescopeMultiSelection', colors.fg)
fg('TelescopeMatching', colors.orange)

-- LSP
fg('LspDiagnosticsDefaultError', colors.red)
fg('LspDiagnosticsDefaultWarning', colors.orange)
fg('LspDiagnosticsDefaultInformation', colors.magenta)
fg('LspDiagnosticsDefaultHint', colors.blue)
fg('LspDiagnosticsVirtualTextError', colors.red)
fg('LspDiagnosticsVirtualTextWarning', colors.orange)
fg('LspDiagnosticsVirtualTextInformation', colors.magenta)
fg('LspDiagnosticsVirtualTextHint', colors.blue)
bg('LspDiagnosticsVirtualTextError', 'default')
bg('LspDiagnosticsVirtualTextWarning', 'default')
bg('LspDiagnosticsVirtualTextInformation', 'default')
bg('LspDiagnosticsVirtualTextHint', 'default')

-- Indent_blankline
fg('IndentBlanklineContextChar', colors.orange)

-- Barbar
-- fg('BufferCurrentSign', colors.red)
-- fg('BufferCurrentMod', colors.blue)
-- fg('BufferVisible', colors.fg)
-- bg('BufferVisible', colors.bg)
-- fg('BufferVisibleIndex', colors.fg)
-- bg('BufferVisibleIndex', colors.bg)
-- fg('BufferVisibleMod', colors.fg)
-- bg('BufferVisibleMod', colors.bg)
-- fg('BufferVisibleSign', colors.magenta)
-- bg('BufferVisibleSign', colors.bg)
-- fg('BufferVisibleTarget', colors.fg)
-- bg('BufferVisibleTarget', colors.bg)

-- NvimTree
fg('NvimTreeFolderIcon', colors.blue)

-- Export colors to use somewhere else
M.colors = colors
return M
