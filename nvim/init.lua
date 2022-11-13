--[[ Optimizations: ]]
--[[ + Cache for compiled lua modules ]]
--[[ + Improved default package loader for uncached module loads ]]
--[[ + Restoring the preloader ]]
require("impatient")

--[[ Bootstrap plugins manager ]]
require("plugins.init")

local init_modules = {
	"core",
}

--[[ Load modules ]]
for _, module in ipairs(init_modules) do
	local is_loaded_success, error_message = pcall(require, module)

	if not is_loaded_success then
		error("Error loading " .. module .. "\n\n" .. error_message)
	end
end
