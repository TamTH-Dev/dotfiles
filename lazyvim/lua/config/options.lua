-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

--[[ Leader key ]]
vim.g.mapleader = ","
--[[ Save buffer ]]
vim.api.nvim_set_keymap("n", "<leader>w", "<cmd>w!<CR>", { noremap = true, silent = true })
--[[ Quit buffer ]]
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>q<CR>", { noremap = true, silent = true })
--[[ Exit modes ]]
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
--[[ Move between windows ]]
vim.api.nvim_set_keymap("n", "<A-k>", "<C-W>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<C-W>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<C-W>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-h>", "<C-W>h", { noremap = true, silent = true })
