local M = {}

-- Load config
-- @arg reload: boolean - whether to force reload
M.load_config = function(reload)
  -- Only do the stuff below one time, otherwise just return the set config
  if _G.DEFAULT_CONFIG ~= nil and not (reload or false) then
    return _G.DEFAULT_CONFIG
  end

  local default_config = 'default_config'
  -- Unload the modules if force reload
  if reload then
    package.loaded[default_config or false] = nil
  end

  -- Don't enclose in pcall, it better break when default config is faulty
  _G.DEFAULT_CONFIG = require(default_config)
  return _G.DEFAULT_CONFIG
end

M.map = function(mode, keys, cmd, opt)
  local options = { noremap = true, silent = true }
  if opt then
    options = vim.tbl_extend('force', options, opt)
  end
  vim.api.nvim_set_keymap(mode, keys, cmd, options)
end

return M
