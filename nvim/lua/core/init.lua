--[[ Load all core modules ]]
local core_modules = {
	"core.options",
	"core.autocmds",
	"core.mappings",
}

for _, module in ipairs(core_modules) do
	local is_loaded_success, error_message = pcall(require, module)

	if not is_loaded_success then
		error("Error loading " .. module .. "\n\n" .. error_message)
	end
end
