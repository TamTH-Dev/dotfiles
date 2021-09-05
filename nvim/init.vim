" Source configuration files
scriptencoding utf-8

" Installed plugins
source ~/.config/nvim/installed-plugins/plugins.vim

" Default key mappings
source ~/.config/nvim/key-bindings/mappings.vim

" General and plugins configuration
source ~/.config/nvim/plug-config/general.vim
source ~/.config/nvim/plug-config/airline.vim
source ~/.config/nvim/plug-config/close-tag.vim
" source ~/.config/nvim/plug-config/coc.vim
source ~/.config/nvim/plug-config/emmet.vim
" source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/plug-config/multi-cursors.vim
" source ~/.config/nvim/plug-config/nerdtree.vim
source ~/.config/nvim/plug-config/nerd-commenter.vim
source ~/.config/nvim/plug-config/telescope.vim

" luafile ~/.config/nvim/lua/plugins/compe-config.lua
luafile ~/.config/nvim/lua/plugins/cmp-config.lua
luafile ~/.config/nvim/lua/plugins/telescope.lua
luafile ~/.config/nvim/lua/plugins/treesitter.lua

" Language server protocol
luafile ~/.config/nvim/lua/languages/lsp.lua
