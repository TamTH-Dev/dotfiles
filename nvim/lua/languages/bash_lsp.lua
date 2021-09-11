local util = require 'lspconfig/util'

local bash_lsp = {}

function bash_lsp:config()
  return {
    cmd = { 'bash-language-server', 'start' },
    cmd_env = {
      GLOB_PATTERN = '*@(.sh|.inc|.bash|.command)'
    },
    filetypes = { 'sh' },
    root_dir = function(fname)
      return util.root_pattern('.git')(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
    end
  }
end

return bash_lsp
