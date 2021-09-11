-- Custom key bindings
-- require 'keybindings'

-- Common options
-- require 'options'

-- Plugins configuration
-- require 'plug-configs.barbar'
-- require 'plug-configs.close-tag'
-- require 'plug-configs.cmp_config'
-- require 'plug-configs.commentary'
-- require 'plug-configs.dashboard'
-- require 'plug-configs.emmet'
-- require 'plug-configs.galaxyline'
-- require 'plug-configs.gitsigns'
-- require 'plug-configs.multi-cursors'
-- require 'plug-configs.neoformat'
-- require 'plug-configs.nvim-tree'
-- require 'plug-configs.saga'
-- require 'plug-configs.telescope'
-- require 'plug-configs.treesitter'

-- Language server protocol
-- require 'lsp'

-- Installed plugins
require 'plugins.init'


local init_modules = {
   "core",
}

for _, module in ipairs(init_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
 end
