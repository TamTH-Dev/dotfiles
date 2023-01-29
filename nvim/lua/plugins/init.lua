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
		"folke/tokyonight.nvim",
		config = config.tokyonight(),
	})

	--[[ Functions supporter ]]
	use({
		"nvim-lua/plenary.nvim",
		commit = "4b7e520",
	})

	--[[ Built-in LSP configuration supporter ]]
	use({
		"neovim/nvim-lspconfig",
		commit = "1e98825",
		config = config.lsp(),
		requires = {
			--[[ Manage external editor tooling ]]
			{
				"williamboman/mason.nvim",
				commit = "2469bfc",
				config = config.mason(),
			},
			--[[ Bridges mason.nvim with the lspconfig ]]
			{
				"williamboman/mason-lspconfig.nvim",
				commit = "422b974",
				config = config.mason_lspconfig(),
			},
			--[[ Use Neovim as a language server to inject LSP diagnostics,
			-- code actions, and more via Lua ]]
			{
				"jose-elias-alvarez/null-ls.nvim",
				commit = "7b2b28e",
				config = config.null_ls(),
				requires = "nvim-lua/plenary.nvim",
			},
			--[[ Bridges mason.nvim with the null-ls ]]
			{
				"jayp0521/mason-null-ls.nvim",
				commit = "93946ae",
				config = config.mason_null_ls(),
			},
			--[[ LSP styling ]]
			--[[ { ]]
			--[[ 	"glepnir/lspsaga.nvim", ]]
			--[[ 	commit = "e698de5", ]]
			--[[ 	branch = "main", ]]
			--[[ 	config = config.saga(), ]]
			--[[ }, ]]
		},
	})

	--[[ Completion supporters ]]
	use({
		"hrsh7th/nvim-cmp",
		commit = "e7e2ef7",
		config = config.cmp(),
		requires = {
			{
				"hrsh7th/cmp-nvim-lsp",
				commit = "5922477",
			},
			{
				"rafamadriz/friendly-snippets",
				commit = "046e4d3",
			},
			{
				"L3MON4D3/LuaSnip",
				commit = "94f192c",
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
		commit = "c610c78",
		config = config.treesitter(),
		requires = {
			--[[ Autopairs supporter ]]
			{
				"windwp/nvim-autopairs",
				commit = "31042a5",
				config = config.autopairs(),
			},
			--[[ Autoclose tags ]]
			{
				"windwp/nvim-ts-autotag",
				commit = "fdefe46",
			},
			--[[ Surround parentheses, brackets, quotes, XML tags, and more ]]
			{
				"tpope/vim-surround",
				commit = "3d188ed",
			},
		},
	})

	--[[ Icons suppliers ]]
	use({
		"kyazdani42/nvim-web-devicons",
		commit = "a421d18",
		config = config.icons(),
	})

	--[[ Fuzzy search ]]
	use({
		"nvim-telescope/telescope.nvim",
		commit = "dce1156",
		setup = setup.telescope(),
		config = config.telescope(),
		requires = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				commit = "fab3e22",
				run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix buil",
			},
		},
	})
	--[[ Better performance for large projects ]]
	--[[ use({ ]]
	--[[   "ibhagwan/fzf-lua", ]]
	--[[   requires = { ]]
	--[[     "nvim-tree/nvim-web-devicons", ]]
	--[[   }, ]]
	--[[   commit = "d9c9574", ]]
	--[[   config = config.fzf(), ]]
	--[[   setup = setup.fzf(), ]]
	--[[ }) ]]

	--[[ Status line ]]
	use({
		"nvim-lualine/lualine.nvim",
		commit = "0050b30",
		config = config.lualine(),
	})

	--[[ Buffer management bar ]]
	use({
		"akinsho/bufferline.nvim",
		commit = "c7492a7",
		tag = "v3.*",
		setup = setup.bufferline(),
		config = config.bufferline(),
	})

	--[[ File explorer ]]
	use({
		"kyazdani42/nvim-tree.lua",
		commit = "e14989c",
		setup = setup.nvimtree(),
		config = config.nvimtree(),
	})

	--[[ Commenter ]]
	use({
		"numToStr/Comment.nvim",
		commit = "dd12730",
		config = config.comment(),
		requires = {
			{
				"JoosepAlviste/nvim-ts-context-commentstring",
				commit = "a0f8956",
			},
		},
	})

	--[[ Fancy start screen ]]
	use({
		"goolord/alpha-nvim",
		commit = "21a0f25",
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

	--[[ Navigate with the fewest keystrokes ]]
	use({
		"ThePrimeagen/harpoon",
		commit = "8c0bb0a",
		config = config.harpoon(),
		requires = "nvim-lua/plenary.nvim",
	})

	--[[ Visualize the undo history ]]
	use({
		"mbbill/undotree",
		commit = "1a23ea8",
		setup = setup.undotree(),
	})

	--[[ Flutter supporter ]]
	use({
		"akinsho/flutter-tools.nvim",
		commit = "ae0be3c",
		setup = setup.flutter(),
		config = config.flutter(),
	})

	--[[ Indentation guides ]]
	--[[ use({ ]]
	--[[   "lukas-reineke/indent-blankline.nvim", ]]
	--[[   event = "BufEnter", ]]
	--[[   setup = setup.indent_blankline(), ]]
	--[[ }) ]]

	--[[ Git ]]
	--[[ use({ ]]
	--[[ 	"lewis6991/gitsigns.nvim", ]]
	--[[ 	commit = "21ab05c", ]]
	--[[ 	event = "BufRead", ]]
	--[[ 	config = config.gitsigns(), ]]
	--[[ }) ]]

	--[[ Smooth scroll for neovim ]]
	--[[ use({ ]]
	--[[ 	"karb94/neoscroll.nvim", ]]
	--[[ 	event = "BufRead", ]]
	--[[ 	config = config.neoscroll(), ]]
	--[[ }) ]]

	--[[ Winbar ]]
	--[[ use({ ]]
	--[[ 	"SmiteshP/nvim-navic", ]]
	--[[ 	requires = "neovim/nvim-lspconfig", ]]
	--[[ 	config = config.winbar(), ]]
	--[[ }) ]]

	--[[ Measure neovim's startup time ]]
	--[[ use({ ]]
	--[[   "tweekmonster/startuptime.vim", ]]
	--[[ }) ]]
end)

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	command = "source <afile> | silent! LspStop | silent! LspStart | PackerCompile",
	group = packer_group,
	pattern = vim.fn.expand("$MYVIMRC"),
})
