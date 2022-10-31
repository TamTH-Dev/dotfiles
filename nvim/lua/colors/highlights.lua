local M = {}

local cmd = vim.cmd

--TODO:[[ Find the way to get colors from scheme ]]
--[[ Get color from current scheme ]]
--[[ local colors = require('colors').get() ]]

--[[ Declare colors manually ]]
local colors = {
  bg        = '#24283b',
  extraBg   = '#1a1b26',
  fg        = '#c0caf5',
  red       = '#f7768e',
  orange    = '#ff9e64',
  green     = '#9ece6a',
  magenta   = '#bb9af7',
  blue      = '#2ac3de',
  gray      = '#414868',
  darkGray = '#303757',
}

--[[ Define fg color ]]
--@param[[ group Group ]]
--@param[[ color Color ]]
local fg = function(group, color)
   cmd('hi '..group..' guifg='.. color)
end

--[[ Define bg color ]]
--@param[[ group Group ]]
--@param[[ color Color ]]
local bg = function(group, color)
   cmd('hi '..group..' guibg='.. color)
end

-- General
fg('FloatBorder',          colors.gray)
bg('FloatBorder',          colors.bg)
bg('NormalFloat',          colors.bg)
fg('VertSplit',            colors.extraBg)
fg('WinSeparator',         colors.extraBg)
bg('PmenuSel',             colors.gray)
bg('PmenuThumb',           colors.gray)
bg('PmenuSbar',            colors.gray)
fg('PMenuBorder',          colors.gray)
fg('Visual',               colors.fg)
bg('Visual',               colors.darkGray)
fg('Search',               colors.bg)
bg('Search',               colors.red)
fg('ErrorMsg',             colors.red)
fg('Error',                colors.red)
fg('helpError',            colors.red)
fg('DiagnosticError',      colors.red)
fg('DiagnosticHint',       colors.blue)
fg('NotifyERRORTitle',     colors.red)
fg('NotifyERRORIcon',      colors.red)
fg('ScrollbarError',       colors.red)
fg('healthError',          colors.red)
fg('CursorLineNr',         colors.gray)

--[[ Telescope ]]
fg('TelescopeBorder',                 colors.gray)
fg('TelescopeResultsBorder',          colors.gray)
fg('TelescopePromptBorder',           colors.gray)
fg('TelescopePreviewBorder',          colors.gray)
fg('TelescopeTitle',                  colors.orange)
fg('TelescopePromptPrefix',           colors.magenta)
fg('TelescopeNormal',                 colors.gray)
bg('TelescopeNormal',                 colors.bg)
fg('TelescopeResultsNormal',          colors.gray)
bg('TelescopeResultsNormal',          colors.bg)
fg('TelescopePromptNormal',           colors.fg)
bg('TelescopePromptNormal',           colors.bg)
fg('TelescopePreviewNormal',          colors.gray)
bg('TelescopePreviewNormal',          colors.bg)
fg('TelescopePreviewMessage',         colors.gray)
bg('TelescopePreviewMessage',         colors.bg)
fg('TelescopePreviewMessageFillchar', colors.fg)
bg('TelescopePreviewMessageFillchar', colors.bg)
fg('TelescopeSelection',              colors.fg)
fg('TelescopeSelectionCaret',         colors.orange)
fg('TelescopeMultiSelection',         colors.gray)
fg('TelescopeMatching',               colors.blue)

--[[ LSP ]]
fg('DiagnosticFloatingError',    colors.red)
fg('DiagnosticFloatingWarn',     colors.orange)
fg('DiagnosticFloatingInfo',     colors.magenta)
fg('DiagnosticFloatingHint',     colors.blue)
fg('DiagnosticSignError',        colors.red)
fg('DiagnosticSignWarn',         colors.orange)
fg('DiagnosticSignInfo',         colors.magenta)
fg('DiagnosticSignHint',         colors.blue)
fg('DiagnosticVirtualTextError', colors.red)
fg('DiagnosticVirtualTextWarn',  colors.orange)
fg('DiagnosticVirtualTextInfo',  colors.magenta)
fg('DiagnosticVirtualTextHint',  colors.blue)
bg('DiagnosticVirtualTextError', 'default')
bg('DiagnosticVirtualTextWarn',  'default')
bg('DiagnosticVirtualTextInfo',  'default')
bg('DiagnosticVirtualTextHint',  'default')
bg('LspFloatWinNormal',          colors.bg)

--[[ Saga ]]
fg('LspSagaDiagnosticBorder',       colors.blue)
fg('LspSagaDiagnosticTruncateLine', colors.blue)
fg('LspSagaDiagnosticHeader',       colors.fg)
fg('LspSagaErrorTrunCateLine',      colors.red)
fg('LspSagaDiagnosticError',        colors.red)
fg('LspSagaWarnTrunCateLine',       colors.orange)
fg('LspSagaDiagnosticWarn',         colors.orange)
fg('LspSagaInfoTrunCateLine',       colors.magenta)
fg('LspSagaDiagnosticInfo',         colors.magenta)
fg('LspSagaHintTrunCateLine',       colors.blue)
fg('LspSagaDiagnosticHint',         colors.blue)
fg('LspSagaFinderSelection',        colors.blue)
fg('DiagnosticQuickFix',            colors.green)
fg('DiagnosticMap',                 colors.orange)
fg('DiagnosticLineCol',             colors.gray)
fg('TargetFileName',                colors.fg)

--[[ Trouble ]]
fg('TroubleError', colors.red)
fg('TroubleWarn',  colors.orange)
fg('TroubleInfo',  colors.magenta)
fg('TroubleHint',  colors.blue)

--[[ Indent_blankline ]]
fg('IndentBlanklineContextChar', colors.orange)

--[[ Bufferline ]]
fg('BufferLineIndicatorSelected', colors.red)

--[[ NvimTree ]]
fg('NvimTreeFolderIcon',          colors.blue)
bg('NvimTreeNormal',              colors.bg)
fg('NvimTreeLspDiagnosticsError', colors.red)
fg('NvimTreeCursorLineNr',        colors.gray)

--[[ Fzf ]]
fg('fzf1', colors.fg)
fg('fzf2', colors.fg)
fg('fzf3', colors.fg)

--[[ Rainbow Treesitter ]]
fg('rainbowcol1', colors.red)
fg('rainbowcol2', colors.orange)
fg('rainbowcol3', colors.orange)
fg('rainbowcol4', colors.green)
fg('rainbowcol5', colors.magenta)
fg('rainbowcol6', colors.blue)
fg('rainbowcol7', colors.fg)

--[[ Gitsigns ]]
bg('DiffAdd',    colors.bg)
fg('DiffAdd',    colors.green)
bg('DiffChange', colors.bg)
fg('DiffChange', colors.magenta)
bg('DiffDelete', colors.bg)
fg('DiffDelete', colors.red)
bg('DiffText',   colors.bg)
fg('DiffText',   colors.orange)

--[[ Export colors to use somewhere else ]]
M.colors = colors

return M
