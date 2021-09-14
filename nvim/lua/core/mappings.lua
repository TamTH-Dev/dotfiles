local utils = require 'core.utils'

local map = utils.map
local user_mappings = utils.load_config().mappings
local global = vim.g

local mappings = user_mappings.common
-- Leader key
global.mapleader = mappings.leader
-- Save buffer
map('n', mappings.save_buffer, ':w!<cr>')
-- Quit buffer
map('n', mappings.quit_buffer, ':q<cr>')
-- Exit modes
map('i', mappings.exit_modes, '<Esc>')
-- Split windows
map('n', mappings.split_window_vertically, ':vsplit<cr>')
map('n', mappings.split_window_horizontally, ':split<cr>')
-- Move between windows
map('n', mappings.move_to_above_window, '<C-W>k')
map('n', mappings.move_to_right_window, '<C-W>l')
map('n', mappings.move_to_below_window, '<C-W>j')
map('n', mappings.move_to_left_window, '<C-W>h')
-- Turn off highlight
map('n', mappings.turn_off_highlight, ':nohl<cr>')
-- Use tab with text block
map('v', mappings.indent_block, '>gv')
map('v', mappings.outdent_block, '<gv')
-- Open new buffer
map('n', mappings.open_new_buffer, ':tabnew<cr>')
-- Move vertically by visual line
map('n', 'j', 'gj')
map('n', 'k', 'gk')
-- Close all buffer except this one
map('n', '<leader>cb', ':%bd|e#|bd#<cr>' )
