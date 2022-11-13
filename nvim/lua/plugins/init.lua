local is_packer_init_loaded, packer = pcall(require, "plugins.packerInit")

if not is_packer_init_loaded then
  return
end

packer.startup(function()
  local use = packer.use
  --[[ Import plugins config and setup ]]
  local config = require("plugins.config")
  local setup = require("plugins.setup")

  --[[ Packer can manage itself ]]
  use({
    "wbthomason/packer.nvim",
    commit = "6afb674",
  })

  --[[ Boost startup time ]]
  use({
    "lewis6991/impatient.nvim",
  })
  use({
    "nathom/filetype.nvim",
    config = config.filetype(),
  })

  --[[ Colorscheme ]]
  use({
    "folke/tokyonight.nvim",
    config = function()
      require("colors").init()
    end,
  })

  --[[ Icons suppliers for Madvim ]]
  use({
    "kyazdani42/nvim-web-devicons",
    commit = "9061e2d",
    config = config.icons(),
  })

  --[[ Popup Supporters ]]
  use({
    "nvim-lua/plenary.nvim",
    commit = "4b7e520",
  })
  use({
    "nvim-lua/popup.nvim",
    commit = "b7404d3",
  })

  --[[ Status line ]]
  use({
    "nvim-lualine/lualine.nvim",
    commit = "abb0312",
    config = config.lualine(),
  })

  --[[ Buffer management bar ]]
  use({
    "akinsho/bufferline.nvim",
    commit = "e70be62",
    branch = "main",
    event = "BufWinEnter",
    setup = setup.bufferline(),
    config = config.bufferline(),
  })

  --[[ File explorer ]]
  use({
    "kyazdani42/nvim-tree.lua",
    commit = "e94f517",
    setup = setup.nvimtree(),
    config = config.nvimtree(),
  })

  --[[ Fancy start screen ]]
  use({
    "goolord/alpha-nvim",
    commit = "0bb6fc0",
    config = config.alpha(),
  })

  --[[ Parser ]]
  use({
    "nvim-treesitter/nvim-treesitter",
    commit = "c4c358e",
    config = config.treesitter(),
    requires = {
      {
        --[[ Autoclose tags ]]
        "windwp/nvim-ts-autotag",
        after = "nvim-treesitter",
      },
    },
  })

  --[[ Indentation helper for jsx ]]
  --[[ use { ]]
  --[[   'maxmellon/vim-jsx-pretty', ]]
  --[[   commit = '6989f16', ]]
  --[[   ft = { ]]
  --[[     'javascript', ]]
  --[[     'javascriptreact', ]]
  --[[     'typescript', ]]
  --[[     'typescriptreact', ]]
  --[[   }, ]]
  --[[ } ]]

  --[[ Indentation guides ]]
  use({
    "lukas-reineke/indent-blankline.nvim",
    event = "BufEnter",
    setup = setup.indent_blankline(),
  })

  --[[ Git ]]
  use({
    "lewis6991/gitsigns.nvim",
    commit = "21ab05c",
    event = "BufRead",
    config = config.gitsigns(),
  })

  --[[ Smooth scroll for neovim ]]
  use({
    "karb94/neoscroll.nvim",
    event = "BufRead",
    config = config.neoscroll(),
  })

  --[[ Commenter ]]
  use({
    "JoosepAlviste/nvim-ts-context-commentstring",
    commit = "2941f00",
    event = "BufReadPost",
  })
  use({
    "numToStr/Comment.nvim",
    commit = "ad7ffa8",
    event = "BufRead",
    config = config.comment(),
  })

  --[[ Surround parentheses, brackets, quotes, XML tags, and more ]]
  use({
    "tpope/vim-surround",
    commit = "bf3480d",
    event = "BufEnter",
  })

  --[[ Emmet ]]
  use({
    "mattn/emmet-vim",
    commit = "def5d57",
    event = "BufEnter",
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
  --[[ Winbar ]]
  use({
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",
    config = config.winbar(),
  })

  --[[ Built-in LSP Configuration Supporter ]]
  use({
    "neovim/nvim-lspconfig",
    commit = "ee2e8c6",
    requires = {
      --[[ Installer ]]
      {
        "williamboman/nvim-lsp-installer",
        commit = "ae913cb",
        config = config.lsp(),
      },
      --[[ Use Neovim as a language server to inject LSP diagnostics, ]]
      --[[ code actions, and more via Lua ]]
      {
        "jose-elias-alvarez/null-ls.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = config.null_ls(),
      },
      --[[ Styling ]]
      {
        "glepnir/lspsaga.nvim",
        commit = "391cf74",
        branch = "main",
        config = config.saga(),
      },
      {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        setup = setup.trouble(),
        config = config.trouble(),
      },
    },
  })

  -- Fuzzy search
  use({
    "nvim-telescope/telescope.nvim",
    commit = "f174a03",
    setup = setup.telescope(),
    config = config.telescope(),
  })
  use({
    "nvim-telescope/telescope-fzf-native.nvim",
    commit = "65c0ee3",
    run = "make",
    requires = { "nvim-telescope/telescope.nvim" },
  })

  --[[ Autopairs supporter ]]
  use({
    "windwp/nvim-autopairs",
    commit = "4fc96c8",
    after = "nvim-cmp",
    config = config.autopairs(),
  })

  --[[ Completion supporters ]]
  use({
    "L3MON4D3/LuaSnip",
    commit = "619796e",
  })
  use({
    "hrsh7th/nvim-cmp",
    commit = "c53dd36",
    event = "BufEnter",
    requires = {
      {
        "saadparwaiz1/cmp_luasnip",
        commit = "1809552",
        after = "nvim-cmp",
        opt = true,
      },
      {
        "rafamadriz/friendly-snippets",
        commit = "c93311f",
        after = { "nvim-cmp", "cmp_luasnip" },
        opt = true,
      },
      {
        "hrsh7th/cmp-nvim-lsp",
        commit = "78924d1",
        after = "nvim-cmp",
        opt = true,
      },
      {
        "hrsh7th/cmp-nvim-lua",
        commit = "d276254",
        after = "nvim-cmp",
        opt = true,
      },
      {
        "hrsh7th/cmp-buffer",
        commit = "3022dbc",
        after = "nvim-cmp",
        opt = true,
      },
      {
        "hrsh7th/cmp-path",
        commit = "91ff86c",
        after = "nvim-cmp",
        opt = true,
      },
    },
    config = config.cmp(),
  })

  --[[ Delete all buffers except one ]]
  use({
    "kazhala/close-buffers.nvim",
    commit = "3acbcad",
    setup = setup.close_buffers(),
  })

  --[[ Flutter tools ]]
  use({
    "akinsho/flutter-tools.nvim",
    setup = setup.flutter(),
    config = config.flutter(),
  })

  --[[ Measure neovim's startup time ]]
  use({
    "tweekmonster/startuptime.vim",
  })
end)
