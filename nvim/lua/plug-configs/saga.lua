local saga = require 'lspsaga'

local api = vim.api

local options = { silent = true }

local set_keymap = function(mode, boundTo, boundFrom, options)
	api.nvim_set_keymap(mode, boundTo, boundFrom, options)
end

saga.init_lsp_saga {
	use_saga_diagnostic_sign = true,
	error_sign = ' ',
	warn_sign = ' ',
	hint_sign = ' ',
	infor_sign = ' ',
	dianostic_header_icon = ' ',
	code_action_icon = ' ',
	code_action_prompt = {
		enable = true,
		sign = true,
		sign_priority = 20,
		virtual_text = true
	},
	finder_definition_icon = ' ',
	finder_reference_icon = ' ',
	max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
	finder_action_keys = {
		open = '<cr>',
		vsplit = '<C-v>',
		split = '<C-x>',
		quit = 'q',
		scroll_down = '<C-j>',
		scroll_up = '<C-k>'
	},
	code_action_keys = {
		quit = 'q',
		exec = '<cr>'
	},
	rename_action_keys = {
		quit = '<C-c>',
		exec = '<cr>'
	},
	definition_preview_icon = ' ',
	border_style = 'single', -- 'single' 'double' 'round' 'plus'
	rename_prompt_prefix = '➤'
}

-- show hover doc
set_keymap('n', '<leader>gk', ':Lspsaga hover_doc<cr>', options)

-- code action
set_keymap('n', '<leader>ga', ':Lspsaga code_action<CR>', options)
set_keymap('v', '<leader>ga', ':<C-U>Lspsaga range_code_action<CR>', options)

-- show signature help
set_keymap('n', '<leader>gs', ':Lspsaga signature_help<cr>', options)

-- show diagnostic
set_keymap('n', '<leader>gl', ':Lspsaga show_line_diagnostics<CR>', options)

-- rename
set_keymap('n', '<leader>gr', ':Lspsaga rename<cr>', options)

-- jump diagnostic
set_keymap('n', '<leader>gn', ':Lspsaga diagnostic_jump_next<cr>', options)
set_keymap('n', '<leader>gp', ':Lspsaga diagnostic_jump_prev<cr>', options)

-- lsp provider to find the cursor word definition and reference
set_keymap('n', '<leader>gf', ':Lspsaga lsp_finder<cr>', options)
