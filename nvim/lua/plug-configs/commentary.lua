local map = vim.api.nvim_set_keymap

local options = { silent = true }

map('n', '<leader>/', 'gcc', options)
map('v', '<leader>/', 'gc', options)
