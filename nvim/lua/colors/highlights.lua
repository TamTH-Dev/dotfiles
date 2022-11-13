local M = {}

--TODO:[[ Find the way to get colors from scheme ]]
--[[ Get color from current scheme ]]
--[[ local colors = require('colors').get() ]]

--[[ Declare colors manually ]]
local colors = {
  bg = "#24283b",
  extraBg = "#1a1b26",
  fg = "#c0caf5",
  red = "#f7768e",
  orange = "#ff9e64",
  green = "#9ece6a",
  magenta = "#bb9af7",
  blue = "#2ac3de",
  gray = "#414868",
  darkGray = "#303757",
}

--[[ Define highlight color ]]
--@param[[ target String ]]
--@param[[ foreground String ]]
--@param[[ background String ]]
local setHighlight = function(target, foreground, background)
  local opts = {}

  if foreground ~= nil then
    opts["fg"] = foreground
  end

  if background ~= nil then
    opts["bg"] = background
  end

  vim.api.nvim_set_hl(0, target, opts)
end

--[[ General ]]
setHighlight("FloatBorder", colors.gray, colors.bg)
setHighlight("NormalFloat", nil, colors.bg)
setHighlight("VertSplit", colors.extraBg, nil)
setHighlight("WinSeparator", colors.extraBg, nil)
setHighlight("PmenuSel", nil, colors.gray)
setHighlight("PmenuThumb", nil, colors.gray)
setHighlight("PmenuSbar", nil, colors.gray)
setHighlight("PMenuBorder", colors.gray, nil)
setHighlight("Visual", colors.fg, colors.darkGray)
setHighlight("Search", colors.bg, colors.red)
setHighlight("ErrorMsg", colors.red, nil)
setHighlight("Error", colors.red, nil)
setHighlight("helpError", colors.red, nil)
setHighlight("DiagnosticError", colors.red, nil)
setHighlight("DiagnosticHint", colors.blue, nil)
setHighlight("NotifyERRORTitle", colors.red, nil)
setHighlight("NotifyERRORIcon", colors.red, nil)
setHighlight("ScrollbarError", colors.red, nil)
setHighlight("healthError", colors.red, nil)
setHighlight("CursorLineNr", colors.gray, nil)

--[[ Telescope ]]
setHighlight("TelescopeBorder", colors.gray, nil)
setHighlight("TelescopeResultsBorder", colors.gray, nil)
setHighlight("TelescopePromptBorder", colors.gray, nil)
setHighlight("TelescopePreviewBorder", colors.gray, nil)
setHighlight("TelescopeTitle", colors.orange, nil)
setHighlight("TelescopePromptPrefix", colors.magenta, nil)
setHighlight("TelescopeNormal", colors.gray, colors.bg)
setHighlight("TelescopeResultsNormal", colors.gray, colors.bg)
setHighlight("TelescopePromptNormal", colors.fg, colors.bg)
setHighlight("TelescopePreviewNormal", colors.gray, colors.bg)
setHighlight("TelescopePreviewMessage", colors.gray, colors.bg)
setHighlight("TelescopePreviewMessageFillchar", colors.fg, colors.bg)
setHighlight("TelescopeSelection", colors.fg, nil)
setHighlight("TelescopeSelectionCaret", colors.orange, nil)
setHighlight("TelescopeMultiSelection", colors.gray, nil)
setHighlight("TelescopeMatching", colors.blue, nil)

--[[ LSP ]]
setHighlight("DiagnosticFloatingError", colors.red, nil)
setHighlight("DiagnosticFloatingWarn", colors.orange, nil)
setHighlight("DiagnosticFloatingInfo", colors.magenta, nil)
setHighlight("DiagnosticFloatingHint", colors.blue, nil)
setHighlight("DiagnosticSignError", colors.red, nil)
setHighlight("DiagnosticSignWarn", colors.orange, nil)
setHighlight("DiagnosticSignInfo", colors.magenta, nil)
setHighlight("DiagnosticSignHint", colors.bue, nil)
setHighlight("DiagnosticVirtualTextError", colors.red, colors.bg)
setHighlight("DiagnosticVirtualTextWarn", colors.orange, colors.bg)
setHighlight("DiagnosticVirtualTextInfo", colors.magenta, colors.bg)
setHighlight("DiagnosticVirtualTextHint", colors.blue, colors.bg)
setHighlight("LspFloatWinNormal", nil, colors.bg)

--[[ Saga ]]
setHighlight("LspSagaDiagnosticBorder", colors.blue, nil)
setHighlight("LspSagaDiagnosticTruncateLine", colors.blue, nil)
setHighlight("LspSagaDiagnosticHeader", colors.fg, nil)
setHighlight("LspSagaErrorTrunCateLine", colors.red, nil)
setHighlight("LspSagaDiagnosticError", colors.red, nil)
setHighlight("LspSagaWarnTrunCateLine", colors.orange, nil)
setHighlight("LspSagaDiagnosticWarn", colors.orange, nil)
setHighlight("LspSagaInfoTrunCateLine", colors.magenta, nil)
setHighlight("LspSagaDiagnosticInfo", colors.magenta, nil)
setHighlight("LspSagaHintTrunCateLine", colors.blue, nil)
setHighlight("LspSagaDiagnosticHint", colors.blue, nil)
setHighlight("LspSagaFinderSelection", colors.blue, nil)
setHighlight("DiagnosticQuickFix", colors.green, nil)
setHighlight("DiagnosticMap", colors.orange, nil)
setHighlight("DiagnosticLineCol", colors.gray, nil)
setHighlight("TargetFileName", colors.fg, nil)

--[[ Trouble ]]
setHighlight("TroubleError", colors.red, nil)
setHighlight("TroubleWarn", colors.orange, nil)
setHighlight("TroubleInfo", colors.magenta, nil)
setHighlight("TroubleHint", colors.blue, nil)

--[[ Indent_blankline ]]
setHighlight("IndentBlanklineContextChar", colors.orange, nil)

--[[ Bufferline ]]
setHighlight("BufferLineIndicatorSelected", colors.red, nil)

--[[ NvimTree ]]
setHighlight("NvimTreeFolderIcon", colors.blue, nil)
setHighlight("NvimTreeNormal", nil, colors.bg)
setHighlight("NvimTreeLspDiagnosticsError", colors.red, nil)
setHighlight("NvimTreeCursorLineNr", colors.gray, nil)

--[[ Rainbow Treesitter ]]
setHighlight("rainbowcol1", colors.red, nil)
setHighlight("rainbowcol2", colors.orange, nil)
setHighlight("rainbowcol3", colors.orange, nil)
setHighlight("rainbowcol4", colors.green, nil)
setHighlight("rainbowcol5", colors.magenta, nil)
setHighlight("rainbowcol6", colors.blue, nil)
setHighlight("rainbowcol7", colors.fg, nil)

--[[ Gitsigns ]]
setHighlight("DiffAdd", colors.green, colors.bg)
setHighlight("DiffChange", colors.magenta, colors.bg)
setHighlight("DiffDelete", colors.red, colors.bg)
setHighlight("DiffText", colors.orange, colors.bg)

--[[ WinBar ]]
setHighlight("WinBarSeparator", colors.fg, nil)
setHighlight("WinBarFilename", colors.fg, nil)
setHighlight("WinBarContext", colors.fg, nil)

--[[ Export colors to use somewhere else ]]
M.colors = colors

return M
