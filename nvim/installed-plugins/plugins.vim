call plug#begin('~/.config/nvim/plugged')

" Colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'ghifarit53/tokyonight-vim'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Parser
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Symbols outline
Plug 'simrat39/symbols-outline.nvim'

" Add icons
Plug 'kyazdani42/nvim-web-devicons'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Add multi cursors
Plug 'terryma/vim-multiple-cursors'

" Commenter
" Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'

" Support auto close
Plug 'cohama/lexima.vim'

" Auto close (X)HTML tags
Plug 'alvan/vim-closetag'

" Surround parentheses, brackets, quotes, XML tags, and more
Plug 'tpope/vim-surround'

" LSP support
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/nvim-compe'
" Plug 'saadparwaiz1/cmp_luasnip'
" Plug 'L3MON4D3/LuaSnip'

" Formatter
Plug 'sbdchd/neoformat'

" Emmet for nvim
Plug 'mattn/emmet-vim'

" File explorer
Plug 'kevinhwang91/rnvimr'

" Fuzzy search
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

call plug#end()
