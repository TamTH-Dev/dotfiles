local api = vim.api
local global = vim.g

-- Make Neovim wipe the buffers corresponding to the files deleted by Ranger
global.rnvimr_enable_ex = 1

-- Make Ranger to be hidden after picking a file
global.rnvimr_enable_picker = 1

-- Toggle ranger in nvim
api.nvim_set_keymap('n', '<C-n>', ':RnvimrToggle<CR>', { silent = true })

