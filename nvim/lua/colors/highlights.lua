local M = {}

--[[ Declare colors manually ]]
local colors = {
  bg = "#1a1b26",
  extraBg = "#1e2030",
  fg = "#c0caf5",
  red = "#f7768e",
  orange = "#ff9e64",
  green = "#9ece6a",
  magenta = "#bb9af7",
  blue = "#2ac3de",
  gray = "#565f89",
  darkGray = "#222436",
}

--[[ Define highlight color ]]
--@param[[ target String ]]
--@param[[ foreground String ]]
--@param[[ background String ]]
local set_highlight = function(target, foreground, background)
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
set_highlight("FloatBorder", colors.gray, colors.bg)
set_highlight("NormalFloat", nil, colors.bg)
set_highlight("VertSplit", colors.extraBg, nil)
set_highlight("WinSeparator", colors.extraBg, nil)
set_highlight("PmenuSel", nil, colors.gray)
set_highlight("PmenuThumb", nil, colors.gray)
set_highlight("PmenuSbar", nil, colors.gray)
set_highlight("PMenuBorder", colors.gray, nil)
set_highlight("Visual", colors.fg, colors.darkGray)
set_highlight("Search", colors.bg, colors.red)
set_highlight("ErrorMsg", colors.red, nil)
set_highlight("Error", colors.red, nil)
set_highlight("helpError", colors.red, nil)
set_highlight("DiagnosticError", colors.red, nil)
set_highlight("DiagnosticHint", colors.blue, nil)
set_highlight("NotifyERRORTitle", colors.red, nil)
set_highlight("NotifyERRORIcon", colors.red, nil)
set_highlight("ScrollbarError", colors.red, nil)
set_highlight("healthError", colors.red, nil)
set_highlight("CursorLineNr", colors.gray, nil)

--[[ Telescope ]]
set_highlight("TelescopeBorder", colors.gray, nil)
set_highlight("TelescopeResultsBorder", colors.gray, nil)
set_highlight("TelescopePromptBorder", colors.gray, nil)
set_highlight("TelescopePreviewBorder", colors.gray, nil)
set_highlight("TelescopeTitle", colors.orange, nil)
set_highlight("TelescopePromptPrefix", colors.magenta, nil)
set_highlight("TelescopeNormal", colors.gray, colors.bg)
set_highlight("TelescopeResultsNormal", colors.gray, colors.bg)
set_highlight("TelescopePromptNormal", colors.fg, colors.bg)
set_highlight("TelescopePreviewNormal", colors.gray, colors.bg)
set_highlight("TelescopePreviewMessage", colors.gray, colors.bg)
set_highlight("TelescopePreviewMessageFillchar", colors.fg, colors.bg)
set_highlight("TelescopeSelection", colors.fg, nil)
set_highlight("TelescopeSelectionCaret", colors.orange, nil)
set_highlight("TelescopeMultiSelection", colors.gray, nil)
set_highlight("TelescopeMatching", colors.blue, nil)

--[[ LSP ]]
set_highlight("DiagnosticFloatingError", colors.red, nil)
set_highlight("DiagnosticFloatingWarn", colors.orange, nil)
set_highlight("DiagnosticFloatingInfo", colors.magenta, nil)
set_highlight("DiagnosticFloatingHint", colors.blue, nil)
set_highlight("DiagnosticSignError", colors.red, nil)
set_highlight("DiagnosticSignWarn", colors.orange, nil)
set_highlight("DiagnosticSignInfo", colors.magenta, nil)
set_highlight("DiagnosticSignHint", colors.bue, nil)
set_highlight("DiagnosticVirtualTextError", colors.red, colors.bg)
set_highlight("DiagnosticVirtualTextWarn", colors.orange, colors.bg)
set_highlight("DiagnosticVirtualTextInfo", colors.magenta, colors.bg)
set_highlight("DiagnosticVirtualTextHint", colors.blue, colors.bg)
set_highlight("LspFloatWinNormal", nil, colors.bg)

--[[ Saga ]]
set_highlight("LspSagaDiagnosticBorder", colors.blue, nil)
set_highlight("LspSagaDiagnosticTruncateLine", colors.blue, nil)
set_highlight("LspSagaDiagnosticHeader", colors.fg, nil)
set_highlight("LspSagaErrorTrunCateLine", colors.red, nil)
set_highlight("LspSagaDiagnosticError", colors.red, nil)
set_highlight("LspSagaWarnTrunCateLine", colors.orange, nil)
set_highlight("LspSagaDiagnosticWarn", colors.orange, nil)
set_highlight("LspSagaInfoTrunCateLine", colors.magenta, nil)
set_highlight("LspSagaDiagnosticInfo", colors.magenta, nil)
set_highlight("LspSagaHintTrunCateLine", colors.blue, nil)
set_highlight("LspSagaDiagnosticHint", colors.blue, nil)
set_highlight("LspSagaFinderSelection", colors.blue, nil)
set_highlight("DiagnosticQuickFix", colors.green, nil)
set_highlight("DiagnosticMap", colors.orange, nil)
set_highlight("DiagnosticLineCol", colors.gray, nil)
set_highlight("TargetFileName", colors.fg, nil)

--[[ Trouble ]]
set_highlight("TroubleError", colors.red, nil)
set_highlight("TroubleWarn", colors.orange, nil)
set_highlight("TroubleInfo", colors.magenta, nil)
set_highlight("TroubleHint", colors.blue, nil)

--[[ Indent_blankline ]]
set_highlight("IndentBlanklineContextChar", colors.orange, nil)

--[[ Bufferline ]]
set_highlight("BufferLineIndicatorSelected", colors.red, nil)

--[[ NvimTree ]]
set_highlight("NvimTreeFolderIcon", colors.blue, nil)
set_highlight("NvimTreeNormal", nil, colors.bg)
set_highlight("NvimTreeLspDiagnosticsError", colors.red, nil)
set_highlight("NvimTreeCursorLineNr", colors.gray, nil)

--[[ Rainbow Treesitter ]]
set_highlight("rainbowcol1", colors.red, nil)
set_highlight("rainbowcol2", colors.orange, nil)
set_highlight("rainbowcol3", colors.orange, nil)
set_highlight("rainbowcol4", colors.green, nil)
set_highlight("rainbowcol5", colors.magenta, nil)
set_highlight("rainbowcol6", colors.blue, nil)
set_highlight("rainbowcol7", colors.fg, nil)

--[[ Gitsigns ]]
set_highlight("DiffAdd", colors.green, colors.bg)
set_highlight("DiffChange", colors.magenta, colors.bg)
set_highlight("DiffDelete", colors.red, colors.bg)
set_highlight("DiffText", colors.orange, colors.bg)

--[[ WinBar ]]
set_highlight("WinBarSeparator", colors.fg, nil)
set_highlight("WinBarFilename", colors.fg, nil)
set_highlight("WinBarContext", colors.fg, nil)

--[[ Export colors to use somewhere else ]]
M.colors = colors

return M
