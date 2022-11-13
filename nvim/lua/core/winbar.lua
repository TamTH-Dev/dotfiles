local M = {}

local navic = require("nvim-navic")

M.winbar_filetype_exclude = {
  "help",
  "startify",
  "dashboard",
  "packer",
  "neogitstatus",
  "NvimTree",
  "Trouble",
  "alpha",
  "lir",
  "Outline",
  "spectre_panel",
  "toggleterm",
}

local excludes = function()
  if not vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
    return false
  end

  vim.opt_local.winbar = nil

  return true
end

local function get_modified()
  return "%#WinBarFilename#%f%*"
end

local function get_location()
  local location = navic.get_location()

  if location == "" or location == nil then
    return ""
  end

  return "%#WinBarContext#" .. "  " .. location .. "%*"
end

function M.get_winbar()
  if excludes() then
    return ""
  end

  local location = get_location()
  local modified = get_modified()

  if not navic.is_available() then
    return "%#WinBarSeparator#%*" .. modified .. "%#WinBarSeparator#%*"
  end

  return "%#WinBarSeparator#%*" .. modified .. location .. "%#WinBarSeparator#%*"
end

return M
