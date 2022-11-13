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

local function get_file_path()
  local file_path = vim.api.nvim_eval_statusline("%f", {}).str
  file_path = file_path:gsub("/", " ᐅ ")

  return file_path
end

local function get_current_location()
  local location = navic.get_location()

  if location == "" or location == nil then
    return ""
  end

  return "%#WinBarContext#" .. " ᐅ " .. location .. "%*"
end

function M.get_winbar()
  if excludes() then
    return ""
  end

  local current_location = get_current_location()
  local file_path = get_file_path()

  if not navic.is_available() then
    return "%#WinBarSeparator#%*" .. file_path .. "%#WinBarSeparator#%*"
  end

  return "%#WinBarSeparator#%*" .. file_path .. current_location .. "%#WinBarSeparator#%*"
end

return M
