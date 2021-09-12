local utils = require 'core.utils'
local global = vim.g
local cmd = vim.cmd

local M = {}

-- If theme given, load given theme if given, otherwise nvchad_theme
M.init = function(theme)
   if not theme then
      theme = utils.load_config().ui.theme
   end

   -- Set the global theme, used at various places like theme switcher, highlights
   global.default_theme = theme
   local is_theme_loaded = pcall(require, theme)
   if is_theme_loaded then
      cmd('colorscheme '..theme)
      -- Unload to force reload
      package.loaded['colors.highlights' or false] = nil
      -- Then load the highlights
      require 'colors.highlights'
   else
      return false
   end
end

-- Returns a table of colors for given or current theme
-- TODO: Research more
M.get = function(theme)
   if not theme then
      theme = vim.g.default_theme
   end
   return require('')
end

return M
