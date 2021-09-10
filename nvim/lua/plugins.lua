-- Ensure that packer.nvim is installed
local fn = vim.fn
local cmd = vim.api.nvim_command
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  cmd('packadd packer.nvim')
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  -- Colorscheme
  use { 'ghifarit53/tokyonight-vim' }

  -- Customized status line
  use {
    'glepnir/galaxyline.nvim',
    requires = {
      { 'kyazdani42/nvim-web-devicons' }
    }
  }

  -- Fancy start screen
  use { 'glepnir/dashboard-nvim' }

  -- Parser
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use { 'nvim-treesitter/playground' }

  -- Symbols outline
  use { 'simrat39/symbols-outline.nvim' }

  -- Icons
  use {
    'romgrk/barbar.nvim',
    requires = {
      { 'kyazdani42/nvim-web-devicons' }
    }
  }

  -- Git wrapper
  use { 'tpope/vim-fugitive' }
  use {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('gitsigns').setup()
      end
  }

  -- Multiple cursors
  use { 'terryma/vim-multiple-cursors' }

  -- Commenter
  use { 'tpope/vim-commentary' }

  -- Support auto close
  use { 'cohama/lexima.vim' }

  -- Auto close (X)HTML tags
  use { 'alvan/vim-closetag' }

  -- Surround parentheses, brackets, quotes, XML tags, and more
  use { 'tpope/vim-surround' }

  -- Emmet
  use { 'mattn/emmet-vim' }

  -- File explorer
  use { 'kyazdani42/nvim-tree.lua' }

  -- Fuzzy search
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' }
    }
  }

  -- Formatter
  use { 'sbdchd/neoformat' }

  -- LSP supporter
  use {
    'neovim/nvim-lspconfig',
    requires = {
      { 'glepnir/lspsaga.nvim' }
    }
  }
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'L3MON4D3/LuaSnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp' },
      { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' },
      { 'hrsh7th/cmp-path', after = 'nvim-cmp' }
    }
  }

  -- Measure startup time
  use { 'dstein64/vim-startuptime' }
end)
