" Source configuration files
scriptencoding utf-8

" Installed plugins
source ~/.config/nvim/installed-plugins/plugins.vim

" Custom key bindings
luafile ~/.config/nvim/lua/keybindings.lua

" Common options
luafile ~/.config/nvim/lua/options.lua

" Plugins configuration
luafile ~/.config/nvim/lua/plugins/airline.lua
luafile ~/.config/nvim/lua/plugins/close-tag.lua
luafile ~/.config/nvim/lua/plugins/cmp_config.lua
luafile ~/.config/nvim/lua/plugins/emmet.lua
luafile ~/.config/nvim/lua/plugins/multi-cursors.lua
luafile ~/.config/nvim/lua/plugins/neoformat.lua
luafile ~/.config/nvim/lua/plugins/rnvimr.lua
" luafile ~/.config/nvim/lua/plugins/compe_config.lua
luafile ~/.config/nvim/lua/plugins/saga.lua
luafile ~/.config/nvim/lua/plugins/telescope.lua
luafile ~/.config/nvim/lua/plugins/treesitter.lua

" Language server protocol
luafile ~/.config/nvim/lua/lsp.lua
