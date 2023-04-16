local M = {}

--[[ Declare colors manually ]]
local colors = {
  bg = "#24273A",
  mantle = "#1E2030",
  red = "#ED8796",
  peach = "#F5A97F",
  yellow = "#EED49F",
  green = "#A6DA95",
  teal = "#8BD5CA",
  sky = "#91D7E3",
  sapphire = "#7DC4E4",
  blue = "#8AADF4",
  lavender = "#b7bdf8",
  text = "#CAD3F5",
  surface2 = "#5B6078",
  surface0 = "#363A4F",
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
set_highlight("FloatBorder", colors.surface2, colors.bg)
set_highlight("NormalFloat", nil, colors.bg)
set_highlight("VertSplit", colors.mantle, nil)
set_highlight("WinSeparator", colors.mantle, nil)
set_highlight("PmenuSel", nil, colors.surface2)
set_highlight("PmenuThumb", nil, colors.surface2)
set_highlight("PmenuSbar", nil, colors.surface2)
set_highlight("PMenuBorder", colors.surface2, nil)
set_highlight("Visual", colors.text, colors.surface0)
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
set_highlight("CursorLineNr", colors.surface2, nil)

--[[ Telescope ]]
set_highlight("TelescopeBorder", colors.surface2, nil)
set_highlight("TelescopeResultsBorder", colors.surface2, nil)
set_highlight("TelescopePromptBorder", colors.surface2, nil)
set_highlight("TelescopePreviewBorder", colors.surface2, nil)
set_highlight("TelescopeTitle", colors.peach, nil)
set_highlight("TelescopePromptPrefix", colors.lavender, nil)
set_highlight("TelescopeNormal", colors.surface2, colors.bg)
set_highlight("TelescopeResultsNormal", colors.surface2, colors.bg)
set_highlight("TelescopePromptNormal", colors.text, colors.bg)
set_highlight("TelescopePreviewNormal", colors.surface2, colors.bg)
set_highlight("TelescopePreviewMessage", colors.surface2, colors.bg)
set_highlight("TelescopePreviewMessageFillchar", colors.text, colors.bg)
set_highlight("TelescopeSelection", colors.text, nil)
set_highlight("TelescopeSelectionCaret", colors.peach, nil)
set_highlight("TelescopeMultiSelection", colors.surface2, nil)
set_highlight("TelescopeMatching", colors.blue, nil)

--[[ LSP ]]
set_highlight("DiagnosticFloatingError", colors.red, nil)
set_highlight("DiagnosticFloatingWarn", colors.peach, nil)
set_highlight("DiagnosticFloatingInfo", colors.lavender, nil)
set_highlight("DiagnosticFloatingHint", colors.blue, nil)
set_highlight("DiagnosticSignError", colors.red, nil)
set_highlight("DiagnosticSignWarn", colors.peach, nil)
set_highlight("DiagnosticSignInfo", colors.lavender, nil)
set_highlight("DiagnosticSignHint", colors.bue, nil)
set_highlight("DiagnosticVirtualTextError", colors.red, colors.bg)
set_highlight("DiagnosticVirtualTextWarn", colors.peach, colors.bg)
set_highlight("DiagnosticVirtualTextInfo", colors.lavender, colors.bg)
set_highlight("DiagnosticVirtualTextHint", colors.blue, colors.bg)
set_highlight("LspFloatWinNormal", nil, colors.bg)

--[[ Saga ]]
set_highlight("LspSagaDiagnosticBorder", colors.blue, nil)
set_highlight("LspSagaDiagnosticTruncateLine", colors.blue, nil)
set_highlight("LspSagaDiagnosticHeader", colors.text, nil)
set_highlight("LspSagaErrorTrunCateLine", colors.red, nil)
set_highlight("LspSagaDiagnosticError", colors.red, nil)
set_highlight("LspSagaWarnTrunCateLine", colors.peach, nil)
set_highlight("LspSagaDiagnosticWarn", colors.peach, nil)
set_highlight("LspSagaInfoTrunCateLine", colors.lavender, nil)
set_highlight("LspSagaDiagnosticInfo", colors.lavender, nil)
set_highlight("LspSagaHintTrunCateLine", colors.blue, nil)
set_highlight("LspSagaDiagnosticHint", colors.blue, nil)
set_highlight("LspSagaFinderSelection", colors.blue, nil)
set_highlight("DiagnosticQuickFix", colors.green, nil)
set_highlight("DiagnosticMap", colors.peach, nil)
set_highlight("DiagnosticLineCol", colors.surface2, nil)
set_highlight("TargetFileName", colors.text, nil)

--[[ Trouble ]]
set_highlight("TroubleError", colors.red, nil)
set_highlight("TroubleWarn", colors.peach, nil)
set_highlight("TroubleInfo", colors.lavender, nil)
set_highlight("TroubleHint", colors.blue, nil)

--[[ Indent_blankline ]]
set_highlight("IndentBlanklineContextChar", colors.peach, nil)

--[[ Bufferline ]]
set_highlight("BufferLineIndicatorSelected", colors.red, nil)

--[[ NvimTree ]]
set_highlight("NvimTreeFolderIcon", colors.blue, nil)
set_highlight("NvimTreeNormal", nil, colors.bg)
set_highlight("NvimTreeLspDiagnosticsError", colors.red, nil)
set_highlight("NvimTreeCursorLineNr", colors.surface2, nil)

--[[ Rainbow Treesitter ]]
set_highlight("rainbowcol1", colors.red, nil)
set_highlight("rainbowcol2", colors.peach, nil)
set_highlight("rainbowcol3", colors.peach, nil)
set_highlight("rainbowcol4", colors.green, nil)
set_highlight("rainbowcol5", colors.lavender, nil)
set_highlight("rainbowcol6", colors.blue, nil)
set_highlight("rainbowcol7", colors.text, nil)

--[[ Gitsigns ]]
set_highlight("DiffAdd", colors.green, colors.bg)
set_highlight("DiffChange", colors.lavender, colors.bg)
set_highlight("DiffDelete", colors.red, colors.bg)
set_highlight("DiffText", colors.peach, colors.bg)

--[[ WinBar ]]
set_highlight("WinBarSeparator", colors.text, nil)
set_highlight("WinBarFilename", colors.text, nil)
set_highlight("WinBarContext", colors.text, nil)

--[[ Export colors to use somewhere else ]]
M.colors = colors

return M
