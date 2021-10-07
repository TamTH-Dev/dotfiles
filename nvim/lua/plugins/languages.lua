local M = {}

M.bash = {
  cmd_env = {
    GLOB_PATTERN = '*@(.sh|.inc|.bash|.command)'
  },
  filetypes = { 'sh' },
  root_dir = function(fname)
    local util = require 'lspconfig/util'
    return util.root_pattern('.git')(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end
}

M.cpp = {
  filetypes = { 'c', 'cpp' },
  root_dir = function(fname)
    local util = require 'lspconfig/util'
    local root_files = {
      'compile_commands.json',
      'compile_flags.txt',
      '.git',
    }
    return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end,
}

M.css = {
  filetypes = { 'css', 'scss', 'less' },
  root_dir = function(fname)
    local util = require 'lspconfig/util'
    return util.root_pattern('package.json', '.git')(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end,
  settings = {
    css = {
      validate = true
    },
    less = {
      validate = true
    },
    scss = {
      validate = true
    }
  }
}

M.html = {
    init_options = {
      configurationSection = { 'html', 'css', 'javascript', 'markdown' },
      embeddedLanguages = {
        css = true,
        javascript = true
      }
    },
    root_dir = function(fname)
      local util = require 'lspconfig/util'
      return util.root_pattern('package.json', '.git')(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
    end,
    filetypes = { 'html', 'markdown' },
}

M.java = {
  filetypes = { 'java' },
  root_dir = function(fname)
    local util = require 'lspconfig/util'
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

M.json = {
  cmd = { "vscode-json-language-server", "--stdio" },
  init_options = {
    provideFormatter = true
  },
  root_dir = function(fname)
    local util = require 'lspconfig/util'
    local root_files = {
      'package.json',
      'tsconfig.json',
      'jsconfig.json',
      '.git',
    }
    return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end,
}

M.lua = {
  settings = {
    Lua = {
      runtime = {
        -- LuaJIT in the case of Neovim
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = {
          -- Global var for neovim
          'vim',
          -- Global var for awesome
          'awesome',
          'root',
          'client',
          'screen'
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    }
  }
}

M.python = {
  filetypes = { 'python' },
  root_dir = function(fname)
    local util = require 'lspconfig/util'
    local root_files = {
      'pyproject.toml',
      'setup.py',
      'setup.cfg',
      'requirements.txt',
      'Pipfile',
      'pyrightconfig.json',
    }
    return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true
      }
    }
  }
}

-- local eslint = {
--   lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
--   lintStdin = true,
--   lintFormats = {"%f:%l:%c: %m"},
--   lintIgnoreExitCode = true,
--   formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
--   formatStdin = true
-- }

M.typescript = {
  root_dir = function(fname)
    local util = require 'lspconfig/util'
    local root_files = {
      'package.json',
      'tsconfig.json',
      'jsconfig.json',
      '.git',
    }
    return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end,
  settings = {
    languages = {
      javascript = { },
      javascriptreact = { },
      ["javascript.jsx"] = { },
      typescript = { },
      ["typescript.tsx"] = { },
      typescriptreact = { },
    }
  },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescript.tsx",
    "typescriptreact"
  }
}

M.yaml = {
  root_dir = function(fname)
    local util = require 'lspconfig/util'
    local root_files = {
      '*.yml',
      '*.yaml',
    }
    return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end,
  settings = {
    ansible = {
      ansible = {
        path = 'ansible'
      },
      ansibleLint = {
        enabled = false,
        path = 'ansible-lint'
      },
      python = {
        interpreterPath = 'python'
      }
    }
  },
  filetypes = { 'yaml', 'yml' },
}

return M
