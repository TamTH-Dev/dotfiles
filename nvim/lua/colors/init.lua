local utils = require("core.utils")
local global = vim.g
local cmd = vim.cmd

local M = {}

function M.init()
	local ui = utils.load_config().ui
	local theme = ui.theme
	local theme_loaded = pcall(require, theme)

	if not theme_loaded then
		return
	end

	--[[ Set colorscheme ]]
	cmd("colorscheme " .. theme)

	--[[ Unload to force reload ]]
	package.loaded["colors.highlights" or false] = nil
	--[[ Then load the highlights ]]
	require("colors.highlights")

	--[[ Set the global theme, used at various places like theme switcher, highlights ]]
	global.default_theme = theme
end

return M