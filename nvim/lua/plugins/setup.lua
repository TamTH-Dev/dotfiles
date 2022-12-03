local M = {}

function M.bufferline()
	return function()
		local map = function(...)
			vim.api.nvim_set_keymap("n", ...)
		end

		local opts = { noremap = true, silent = true }

		--@usage[[ move to previous/next ]]
		map("<leader><Tab>", "<cmd>BufferLineCycleNext<CR>", opts)
		map("<leader><S-Tab>", "<cmd>BufferLineCyclePrev<CR>", opts)
		--@usage[[ re-order to previous/next ]]
		map("<leader>>", "<cmd>BufferLineMoveNext<CR>", opts)
		map("<leader><", "<cmd>BufferLineMovePrev<CR>", opts)
		--@usage[[ goto buffer in position... ]]
		map("<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", opts)
		map("<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", opts)
		map("<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", opts)
		map("<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", opts)
		map("<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", opts)
		map("<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", opts)
		map("<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", opts)
		map("<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", opts)
		map("<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", opts)
		map("<leader>10", "<cmd>BufferLineGoToBuffer 10<CR>", opts)
	end
end

function M.close_buffers()
	return function()
		local map = function(...)
			vim.api.nvim_set_keymap("n", ...)
		end
		local opts = { noremap = true, silent = true }

		map("<leader>cb", "<cmd>BWipeout other<CR>", opts)
	end
end

function M.emmet()
	return function()
		local glob = vim.g

		--@usage[[ remap the default emmet's leader key ]]
		glob.user_emmet_leader_key = "<C-y>"
	end
end

function M.indent_blankline()
	return function()
		local glob = vim.g

		glob.indent_blankline_buftype_exclude = {
			"help",
			"packer",
			"alpha",
			"NvimTree",
		}
		glob.indent_blankline_filetype_exclude = {
			"help",
			"packer",
			"alpha",
			"NvimTree",
		}
		glob.indent_blankline_char_list = {
			"",
			"┊",
			"┆",
			"¦",
			"|",
			"¦",
			"┆",
			"┊",
			"",
		}
		glob.indent_blankline_show_trailing_blankline_indent = false
		glob.indent_blankline_show_first_indent_level = false
		glob.indent_blankline_bufname_exclude = { "README.md" }
		glob.indent_blankline_context_patterns = {
			"class",
			"return",
			"function",
			"method",
			"^if",
			"if",
			"^while",
			"jsx_element",
			"^for",
			"for",
			"^object",
			"^table",
			"block",
			"arguments",
			"if_statement",
			"else_clause",
			"jsx_element",
			"jsx_self_closing_element",
			"try_statement",
			"catch_clause",
			"import_statement",
			"operation_type",
		}
		glob.indent_blankline_use_treesitter = true
		glob.indent_blankline_show_current_context = true
		glob.indent_blankline_enabled = true
	end
end

function M.fzf()
	return function()
		local map = function(...)
			vim.api.nvim_set_keymap("n", ...)
		end

		local opts = { noremap = true, silent = true }

		map("<C-p>", "<cmd>FzfLua files<CR>", opts)
		map("<C-f>", "<cmd>FzfLua live_grep<CR>", opts)
		map("<C-b>", "<cmd>FzfLua buffers<CR>", opts)
		map("<C-e>", "<cmd>FzfLua diagnostics_document<CR>", opts)
		map("<C-w>", "<cmd>FzfLua diagnostics_workspace<CR>", opts)
	end
end

function M.nvimtree()
	return function()
		local map = function(...)
			vim.api.nvim_set_keymap("n", ...)
		end
		local glob = vim.g
		local opts = { noremap = true, silent = true }

		map("<C-n>", "<cmd>NvimTreeToggle<CR>", opts)
		map("<leader>r", "<cmd>NvimTreeRefresh<CR>", opts)
		map("<leader>nf", "<cmd>NvimTreeFindFile<CR>", opts)

		--@usage[[ don't auto open tree on specific filetypes ]]
		glob.nvim_tree_auto_ignore_ft = { "alpha" }
		--@usage[[ list of filenames that gets highlighted with NvimTreeSpecialFile ]]
		glob.vim_tree_special_files = {
			["README.md"] = 1,
			Makefile = 1,
			MAKEFILE = 1,
		}
	end
end

function M.telescope()
	return function()
		local map = function(...)
			vim.api.nvim_set_keymap("n", ...)
		end
		local opts = { noremap = true, silent = true }

		--[[ map("<C-p>", "<cmd>Telescope find_files hidden=true<CR>", opts) ]]
		--[[ map("<C-f>", "<cmd>Telescope live_grep<CR>", opts) ]]
		--[[ map("<C-b>", "<cmd>Telescope buffers<CR>", opts) ]]
	end
end

function M.trouble()
	return function()
		--[[ local map = function(...) ]]
		--[[   vim.api.nvim_set_keymap("n", ...) ]]
		--[[ end ]]
		--[[ local opts = { noremap = true, silent = true } ]]

		--[[ map("<C-e>", "<cmd>TroubleToggle document_diagnostics<CR>", opts) ]]
		--[[ map("<C-w>", "<cmd>TroubleToggle workspace_diagnostics<CR>", opts) ]]
	end
end

function M.flutter()
	return function()
		local opts = { noremap = true, silent = true }
		local map = function(...)
			vim.api.nvim_set_keymap("n", ...)
		end

		map("<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
		map("<leader>gf", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
		map("<leader>gk", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
		map("<leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
		map("<leader>gr", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
		map("<leader>gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
		map("<leader>gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
		map("<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
		map("<leader>gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	end
end

return M
