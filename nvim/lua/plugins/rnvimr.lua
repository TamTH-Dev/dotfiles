-- Make Neovim wipe the buffers corresponding to the files deleted by Ranger
vim.g.rnvimr_enable_ex = 1

-- Make Ranger to be hidden after picking a file
vim.g.rnvimr_enable_picker = 1

-- Toggle ranger in nvim
vim.api.nvim_set_keymap('n', '<C-n>', ':RnvimrToggle<CR>', { silent = true })

