call plug#begin('~/.config/nvim/plugged')

" Colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'phanviet/vim-monokai-pro'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax highlighting
Plug 'pangloss/vim-javascript'  " Javascript
Plug 'maxmellon/vim-jsx-pretty'  " Jsx
Plug 'posva/vim-vue'  " Vue
Plug 'herringtondarkholme/yats.vim'  " Typescript
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}  " Python
Plug 'octol/vim-cpp-enhanced-highlight'  " C++

" Add icons
Plug 'ryanoasis/vim-devicons'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Add multi cursors
Plug 'terryma/vim-multiple-cursors'

" Commenter
Plug 'tpope/vim-commentary'

" Support auto close
Plug 'cohama/lexima.vim'

" Auto close (X)HTML tags
Plug 'alvan/vim-closetag'

" Surround parentheses, brackets, quotes, XML tags, and more
Plug 'tpope/vim-surround'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
Plug 'honza/vim-snippets'

" Emmet for nvim
Plug 'mattn/emmet-vim'

" File explorer
Plug 'scrooloose/nerdtree'

" Display tags in a window, ordered by scope
Plug 'majutsushi/tagbar'

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Fuzzy finding, buffer management
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()
