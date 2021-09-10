local saga = require 'lspsaga'

local api = vim.api
local map = api.nvim_set_keymap
local cmd = api.nvim_command

local opts = { silent = true }

-- Colors
local colors = {
  bg = '#24283b',
  fg = '#c0caf5',
  red = '#f7768e',
  green = '#9ece6a',
  orange = '#ff9e64',
  blue = '#7aa2f7',
  magenta = '#bb9af7',
  cyan = '#7dcfff',
  yellow = '#e0af68',
}

saga.init_lsp_saga {
	use_saga_diagnostic_sign = true,
	error_sign = ' ',
	warn_sign = ' ',
	hint_sign = ' ',
	infor_sign = ' ',
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
map('n', '<leader>gk', ':Lspsaga hover_doc<cr>', opts)

-- code action
map('n', '<leader>ga', ':Lspsaga code_action<CR>', opts)
map('v', '<leader>ga', ':<C-U>Lspsaga range_code_action<CR>', opts)

-- show signature help
map('n', '<leader>gs', ':Lspsaga signature_help<cr>', opts)

-- show diagnostic
map('n', '<leader>gl', ':Lspsaga show_line_diagnostics<CR>', opts)

-- rename
map('n', '<leader>gr', ':Lspsaga rename<cr>', opts)

-- jump diagnostic
map('n', '<leader>gn', ':Lspsaga diagnostic_jump_next<cr>', opts)
map('n', '<leader>gp', ':Lspsaga diagnostic_jump_prev<cr>', opts)

-- lsp provider to find the cursor word definition and reference
map('n', '<leader>gf', ':Lspsaga lsp_finder<cr>', opts)

cmd('highlight LspFloatWinBorder	guifg='..colors.cyan)
cmd('highlight LspSagaRenameBorder guifg='..colors.cyan)
cmd('highlight LspSagaHoverBorder guifg='..colors.cyan)
cmd('highlight LspSagaSignatureHelpBorder guifg='..colors.cyan)
cmd('highlight LspSagaCodeActionBorder guifg='..colors.cyan)
cmd('highlight LspSagaDefPreviewBorder guifg='..colors.cyan)
cmd('highlight LspLinesDiagBorder guifg='..colors.cyan)
cmd('highlight LspSagaRenamePromptPrefix guifg='..colors.orange)
cmd('highlight LspSagaCodeActionTitle guifg='..colors.red)
