local is_packer_init_loaded, packer = pcall(require, 'plugins.packerInit')

if not is_packer_init_loaded then return end

packer.startup(function()
  local use = packer.use
  -- Import plugins config and setup
  local config = require 'plugins.config'
  local setup = require 'plugins.setup'

  -- Packer can manage itself
  use {
    'wbthomason/packer.nvim',
    commit = '4dedd3b',
  }

  -- Boost startup time
  use {
    'lewis6991/impatient.nvim',
  }
  use {
    'nathom/filetype.nvim',
    config = config.filetype(),
  }

  -- Colorscheme
  use {
    'shaunsingh/nord.nvim',
    config = function()
      require('colors').init()
    end,
  }
  
  -- Icons suppliers for Madvim
  use {
    'kyazdani42/nvim-web-devicons',
    commit = 'bdd4342',
    config = config.icons(),
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    commit = '619eded',
    config = config.lualine(),
  }

  -- Buffer management bar
  use {
    'akinsho/bufferline.nvim',
    commit = 'ee1d51e',
    branch = "main",
    event = "BufWinEnter",
    setup = setup.bufferline(),
    config = config.bufferline(),
  }

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    commit = '82ec79a',
    setup = setup.nvimtree(),
    config = config.nvimtree(),
  }

  -- Fancy start screen
  use {
    'goolord/alpha-nvim',
    commit = '4781fcf',
    config = config.alpha(),
  }

  -- Parser
  use {
    'nvim-treesitter/nvim-treesitter',
    commit = '10d57b3',
    config = config.treesitter(),
    requires = {
      {
        -- Autoclose tags
        'windwp/nvim-ts-autotag',
        after = 'nvim-treesitter',
      },
    },
  }

  -- Indentation helper for jsx
  use {
    'maxmellon/vim-jsx-pretty',
    commit = '6989f16',
    ft = {
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
    },
  }

  -- Indentation guides
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufEnter',
    setup = setup.indent_blankline(),
  }

  -- Popup Supporters
  use {
    'nvim-lua/plenary.nvim',
    commit = '1da13ad',
  }
  use {
    'nvim-lua/popup.nvim',
    commit = 'b7404d3',
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    commit = 'aca84fd',
    event = 'BufRead',
    config = config.gitsigns(),
  }

  -- Smooth scroll for neovim
  use {
    'karb94/neoscroll.nvim',
    event = 'BufRead',
    config = config.neoscroll(),
  }

  -- Commenter
  use {
    'JoosepAlviste/nvim-ts-context-commentstring',
    commit = '8834375',
    event = 'BufReadPost',
  }
  use {
    'numToStr/Comment.nvim',
    commit = '79b356d',
    event = 'BufRead',
    config = config.comment(),
  }

  -- Surround parentheses, brackets, quotes, XML tags, and more
  use {
    'tpope/vim-surround',
    commit = 'bf3480d',
    event = 'BufEnter',
  }

  -- Emmet
  use {
    'mattn/emmet-vim',
    commit = 'def5d57',
    event = 'BufEnter',
    ft = {
      'html',
      'css',
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
      'vue',
    },
    setup = setup.emmet(),
  }

  -- Fuzzy search
  use {
    'nvim-telescope/telescope.nvim',
    commit = 'b4c45e8',
    config = config.telescope(),
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    commit = '281b07a',
    run = 'make',
    requires = { 'nvim-telescope/telescope.nvim' },
  }

  -- Built-in LSP Configuration Supporter
  use {
    'neovim/nvim-lspconfig',
    commit = 'ce8a4d8',
  }
  -- LSP Installer
  use {
    'williamboman/nvim-lsp-installer',
    commit = 'f5569f6',
    config = config.lsp(),
  }
  -- LSP styles supporter
  -- use {
  --   'tami5/lspsaga.nvim',
  --   commit = '39b6fac',
  --   after = {
  --     'nvim-lspconfig',
  --     'nvim-lsp-installer',
  --   },
  --   config = config.saga(),
  --   setup = setup.saga(),
  -- }

  -- Formatter
  use {
    'sbdchd/neoformat',
    cmd = 'Neoformat',
    setup = setup.neoformat(),
  }

  -- Autopairs supporter
  use {
    'windwp/nvim-autopairs',
    commit = 'aea9131',
    after = 'nvim-cmp',
    config = config.autopairs(),
  }

  -- Completion supporters
  use {
    'L3MON4D3/LuaSnip',
    commit = 'cc00863',
  }
  use {
    'hrsh7th/nvim-cmp',
    commit = 'a226b6a',
    event = 'BufEnter',
    requires = {
      {
        'saadparwaiz1/cmp_luasnip',
        commit = 'a9de941',
        after = 'nvim-cmp',
        opt = true,
      },
      {
        'rafamadriz/friendly-snippets',
        commit = '4ef45d0',
        after = { 'nvim-cmp', 'cmp_luasnip' },
        opt = true,
      },
      {
        'hrsh7th/cmp-nvim-lsp',
        commit = 'e6b5feb',
        after = 'nvim-cmp',
        opt = true,
      },
      {
        'hrsh7th/cmp-nvim-lua',
        after = 'nvim-cmp',
        opt = true,
      },
      {
        'hrsh7th/cmp-buffer',
        commit = '12463cf',
        after = 'nvim-cmp',
        opt = true,
      },
      {
        'hrsh7th/cmp-path',
        commit = '466b6b8',
        after = 'nvim-cmp',
        opt = true,
      },
    },
    config = config.cmp(),
  }

  -- Delete all buffers except one
  use {
    'kazhala/close-buffers.nvim',
    commit = '3acbcad',
    setup = setup.close_buffers(),
  }

  -- use {
  --   'tweekmonster/startuptime.vim',
  -- }
end)
