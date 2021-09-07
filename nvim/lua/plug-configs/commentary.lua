local api = vim.api

local options = { silent = true }

api.nvim_set_keymap('n', '<leader>/', 'gcc', options)
api.nvim_set_keymap('v', '<leader>/', 'gc', options)
