local api = vim.api
local global = vim.g

local options = { silent = true }

local set_keymap = function(mode, boundTo, boundFrom, options)
  api.nvim_set_keymap(mode, boundTo, boundFrom, options)
end

-- Leader key
global.mapleader = ','

-- Fast saving
set_keymap('n', '<leader>w', ':w!<cr>', options)

-- Fast quitting
set_keymap('n', '<leader>q', ':q<cr>', options)

-- Split windows
set_keymap('n', '<leader>g/', ':vsplit<cr>', options)
set_keymap('n', '<leader>g\\', ':split<cr>', options)

-- Move between windows
set_keymap('n', '<A-j>', '<C-W>j', options)
set_keymap('n', '<A-k>', '<C-W>k', options)
set_keymap('n', '<A-h>', '<C-W>h', options)
set_keymap('n', '<A-l>', '<C-W>l', options)

-- " Disable highlight
set_keymap('n', '<leader><space>', ':nohl<cr>', options)

-- Use tab with text block
set_keymap('v', '<Tab>', '>gv', options)
set_keymap('v', '<S-Tab>', '<gv', options)

-- Move next tab or previous tab
set_keymap('n', '<leader><Tab>', ':tabnext<cr>', options)
set_keymap('n', '<leader><S-Tab>', ':tabprevious<cr>', options)
set_keymap('n', '<leader>t', ':tabnew<cr>', options)

-- Esc vim modes
set_keymap('i', 'jj', '<Esc>', options)

-- Move vertically by visual line
set_keymap('n', 'j', 'gj', options)
set_keymap('n', 'k', 'gk', options)

-- Close all buffers except the last one
set_keymap('n', '<leader>cb', ':w <bar> %bd <bar> e# <bar> bd# <cr>', options)

-- Go to specific tab by number
for i = 1, 10, 1 do
  set_keymap('n', '<leader>' .. i, i .. 'gt', options)
end
