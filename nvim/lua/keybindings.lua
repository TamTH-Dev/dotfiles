local map = vim.api.nvim_set_keymap
local global = vim.g

local opts = { silent = true }

-- Leader key
global.mapleader = ','

-- Fast saving
map('n', '<leader>w', ':w!<cr>', opts)

-- Fast quitting
map('n', '<leader>q', ':q<cr>', opts)

-- Split windows
map('n', '<leader>g/', ':vsplit<cr>', opts)
map('n', '<leader>g\\', ':split<cr>', opts)

-- Move between windows
map('n', '<A-j>', '<C-W>j', opts)
map('n', '<A-k>', '<C-W>k', opts)
map('n', '<A-h>', '<C-W>h', opts)
map('n', '<A-l>', '<C-W>l', opts)

-- " Disable highlight
map('n', '<leader><space>', ':nohl<cr>', opts)

-- Use tab with text block
map('v', '<Tab>', '>gv', opts)
map('v', '<S-Tab>', '<gv', opts)

-- Move next tab or previous tab
map('n', '<leader><Tab>', ':tabnext<cr>', opts)
map('n', '<leader><S-Tab>', ':tabprevious<cr>', opts)
map('n', '<leader>t', ':tabnew<cr>', opts)

-- Esc vim modes
map('i', 'jj', '<Esc>', opts)

-- Move vertically by visual line
map('n', 'j', 'gj', opts)
map('n', 'k', 'gk', opts)

-- Close all buffers except the last one
map('n', '<leader>cb', ':w <bar> %bd <bar> e# <bar> bd# <cr>', opts)
