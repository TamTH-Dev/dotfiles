call plug#begin('~/.config/nvim/plugged')

" Colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'sonph/onehalf'
" Plug 'arcticicestudio/nord-vim'
" Plug 'mhartington/oceanic-next'
" Plug 'joshdick/onedark.vim'

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
Plug 'scrooloose/nerdcommenter'

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
" Plug 'scrooloose/nerdtree'
" Plug 'shougo/defx.nvim'

" Fuzzy search
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
