call plug#begin('~/.config/nvim/plugged')

" Colorscheme
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'

" Add multi cursors
Plug 'terryma/vim-multiple-cursors'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" File explorer
Plug 'scrooloose/nerdtree'

" Commenter
Plug 'scrooloose/nerdcommenter'

" Support auto close
Plug 'cohama/lexima.vim'

" Add icons
Plug 'ryanoasis/vim-devicons'

" Snippets
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'

" Allows to use <Tab> for all insert completion needs
Plug 'ervandew/supertab'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting
Plug 'pangloss/vim-javascript'  " Javascript
Plug 'maxmellon/vim-jsx-pretty'  " Jsx
Plug 'posva/vim-vue'  " Vue
Plug 'herringtondarkholme/yats.vim'  " Typescript
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}  " Python
Plug 'octol/vim-cpp-enhanced-highlight'  " C++

" Auto close (X)HTML tags
Plug 'alvan/vim-closetag'

" Emmet for nvim
Plug 'mattn/emmet-vim'

" Fuzzy finding, buffer management
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

