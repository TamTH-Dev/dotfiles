local is_packer_init_loaded, packer = pcall(require, 'plugins.packerInit')
if not is_packer_init_loaded then
   return false
end

local use = packer.use
packer.startup(function()
  -- Packer can manage itself
  use {
    'wbthomason/packer.nvim',
    event = 'VimEnter',
  }

  -- Colorscheme
  use {
    'folke/tokyonight.nvim',
    after = 'packer.nvim',
    config = function()
       require('colors').init()
    end,
  }

  use {
    'kyazdani42/nvim-web-devicons',
    after = 'tokyonight.nvim',
    config = function()
       require 'plugins.configs.icons'
    end,
  }

  -- Status line
  use {
    'glepnir/galaxyline.nvim',
    after = 'nvim-web-devicons',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = function()
      require 'plugins.configs.galaxyline'
    end,
  }

  -- Buffer bar
  use {
    'romgrk/barbar.nvim',
    after = 'nvim-web-devicons',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = function()
      require 'plugins.configs.barbar'
    end,
  }

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    after = 'nvim-web-devicons',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = function()
       require 'plugins.configs.nvimtree'
    end,
  }

  -- Fancy start screen
  use {
    'glepnir/dashboard-nvim',
    config = function()
      require 'plugins.configs.dashboard'
    end,
  }

  -- Parser
  use {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    run = ':TSUpdate',
    config = function()
      require 'plugins.configs.treesitter'
    end,
  }
  use {
    'nvim-treesitter/playground',
    after = 'nvim-treesitter'
  }

  -- Color
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require 'plugins.configs.colorizer'
    end,
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
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
         require 'plugins.configs.gitsigns'
      end,
  }

  -- Multiple cursors
  -- TODO: Need to check again
  use {
    'mg979/vim-visual-multi',
    branch = 'master',
    event = 'BufAdd',
    config = function()
       require 'plugins.configs.visualmulti'
    end,
  }

  -- Commenter
  use {
    'terrortylor/nvim-comment',
    config = function()
       require 'plugins.configs.comment'
    end,
  }

  -- Auto close (X)HTML tags
  use {
    'alvan/vim-closetag',
    config = function()
      local global = vim.g
      -- File extensions where this plugin is enabled
      global.closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts,*.vue'
      -- List of non-closing tags self-closing in the specified files
      global.closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx,*.vuex'
      -- Make the list of non-closing tags case-sensitive (e.g. `<Link>` will be>
      global.closetag_emptyTags_caseSensitive = 1
    end
  }

  -- Surround parentheses, brackets, quotes, XML tags, and more
  use { 'tpope/vim-surround' }

  -- Emmet
  use {
    'mattn/emmet-vim',
    config = function()
      local global = vim.g
      -- Remap the default emmet's leader key
      global.user_emmet_leader_key = '<C-y>'
    end
  }

  -- Fuzzy search
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' }
    },
    config = function()
       require 'plugins.configs.telescope'
    end,
  }

  -- Formatter
  use {
    'sbdchd/neoformat',
    cmd = 'Neoformat',
    config = function()
      local global = vim.g
      -- Enable formatters for python
      global.neoformat_enabled_python = { 'yapf', 'autopep8', 'black' }
    end,
  }

  -- LSP supporter
  use {
    'neovim/nvim-lspconfig',
    requires = {
      {
        'glepnir/lspsaga.nvim',
        config = function()
          require 'plugins.configs.saga'
        end
      },
    },
    config = function()
      require 'plugins.configs.lsp'
    end,
  }
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'L3MON4D3/LuaSnip' },
      { 'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' },
      { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' },
      { 'hrsh7th/cmp-path', after = 'nvim-cmp' }
    },
    config = function()
      require 'plugins.configs.cmp'
    end
  }

  -- Autopairs supporter
  use {
    'windwp/nvim-autopairs',
    after = 'nvim-cmp',
    config = function()
       require 'plugins.configs.autopairs'
    end,
  }

  -- Measure startup time
  use { 'dstein64/vim-startuptime' }
end)
