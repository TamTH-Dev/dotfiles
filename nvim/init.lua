require 'plugins.init'

local init_modules = {
   'core',
}

for _, module in ipairs(init_modules) do
   local is_loaded_success, error_message = pcall(require, module)
   if not is_loaded_success then
      error('Error loading '.. module..'\n\n'..error_message)
   end
end
