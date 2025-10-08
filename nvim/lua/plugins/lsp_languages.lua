local M = {}

M.bashls = {
	cmd_env = {
		GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)",
	},
	filetypes = { "sh" },
}

M.clangd = {
	filetypes = { "c", "cpp" },
}

M.cmake = {
	init_options = {
		buildDirectory = "build",
	},
	filetypes = { "cmake" },
}

M.cssls = {
	filetypes = { "css", "scss", "less" },
	settings = {
		css = {
			validate = true,
		},
		less = {
			validate = true,
		},
		scss = {
			validate = true,
		},
	},
}

M.gopls = {
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	single_file_support = true,
}

M.html = {
	filetypes = { "html", "markdown" },
}

M.jdtls = {
	filetypes = { "java" },
}

M.jsonls = {
	init_options = {
		provideFormatter = true,
	},
}

M.lua_ls = {
	settings = {
		Lua = {
			runtime = {
				-- LuaJIT in the case of Neovim
				version = "LuaJIT",
				path = vim.split(package.path, ";"),
			},
			diagnostics = {
				globals = {
					-- Global var for neovim
					"vim",
					-- Global var for awesome
					"awesome",
					"root",
					"client",
					"screen",
				},
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
				},
			},
		},
	},
}

M.pyright = {
	filetypes = { "python" },
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "workspace",
				useLibraryCodeForTypes = true,
			},
		},
	},
}

M.ts_ls = {
	settings = {
		languages = {
			javascript = {},
			javascriptreact = {},
			typescript = {},
			typescriptreact = {},
		},
	},
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	},
}

M.yamlls = {
	settings = {
		ansible = {
			ansible = {
				path = "ansible",
			},
			ansibleLint = {
				enabled = false,
				path = "ansible-lint",
			},
			python = {
				interpreterPath = "python",
			},
		},
	},
	filetypes = { "yaml", "yml" },
}

return M
