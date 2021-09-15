local utils = require 'core.utils'

local user_mappings = utils.load_config().mappings
local map = vim.api.nvim_set_keymap
local global = vim.g

local opts = { noremap = true, silent = true }

local mappings = user_mappings.common
-- Leader key
global.mapleader = mappings.leader
-- Save buffer
map('n', mappings.save_buffer, ':w!<cr>', opts)
-- Quit buffer
map('n', mappings.quit_buffer, ':q<cr>', opts)
-- Exit modes
map('i', mappings.exit_modes, '<Esc>', opts)
-- Split windows
map('n', mappings.split_window_vertically, ':vsplit<cr>', opts)
map('n', mappings.split_window_horizontally, ':split<cr>', opts)
-- Move between windows
map('n', mappings.move_to_above_window, '<C-W>k', opts)
map('n', mappings.move_to_right_window, '<C-W>l', opts)
map('n', mappings.move_to_below_window, '<C-W>j', opts)
map('n', mappings.move_to_left_window, '<C-W>h', opts)
-- Turn off highlight
map('n', mappings.turn_off_highlight, ':nohl<cr>', opts)
-- Use tab with text block
map('v', mappings.indent_block, '>gv', opts)
map('v', mappings.outdent_block, '<gv', opts)
-- Open new buffer
map('n', mappings.open_new_buffer, ':tabnew<cr>', opts)
-- Move vertically by visual line
map('n', 'j', 'gj', opts)
map('n', 'k', 'gk', opts)
-- Close all buffer except this one
map('n', '<leader>cb', ':%bd|e#|bd#<cr>', opts)
