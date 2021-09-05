call plug#begin('~/.config/nvim/plugged')

" Colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'ghifarit53/tokyonight-vim'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax highlighting
" Plug 'maxmellon/vim-jsx-pretty'  " Jsx
" Plug 'posva/vim-vue'  " Vue
" Plug 'herringtondarkholme/yats.vim'  " Typescript
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}  " Python
" Plug 'octol/vim-cpp-enhanced-highlight'  " C++

" Parser
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Symbols outline
Plug 'simrat39/symbols-outline.nvim'

" Add icons
" Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Add multi cursors
Plug 'terryma/vim-multiple-cursors'

" Commenter
Plug 'scrooloose/nerdcommenter'

" Support auto close
Plug 'cohama/lexima.vim'

" Auto close (X)HTML tags
Plug 'alvan/vim-closetag'

" Surround parentheses, brackets, quotes, XML tags, and more
Plug 'tpope/vim-surround'

" LSP support
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
Plug 'honza/vim-snippets'

" Emmet for nvim
Plug 'mattn/emmet-vim'

" File explorer
" Plug 'scrooloose/nerdtree'
" Plug 'shougo/defx.nvim'

" Fuzzy search
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

call plug#end()
