local M = {}

local cmd = vim.cmd

-- TODO: Find the way to get colors from scheme
-- Get color from current scheme
-- local colors = require('colors').get()

-- Declare colors manually
local colors = {
  bg = '#2E3440',
  extraBg = '#3B4252',
  fg = '#D8DEE9',
  red = '#BF616A',
  orange = '#D08770',
  yellow = '#EBCB8B',
  green = '#A3BE8C',
  magenta = '#B48EAD',
  blue = '#81A1C1',
  gray = '#434C5E',
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
bg('FloatBorder', colors.bg)
bg('NormalFloat', colors.bg)
fg('VertSplit', colors.extraBg)
fg('WinSeparator', colors.extraBg)
bg('PmenuSel', '#4C566A')

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
bg('BufferCurrent', colors.extraBg)
fg('BufferCurrentSign', colors.magenta)
bg('BufferCurrentSign', colors.extraBg)
fg('BufferCurrentMod', colors.blue)
bg('BufferCurrentMod', colors.extraBg)
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

-- Fzf
fg('fzf1', colors.fg)
bg('fzf1', colors.extraBg)
fg('fzf2', colors.fg)
bg('fzf2', colors.extraBg)
fg('fzf3', colors.fg)
bg('fzf3', colors.extraBg)

-- Rainbow Treesitter
fg('rainbowcol1', colors.red)
fg('rainbowcol2', colors.orange)
fg('rainbowcol3', colors.yellow)
fg('rainbowcol4', colors.green)
fg('rainbowcol5', colors.magenta)
fg('rainbowcol6', colors.blue)
fg('rainbowcol7', colors.fg)

-- Cmp
fg('CmpItemKindVariable', colors.blue)
fg('CmpItemKindInterface', colors.magenta)
fg('CmpItemKindText', colors.magenta)
fg('CmpItemKindFunction', colors.magenta)
fg('CmpItemKindMethod', colors.blue)
fg('CmpItemKindKeyword', colors.blue)
fg('CmpItemKindProperty', colors.blue)
fg('CmpItemKindUnit', colors.blue)

-- Gitsigns
bg('DiffAdd', colors.green)
fg('DiffAdd', colors.bg)
bg('DiffChange', colors.magenta)
fg('DiffChange', colors.bg)
bg('DiffDelete', colors.red)
fg('DiffDelete', colors.bg)
bg('DiffText', colors.yellow)
fg('DiffText', colors.bg)

-- Export colors to use somewhere else
M.colors = colors

return M
