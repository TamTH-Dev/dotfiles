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
    commit = "253d348",
  })

  --[[ Built-in LSP configuration supporter ]]
  use({
    "neovim/nvim-lspconfig",
    commit = "5a87140",
    config = config.lsp(),
    requires = {
      --[[ Manage external editor tooling ]]
      {
        "williamboman/mason.nvim",
        commit = "fd1c061",
        config = config.mason(),
      },
      --[[ Bridges mason.nvim with the lspconfig ]]
      {
        "williamboman/mason-lspconfig.nvim",
        commit = "2b81103",
        config = config.mason_lspconfig(),
      },
      --[[ Use Neovim as a language server to inject LSP diagnostics,
			-- code actions, and more via Lua ]]
      {
        "jose-elias-alvarez/null-ls.nvim",
        commit = "456a983",
        config = config.null_ls(),
        requires = "nvim-lua/plenary.nvim",
      },
      --[[ Bridges mason.nvim with the null-ls ]]
      {
        "jayp0521/mason-null-ls.nvim",
        commit = "4070ec7",
        config = config.mason_null_ls(),
      },
    },
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
        commit = "25ddcd9",
      },
      {
        "L3MON4D3/LuaSnip",
        commit = "a835e3d",
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
    commit = "f1a0b81",
    config = config.treesitter(),
    requires = {
      --[[ Autopairs supporter ]]
      {
        "windwp/nvim-autopairs",
        commit = "e755f36",
        config = config.autopairs(),
      },
      --[[ Autoclose tags ]]
      {
        "windwp/nvim-ts-autotag",
        commit = "25698e4",
      },
      --[[ Surround parentheses, brackets, quotes, XML tags, and more ]]
      {
        "tpope/vim-surround",
        commit = "3d188ed",
      },
      --[[ Set the commentstring option based on the cursor location in the file ]]
      {
        "JoosepAlviste/nvim-ts-context-commentstring",
        commit = "729d83e",
      },
    },
  })

  --[[ Icons suppliers ]]
  use({
    "nvim-tree/nvim-web-devicons",
    commit = "585dbc2",
    config = config.icons(),
  })

  --[[ Fuzzy search ]]
  use({
    "nvim-telescope/telescope.nvim",
    commit = "a3f17d3",
    setup = setup.telescope(),
    config = config.telescope(),
    requires = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        commit = "580b6c4",
        run =
        "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix buil",
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
    commit = "e99d733",
    config = config.lualine(),
  })

  --[[ Buffer management bar ]]
  use({
    "akinsho/bufferline.nvim",
    commit = "3677ace",
    setup = setup.bufferline(),
    config = config.bufferline(),
  })

  --[[ File explorer ]]
  use({
    "nvim-tree/nvim-tree.lua",
    commit = "1d79a64",
    setup = setup.nvimtree(),
    config = config.nvimtree(),
  })

  --[[ Commenter ]]
  use({
    "numToStr/Comment.nvim",
    commit = "8d3aa5c",
    config = config.comment(),
  })

  --[[ Fancy start screen ]]
  use({
    "goolord/alpha-nvim",
    commit = "3847d6b",
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

  --[[ Visualize the undo history ]]
  --[[ use({ ]]
  --[[   "mbbill/undotree", ]]
  --[[   commit = "485f01e", ]]
  --[[   setup = setup.undotree(), ]]
  --[[ }) ]]

  --[[ Flutter supporter ]]
  use({
    "akinsho/flutter-tools.nvim",
    commit = "727df22",
    setup = setup.flutter(),
    config = config.flutter(),
  })

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

  -- [[ Custom escape ]]
  use({
    "max397574/better-escape.nvim",
    commit = "426d297",
    config = config.better_escape(),
  })

  -- [[ Greeter for neovim ]]
  --[[ use({ "startup-nvim/startup.nvim" }) ]]
end)

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  command = "source <afile> | silent! LspStop | silent! LspStart | PackerCompile",
  group = packer_group,
  pattern = vim.fn.expand("$MYVIMRC"),
})