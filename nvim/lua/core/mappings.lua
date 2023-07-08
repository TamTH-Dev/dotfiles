local utils = require("core.utils")
local map = vim.api.nvim_set_keymap
local global = vim.g
local opts = { noremap = true, silent = true }

--[[ Leader key ]]
global.mapleader = ","
--[[ Save buffer ]]
map("n", "<leader>w", "<cmd>w!<CR>", opts)
--[[ Quit buffer ]]
map("n", "<leader>q", "<cmd>q<CR>", opts)
--[[ Format buffer ]]
map("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
--[[ Exit modes ]]
map("i", "jj", "<Esc>", opts)
--[[ Split windows ]]
map("n", "<leader>g/", "<cmd>vsplit<CR>", opts)
map("n", "<leader>g\\", "<cmd>split<CR>", opts)
--[[ Move between windows ]]
map("n", "<A-k>", "<C-W>k", opts)
map("n", "<A-l>", "<C-W>l", opts)
map("n", "<A-j>", "<C-W>j", opts)
map("n", "<A-h>", "<C-W>h", opts)
--[[ Turn off highlight ]]
map("n", "<leader><space>", "<cmd>nohl<CR>", opts)
--[[ Use tab with text block ]]
map("v", "<Tab>", ">gv", opts)
map("v", "<S-Tab>", "<gv", opts)
--[[ Open new buffer ]]
map("n", "<leader>t", "<cmd>tabnew<CR>", opts)
--[[ Move vertically by visual line ]]
map("n", "j", "gj", opts)
map("n", "k", "gk", opts)
--[[ A little bit upgrade for vertical movements ]]
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
--[[ Paste in visual without removing current buffer ]]
map("x", "<leader>p", '"_dP', opts)
