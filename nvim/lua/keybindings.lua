local map = vim.api.nvim_set_keymap
local global = vim.g

local options = { silent = true }

-- Leader key
global.mapleader = ','

-- Fast saving
map('n', '<leader>w', ':w!<cr>', options)

-- Fast quitting
map('n', '<leader>q', ':q<cr>', options)

-- Split windows
map('n', '<leader>g/', ':vsplit<cr>', options)
map('n', '<leader>g\\', ':split<cr>', options)

-- Move between windows
map('n', '<A-j>', '<C-W>j', options)
map('n', '<A-k>', '<C-W>k', options)
map('n', '<A-h>', '<C-W>h', options)
map('n', '<A-l>', '<C-W>l', options)

-- " Disable highlight
map('n', '<leader><space>', ':nohl<cr>', options)

-- Use tab with text block
map('v', '<Tab>', '>gv', options)
map('v', '<S-Tab>', '<gv', options)

-- Move next tab or previous tab
map('n', '<leader><Tab>', ':tabnext<cr>', options)
map('n', '<leader><S-Tab>', ':tabprevious<cr>', options)
map('n', '<leader>t', ':tabnew<cr>', options)

-- Esc vim modes
map('i', 'jj', '<Esc>', options)

-- Move vertically by visual line
map('n', 'j', 'gj', options)
map('n', 'k', 'gk', options)

-- Close all buffers except the last one
map('n', '<leader>cb', ':w <bar> %bd <bar> e# <bar> bd# <cr>', options)

-- Go to specific tab by number
-- for i = 1, 10, 1 do
--   map('n', '<leader>' .. i, i .. 'gt', options)
-- end
