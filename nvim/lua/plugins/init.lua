local is_packer_init_loaded, packer = pcall(require, "plugins.packerInit")

if not is_packer_init_loaded then
	return
end

packer.startup(function()
	local use = packer.use
	--[[ Plugins' setup and config ]]
	local config = require("plugins.config")
	local setup = require("plugins.setup")

	--[[ Plugins manager ]]
	use({
		"wbthomason/packer.nvim",
		commit = "1d0cf98",
	})

	--[[ Colorscheme ]]
	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = config.catppuccin(),
	})

	--[[ Functions supporter ]]
	use({
		"nvim-lua/plenary.nvim",
		commit = "9ac3e95",
	})

	--[[ LSP configuration ]]
	use({
		"williamboman/mason.nvim",
		commit = "75e64d2",
		config = config.mason(),
	})
	use({
		"williamboman/mason-lspconfig.nvim",
		commit = "7034065",
		config = config.mason_lspconfig(),
	})
	use({
		"jose-elias-alvarez/null-ls.nvim",
		commit = "f8ffcd7",
		config = config.null_ls(),
		requires = "nvim-lua/plenary.nvim",
	})
	use({
		"jayp0521/mason-null-ls.nvim",
		commit = "04fc509",
		config = config.mason_null_ls(),
	})
	use({
		"neovim/nvim-lspconfig",
		commit = "eddaef9",
		config = config.lsp(),
	})

	--[[ Completion supporters ]]
	use({
		"hrsh7th/nvim-cmp",
		commit = "777450f",
		config = config.cmp(),
		requires = {
			{
				"hrsh7th/cmp-nvim-lsp",
				commit = "0e6b2ed",
			},
			{
				"rafamadriz/friendly-snippets",
				commit = "b1b78a6",
			},
			{
				"L3MON4D3/LuaSnip",
				commit = "8d6c0a9",
				config = config.luasnip(),
			},
			{
				"saadparwaiz1/cmp_luasnip",
				commit = "1809552",
			},
			{
				"hrsh7th/cmp-buffer",
				commit = "3022dbc",
			},
			{
				"hrsh7th/cmp-path",
				commit = "91ff86c",
			},
		},
	})

	--[[ Parser ]]
	use({
		"nvim-treesitter/nvim-treesitter",
		commit = "c79c379",
		config = config.treesitter(),
		requires = {
			--[[ Autopairs supporter ]]
			{
				"windwp/nvim-autopairs",
				commit = "58985de",
				config = config.autopairs(),
			},
		},
	})
	--[[ Auto-close tags ]]
	use({
		"windwp/nvim-ts-autotag",
		commit = "cac97f3",
	})
	--[[ Set the commentstring option based on the cursor location in the file ]]
	use({
		"JoosepAlviste/nvim-ts-context-commentstring",
		commit = "ada15e9",
	})
	--[[ Surround parentheses, brackets, quotes, XML tags, and more ]]
	use({
		"tpope/vim-surround",
		commit = "3d188ed",
	})

	--[[ Icons suppliers ]]
	use({
		"nvim-tree/nvim-web-devicons",
		commit = "4ec26d6",
		config = config.icons(),
	})

	--[[ Better performance for large projects ]]
	use({
		"ibhagwan/fzf-lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		commit = "08f57e9",
		config = config.fzf(),
		setup = setup.fzf(),
	})
	--[[ Fuzzy search ]]
	--[[ use({ ]]
	--[[   "nvim-telescope/telescope.nvim", ]]
	--[[   commit = "a3f17d3", ]]
	--[[   setup = setup.telescope(), ]]
	--[[   config = config.telescope(), ]]
	--[[   requires = { ]]
	--[[     { ]]
	--[[       "nvim-telescope/telescope-fzf-native.nvim", ]]
	--[[       commit = "580b6c4", ]]
	--[[       run = ]]
	--[[       "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix buil", ]]
	--[[     }, ]]
	--[[   }, ]]
	--[[ }) ]]
	--[[ Status line ]]
	use({
		"nvim-lualine/lualine.nvim",
		commit = "84ffb80",
		config = config.lualine(),
	})

	--[[ Buffer management bar ]]
	use({
		"akinsho/bufferline.nvim",
		commit = "243893b",
		setup = setup.bufferline(),
		config = config.bufferline(),
	})

	--[[ File explorer ]]
	use({
		"nvim-tree/nvim-tree.lua",
		commit = "0db85a7",
		setup = setup.nvimtree(),
		config = config.nvimtree(),
	})

	--[[ Commenter ]]
	use({
		"numToStr/Comment.nvim",
		commit = "a89339f",
		config = config.comment(),
	})

	--[[ Fancy start screen ]]
	use({
		"goolord/alpha-nvim",
		commit = "87c2040",
		config = config.alpha(),
	})

	--[[ Emmet ]]
	use({
		"mattn/emmet-vim",
		commit = "def5d57",
		ft = {
			"html",
			"css",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
		},
		setup = setup.emmet(),
	})

	--[[ Delete all buffers except one ]]
	use({
		"kazhala/close-buffers.nvim",
		commit = "3acbcad",
		setup = setup.close_buffers(),
	})

	--[[ Flutter supporter ]]
	use({
		"akinsho/flutter-tools.nvim",
		commit = "dedb571",
		setup = setup.flutter(),
		config = config.flutter(),
	})

	-- [[ Custom escape ]]
	use({
		"max397574/better-escape.nvim",
		commit = "426d297",
		config = config.better_escape(),
	})

	--[[ Visualize the undo history ]]
	--[[ use({ ]]
	--[[   "mbbill/undotree", ]]
	--[[   commit = "485f01e", ]]
	--[[   setup = setup.undotree(), ]]
	--[[ }) ]]
	--[[ Indentation guides ]]
	--[[ use({ ]]
	--[[   "lukas-reineke/indent-blankline.nvim", ]]
	--[[   commit = "018bd04", ]]
	--[[   setup = setup.indent_blankline(), ]]
	--[[ }) ]]
	--[[ Git indicators ]]
	--[[ use({ ]]
	--[[   "lewis6991/gitsigns.nvim", ]]
	--[[   commit = "b1f9cf7", ]]
	--[[   config = config.gitsigns(), ]]
	--[[ }) ]]
	-- [[ Greeter for neovim ]]
	--use({ "startup-nvim/startup.nvim" })
end)

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	command = "source <afile> | silent! LspStop | silent! LspStart | PackerCompile",
	group = packer_group,
	pattern = vim.fn.expand("$MYVIMRC"),
})
