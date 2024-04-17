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
		commit = "ea0cc3c",
	})

	--[[ Colorscheme ]]
	use({
		"folke/tokyonight.nvim",
    config = config.tokyonight(),
    commit = "9bf9ec5",
	})

	--[[ Functions supporter ]]
	use({
		"nvim-lua/plenary.nvim",
		commit = "8aad439",
	})

	--[[ LSP configuration ]]
	 use({
		"williamboman/mason.nvim",
		commit = "751b1fc",
		config = config.mason(),
	})
	use({
		"williamboman/mason-lspconfig.nvim",
		commit = "4450968",
		config = config.mason_lspconfig(),
    after = "mason.nvim",
	})
	use({
		"jose-elias-alvarez/null-ls.nvim",
		commit = "0010ea9",
		config = config.null_ls(),
		requires = "nvim-lua/plenary.nvim",
	})
	use({
		"jayp0521/mason-null-ls.nvim",
		commit = "de19726",
		config = config.mason_null_ls(),
	})
	use({
		"neovim/nvim-lspconfig",
		commit = "9266dc2",
		config = config.lsp(),
	})

	--[[ Completion supporters ]]
	use({
		"hrsh7th/nvim-cmp",
		commit = "ce16de5",
		config = config.cmp(),
		requires = {
			{
				"hrsh7th/cmp-nvim-lsp",
				commit = "5af77f5",
			},
			{
				"rafamadriz/friendly-snippets",
				commit = "ea068f1",
			},
			{
				"L3MON4D3/LuaSnip",
				commit = "03c8e67",
				config = config.luasnip(),
			},
			{
				"saadparwaiz1/cmp_luasnip",
				commit = "05a9ab2",
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
    run = ':TSUpdate',
		commit = "7099c9e",
		config = config.treesitter(),
		requires = {
			--[[ Autopairs supporter ]]
			{
				"windwp/nvim-autopairs",
				commit = "4f41e59",
				config = config.autopairs(),
			},
		},
	})
	--[[ Auto-close tags ]]
	--[[ use({ ]]
	--[[ 	"windwp/nvim-ts-autotag", ]]
	--[[ 	commit = "40615e9", ]]
	--[[ }) ]]
	--[[ Set the commentstring option based on the cursor location in the file ]]
	--[[ use({ ]]
	--[[ 	"JoosepAlviste/nvim-ts-context-commentstring", ]]
	--[[ 	commit = "0bf8fbc", ]]
	--[[ }) ]]
	--[[ Surround parentheses, brackets, quotes, XML tags, and more ]]
	use({
		"tpope/vim-surround",
		commit = "3d188ed",
	})

	--[[ Icons suppliers ]]
	use({
		"nvim-tree/nvim-web-devicons",
		commit = "b346839",
		config = config.icons(),
	})

	--[[ Better performance for large projects ]]
	use({
		"ibhagwan/fzf-lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		commit = "743647f",
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
		commit = "0a5a668",
		config = config.lualine(),
	})

	--[[ Buffer management bar ]]
	use({
		"akinsho/bufferline.nvim",
		commit = "64e2c5d",
		setup = setup.bufferline(),
		config = config.bufferline(),
	})

	--[[ File explorer ]]
	use({
		"nvim-tree/nvim-tree.lua",
		commit = "81eb8d5",
		setup = setup.nvimtree(),
		config = config.nvimtree(),
	})

	--[[ Commenter ]]
	use({
		"JoosepAlviste/nvim-ts-context-commentstring",
		commit = "734ebad",
    config = config.tscontextcommentstring(),
	})
	use({
		"numToStr/Comment.nvim",
		commit = "0236521",
		config = config.comment(),
	})

	--[[ Fancy start screen ]]
	use({
		"goolord/alpha-nvim",
		commit = "41283fb",
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

	--[[ Custom escape ]]
	use({
		"max397574/better-escape.nvim",
		commit = "7e86eda",
		config = config.better_escape(),
	})

	--[[ Git indicators ]]
	use({
		"lewis6991/gitsigns.nvim",
		commit = "d96ef3b",
		config = config.gitsigns(),
	})
end)

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	command = "source <afile> | silent! LspStop | silent! LspStart | PackerCompile",
	group = packer_group,
	pattern = vim.fn.expand("$MYVIMRC"),
})
