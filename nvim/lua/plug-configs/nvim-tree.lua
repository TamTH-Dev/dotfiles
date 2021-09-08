local map = vim.api.nvim_set_keymap

local options = { silent = true }

map('n', '<C-n>', ':NvimTreeToggle<CR>', options)
map('n', '<leader>r', ':NvimTreeRefresh<CR>', options)

-- vim.g.nvim_tree_icons = { git = { unstaged = '±', staged = '', deleted = '✗' } }
