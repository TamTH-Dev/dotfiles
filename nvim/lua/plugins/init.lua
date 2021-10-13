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
    event = 'VimEnter',
  }

  -- Speed up loading Lua modules
  use {
    'lewis6991/impatient.nvim',
    rocks = 'mpack'
  }

  -- Colorscheme
  use {
    'folke/tokyonight.nvim',
    config = function() require 'colors'.init() end,
  }

  -- Icons suppliers for Madvim
  use {
    'kyazdani42/nvim-web-devicons',
    after = 'tokyonight.nvim',
    config = config.icons(),
  }

  -- Status line
  use {
    'glepnir/galaxyline.nvim',
    after = 'nvim-web-devicons',
    requires = 'kyazdani42/nvim-web-devicons',
    config = config.galaxyline(),
  }

  -- Buffer management bar
  use {
    'akinsho/bufferline.nvim',
    after = 'nvim-web-devicons',
    requires = 'kyazdani42/nvim-web-devicons',
    setup = setup.bufferline(),
    config = config.bufferline(),
  }
  -- use {
  --   'romgrk/barbar.nvim',
  --   after = 'nvim-web-devicons',
  --   requires = 'kyazdani42/nvim-web-devicons',
  --   setup = setup.barbar(),
  -- }

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    after = 'nvim-web-devicons',
    cmd = { 'NvimTreeToggle', 'NvimTreeOpen' },
    requires = 'kyazdani42/nvim-web-devicons',
    setup = setup.nvimtree(),
    config = config.nvimtree(),
  }

  -- Fancy start screen
  use {
    'goolord/alpha-nvim',
    config = config.alpha(),
  }

  -- Parser
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = config.treesitter(),
  }
  use {
    'nvim-treesitter/playground',
    cmd = 'TSPlaygroundToggle',
    after = 'nvim-treesitter',
    opt = true,
  }

  -- Indentation helper for jsx
  use {
    'maxmellon/vim-jsx-pretty',
    ft = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  }

  -- Color
  use {
    'norcalli/nvim-colorizer.lua',
    config = config.colorizer(),
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufEnter',
    setup = setup.indent_blankline(),
  }

  -- Symbols outline
  use { 'simrat39/symbols-outline.nvim' }

  -- Git wrapper
  use {
    'tpope/vim-fugitive',
    cmd = {
      'Git',
      'Gdiff',
      'Gdiffsplit',
      'Gvdiffsplit',
      'Gwrite',
      'Gw',
    },
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    event = 'BufEnter',
    config = config.gitsigns(),
  }

  -- Smooth scroll for neovim
  use {
    'karb94/neoscroll.nvim',
    event = 'BufEnter',
    config = config.neoscroll(),
  }

  -- Multiple cursors
  use {
    'terryma/vim-multiple-cursors',
    event = 'BufEnter',
    setup = setup.multiple_cursors(),
  }

  -- Commenter
  use {
    'terrortylor/nvim-comment',
    event = 'BufEnter',
    config = config.comment(),
  }

  -- Auto close (X)HTML tags
  use {
    'alvan/vim-closetag',
    event = 'InsertEnter',
    ft = { 'html', 'javascript', 'javascriptreact', 'vue', 'typescript', 'typescriptreact' },
    setup = setup.close_tag()
  }

  -- Surround parentheses, brackets, quotes, XML tags, and more
  use {
    'tpope/vim-surround',
    event = 'InsertEnter',
  }

  -- Emmet
  use {
    'mattn/emmet-vim',
    event = 'InsertEnter',
    ft = { 'html', 'css', 'javascript', 'javascriptreact', 'vue', 'typescript', 'typescriptreact' },
    setup = setup.emmet(),
  }

  -- Fuzzy search
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
    },
    setup = setup.telescope(),
    config = config.telescope(),
  }
  use {
    'ahmedkhalf/project.nvim',
    after = 'telescope.nvim',
    config = config.project(),
  }

  -- Formatter
  use {
    'sbdchd/neoformat',
    cmd = 'Neoformat',
    setup = setup.neoformat(),
  }

  -- LSP supporter
  use {
    'neovim/nvim-lspconfig',
    requires = {
      {
        'ms-jpq/coq_nvim',
        branch = 'coq', setup = setup.coq()
      },
      {
        'ms-jpq/coq.artifacts',
        branch = 'artifacts'
      },
    },
  }
  use {
    'kabouzeid/nvim-lspinstall',
    config = config.lsp(),
  }

--   -- Autopairs supporter
  use {
    'windwp/nvim-autopairs',
    after = 'coq_nvim',
    config = config.autopairs(),
  }

  -- Completion plugins
  -- use {
  --   'L3MON4D3/LuaSnip',
  --   event = 'BufEnter'
  -- }
--   use {
--     'hrsh7th/nvim-cmp',
--     after = 'LuaSnip',
--     requires = {
--       -- Luasnip
--       { 'saadparwaiz1/cmp_luasnip', after = { 'nvim-cmp', 'LuaSnip' }, opt = true },
--       -- Ultisnips
--       -- { 'SirVer/ultisnips', after = 'nvim-cmp', opt = true },
--       -- { 'honza/vim-snippets' after = { 'nvim-cmp', 'ultisnips' }, opt = true },
--       -- { 'quangnguyen30192/cmp-nvim-ultisnips', after = 'nvim-cmp', opt = true },
--       { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp', opt = true },
--       { 'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp', opt = true },
--       { 'hrsh7th/cmp-calc', after = 'nvim-cmp', opt = true },
--       { 'hrsh7th/cmp-buffer', after = 'nvim-cmp', opt = true },
--       { 'hrsh7th/cmp-path', after = 'nvim-cmp', opt = true }
--     },
--     config = config.cmp(),
--   }
end)
