local api = vim.api

local options = { silent = true }

local set_keymap = function(mode, boundTo, boundFrom, options)
  api.nvim_set_keymap(mode, boundTo, boundFrom, options)
end

set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', options)
set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', options)
