local map = vim.api.nvim_set_keymap

local opts = { silent = true }

map('n', '<leader>/', 'gcc', opts)
map('v', '<leader>/', 'gc', opts)
