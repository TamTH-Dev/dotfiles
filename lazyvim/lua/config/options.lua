-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--[[ Leader key ]]
vim.g.mapleader = ","
--[[ Save buffer ]]
map("n", "<leader>w", "<cmd>w!<CR>", opts)
--[[ Quit buffer ]]
map("n", "<leader>q", "<cmd>q<CR>", opts)
--[[ Format buffer ]]
map("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
--[[ Exit modes ]]
map("i", "jj", "<Esc>", opts)

--[[ Move between windows ]]
map("n", "<A-k>", "<C-W>k", opts)
map("n", "<A-l>", "<C-W>l", opts)
map("n", "<A-j>", "<C-W>j", opts)
map("n", "<A-h>", "<C-W>h", opts)
