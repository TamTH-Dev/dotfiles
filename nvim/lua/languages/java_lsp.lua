local util = require 'lspconfig/util'

local java_lsp = {}

function java_lsp:config()
  return {
    cmd = { '/home/madlife/scripts/jdtls-launcher.sh' },
    filetypes = { "java" },
    handlers = {
      -- ["language/status"] = <function 1>,
      -- ["textDocument/codeAction"] = <function 2>,
      -- ["textDocument/rename"] = <function 3>,
      -- ["workspace/applyEdit"] = <function 4>
    },
    root_dir = function(fname)
      local root_files = {
        'build.xml', -- Ant
        'pom.xml', -- Maven
        'build.gradle', -- Gradle
        'settings.gradle', -- Gradle
        'settings.gradle.kts', -- Gradle
      }
      return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
    end,
  }
end

return java_lsp
