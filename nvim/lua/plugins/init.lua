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

  -- Speed up loading Lua modules
  use { 'lewis6991/impatient.nvim', rocks = 'mpack' }

  -- Colorscheme
  use {
    'folke/tokyonight.nvim',
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
    setup = function()
      require 'plugins.configs.barbar'
      require 'core.mappings'.barbar()
    end,
  }

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    after = 'nvim-web-devicons',
    cmd = { 'NvimTreeToggle', 'NvimTreeOpen' },
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    setup = function()
       require 'plugins.configs.nvimtree'
       require 'core.mappings'.nvimtree()
    end,
  }

  -- Fancy start screen
  use {
    'goolord/alpha-nvim',
    config = function ()
      require 'plugins.configs.alpha'
    end
  }

  -- Parser
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require 'plugins.configs.treesitter'
    end,
  }
  use {
    'nvim-treesitter/playground',
    cmd = 'TSPlaygroundToggle',
    after = 'nvim-treesitter',
    opt = true,
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
  use {
    'terryma/vim-multiple-cursors',
    event = 'BufEnter',
    setup = function()
      local global = vim.g
      global.multi_cursor_use_default_mapping = 0
      global.multi_cursor_start_word_key = '<C-s>'
      global.multi_cursor_select_all_word_key = '<A-s>'
      global.multi_cursor_next_key = '<C-s>'
      global.multi_cursor_prev_key = '<C-p>'
      global.multi_cursor_skip_key = '<C-x>'
      global.multi_cursor_quit_key = '<Esc>'
    end
  }

  -- Commenter
  use {
    'terrortylor/nvim-comment',
    keys = { '<leader>cl', '<leader>c' },
    config = function()
      require 'plugins.configs.comment'
    end,
  }

  -- Auto close (X)HTML tags
  use {
    'alvan/vim-closetag',
    event = 'InsertEnter',
    ft = { 'html', 'javascript', 'javascriptreact', 'vue', 'typescript', 'typescriptreact' },
    setup = function()
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
  use {
    'tpope/vim-surround',
    event = 'InsertEnter',
  }

  -- Emmet
  use {
    'mattn/emmet-vim',
    event = 'InsertEnter',
    ft = { 'html', 'css', 'javascript', 'javascriptreact', 'vue', 'typescript', 'typescriptreact' },
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
      { 'nvim-lua/plenary.nvim' },
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make',
      },
    },
    config = function()
      require 'plugins.configs.telescope'
    end,
    setup = function()
      require 'core.mappings'.telescope()
    end
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
    config = function()
      require 'plugins.configs.lsp'
    end,
  }
  use {
    'glepnir/lspsaga.nvim',
    config = function()
      require 'plugins.configs.saga'
    end,
    setup = function()
      require 'core.mappings'.saga()
    end,
  }

  -- Completion plugins
  use {
    'L3MON4D3/LuaSnip',
    event = 'InsertEnter',
  }
  use {
    'hrsh7th/nvim-cmp',
    after = { 'LuaSnip' },
    requires = {
      { 'saadparwaiz1/cmp_luasnip', after = { 'nvim-cmp', 'LuaSnip' }, opt = true },
      { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp', opt = true },
      { 'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp', opt = true },
      { 'hrsh7th/cmp-calc', after = 'nvim-cmp', opt = true },
      { 'hrsh7th/cmp-buffer', after = 'nvim-cmp', opt = true },
      { 'hrsh7th/cmp-path', after = 'nvim-cmp', opt = true }
    },
    config = function()
      require 'plugins.configs.cmp'
    end
  }
  -- use {
  --   'ms-jpq/coq_nvim',
  --   after = { 'coq.artifacts' },
  --   branch = 'coq',
  --   setup = function()
  --     vim.g.coq_settings = { auto_start = false }
  --   end,
  --   config = function()
  --     vim.g.coq_settings = { ['display.icons.mode'] = 'short', ['display.pum.kind_context'] = { '','' }, ['display.pum.source_context'] = { '' ,'' } }
  --     if vim.o.ft ~= 'lua' and vim.o.ft ~= 'sql' and vim.o.ft ~= 'vim' then
  --       vim.cmd('COQnow')
  --     end
  --   end
  -- } -- main one
  -- use {
  --   'ms-jpq/coq.artifacts',
  --   branch= 'artifacts',
  --   event = 'InsertEnter',
  -- } -- 9000+ Snippets

  -- Autopairs supporter
  use {
    'windwp/nvim-autopairs',
    after = 'nvim-cmp',
    opt = true,
    config = function()
      require 'plugins.configs.autopairs'
    end,
  }

  -- Measure startup time
  use { 'dstein64/vim-startuptime' }
end)
