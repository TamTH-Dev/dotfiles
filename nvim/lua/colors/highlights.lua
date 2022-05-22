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
  gray = '#4C566A',
  lightGray = '#616E88',
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
fg('FloatBorder', colors.lightGray)
bg('FloatBorder', colors.bg)
bg('NormalFloat', colors.bg)
fg('VertSplit', colors.extraBg)
fg('WinSeparator', colors.extraBg)
bg('PmenuSel', colors.gray)
bg('PmenuThumb', colors.lightGray)
bg('PmenuSbar', colors.lightGray)
fg('PMenuBorder', colors.lightGray)

-- Telescope
fg('TelescopeBorder', colors.lightGray)
fg('TelescopeResultsBorder', colors.lightGray)
fg('TelescopePromptBorder', colors.lightGray)
fg('TelescopePreviewBorder', colors.lightGray)
fg('TelescopeTitle', colors.yellow)
fg('TelescopePromptPrefix', colors.magenta)
fg('TelescopeNormal', colors.lightGray)
fg('TelescopeSelection', colors.fg)
fg('TelescopeSelectionCaret', colors.orange)
fg('TelescopeMultiSelection', colors.lightGray)
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
bg('LspFloatWinNormal', colors.bg)

-- Saga
fg('LspSagaRenameBorder', colors.lightGray)
fg('LspSagaHoverBorder', colors.lightGray)
fg('LspSagaSignatureHelpBorder', colors.lightGray )
fg('LspSagaCodeActionBorder', colors.lightGray)
fg('LspSagaDefPreviewBorder', colors.lightGray)
fg('LspSagaDiagnosticBorder', colors.lightGray)
fg('LspSagaLspFinderBorder', colors.lightGray)
fg('ProviderTruncateLine', colors.lightGray)
fg('LspSagaDiagnosticTruncateLine', colors.lightGray)
fg('LspSagaShTruncateLine', colors.lightGray)
fg('LspSagaDocTruncateLine', colors.lightGray)
fg('LspSagaCodeActionTruncateLine', colors.lightGray)
fg('DiagnosticTruncateLine', colors.lightGray)
fg('LspSagaCodeActionTitle', colors.blue)
fg('LspSagaBorderTitle', colors.blue)
fg('LspSagaDiagnosticHeader', colors.blue)
fg('LspDiagnosticsFloatingWarn', colors.blue)
fg('LspSagaCodeActionContent', colors.fg)
fg('LspDiagnosticsFloatingInfor', colors.fg)
fg('LspSagaFinderSelection', colors.fg)
fg('LspSagaAutoPreview', colors.lightGray)

-- Indent_blankline
fg('IndentBlanklineContextChar', colors.orange)

-- Bufferline
fg('BufferLineIndicatorSelected', colors.red)

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
fg('CmpItemAbbrMatchFuzzy', colors.blue)
fg('CmpItemAbbrMatch', colors.blue)

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
