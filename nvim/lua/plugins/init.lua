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
    'romgrk/barbar.nvim',
    after = 'nvim-web-devicons',
    requires = 'kyazdani42/nvim-web-devicons',
    setup = setup.barbar(),
  }
  -- use {
  --   'akinsho/bufferline.nvim',
  --   after = 'nvim-web-devicons',
  --   requires = 'kyazdani42/nvim-web-devicons',
  --   setup = setup.bufferline(),
  --   config = config.bufferline(),
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
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
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
    'junegunn/fzf',
    dir = '~/.fzf',
    run = './install --all',
  }
	use {
    'junegunn/fzf.vim',
    config = config.fzf(),
  }
  -- use {
  --   'nvim-telescope/telescope.nvim',
  --   requires = {
  --     { 'nvim-lua/plenary.nvim' },
  --   },
  --   setup = setup.telescope(),
  --   config = config.telescope(),
  -- }
  -- use {
  --   'ahmedkhalf/project.nvim',
  --   after = 'telescope.nvim',
  --   config = config.project(),
  -- }

  -- Formatter
  use {
    'sbdchd/neoformat',
    cmd = 'Neoformat',
    setup = setup.neoformat(),
  }

  -- Built-in LSP Configuration Supporter
  use {
    'neovim/nvim-lspconfig',
  }
  -- LSP Installer
  use {
    'williamboman/nvim-lsp-installer',
    config = config.lsp(),
  }
  -- LSP UI Supporter
  -- use {
  --   'tami5/lspsaga.nvim',
  --   branch = 'nvim51',
  --   setup = setup.saga(),
  --   config = config.saga(),
  -- }

  -- Autopairs supporter
  use {
    'windwp/nvim-autopairs',
    after = 'nvim-cmp',
    config = config.autopairs(),
  }

  -- Completion supporters
  use {
    'honza/vim-snippets',
  }
  use {
    'dcampos/nvim-snippy',
    event = 'BufEnter',
  }
  use {
    'hrsh7th/nvim-cmp',
    after = 'nvim-snippy',
    requires = {
      -- { 'dcampos/cmp-snippy', after = { 'nvim-cmp', 'nvim-snippy' }, opt = true },
      { 'rafamadriz/friendly-snippets', after = { 'nvim-cmp', 'nvim-snippy' }, opt = true },
      { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp', opt = true },
      { 'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp', opt = true },
      { 'hrsh7th/cmp-buffer', after = 'nvim-cmp', opt = true },
      { 'hrsh7th/cmp-path', after = 'nvim-cmp', opt = true },
      { 'hrsh7th/cmp-calc', after = 'nvim-cmp', opt = true },
      { 'hrsh7th/cmp-emoji', after = 'nvim-cmp', opt = true },
      { 'ray-x/cmp-treesitter', after = 'nvim-cmp', opt = true },
    },
    config = config.cmp(),
  }

  -- use {
  --   'ms-jpq/coq_nvim',
  --   branch = 'coq',
  --   setup = setup.coq(),
  --   requires = {
  --     { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
  --   },
  -- }
end)
