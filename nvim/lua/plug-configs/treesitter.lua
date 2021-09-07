local treesitter_configs = require 'nvim-treesitter.configs'

treesitter_configs.setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = false,
    disable = {}
  },
  ensure_installed = 'all'
}
