local nvim_lsp = require 'lspconfig'
local util = require 'lspconfig/util'

-- local configs = require 'lspconfig/configs'

-- local ts_lsp = require 'languages/ts_lsp'
-- local python_lsp = require 'languages/python_lsp'
-- local clang_lsp = require 'languages/clang_lsp'
-- local java_lsp = require 'languages/java_lsp'
-- local lua_lsp = require 'languages/lua_lsp'
-- local yaml_lsp = require 'languages/yaml_lsp'
-- local bash_lsp = require 'languages/bash_lsp'
-- local json_lsp = require 'languages/json_lsp'
-- local html_lsp = require 'languages/html_lsp'
-- local css_lsp = require 'languages/css_lsp'

-- Enabled language servers
-- local servers = {
--   tsserver = ts_lsp:config(), -- Typescript
--   pyright = python_lsp:config(), -- Python
--   clangd = clang_lsp:config(), -- C, C++
--   jdtls = java_lsp:config(), -- Java
--   sumneko_lua = lua_lsp:config(), -- Lua
--   ansiblels = yaml_lsp:config(), -- Yaml
--   bashls = bash_lsp:config(), -- Yaml
--   jsonls = json_lsp:config(), -- JSON
--   html = html_lsp:config(), -- Html
--   cssls = css_lsp:config() -- Css
-- }

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- for server, config in pairs(servers) do
--   if config then
--     configs[server] = {
--       default_config = config
--     }
--   end
--   if nvim_lsp[server] then
--     nvim_lsp[server].setup {
--       on_attach = on_attach,
--       capabilities = capabilities,
--     }
--   end

local lsp = vim.lsp
local api = vim.api

lsp.handlers['textDocument/publishDiagnostics'] = lsp.with(
    lsp.diagnostic.on_publish_diagnostics,
    {
        signs = true,
        virtual_text = {
          -- prefix = '',
          prefix = '😈',
          spacing = 0,
        },
        underline = true,
        severity_sort = true,
    }
)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
   require 'lsp_signature'.on_attach({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    handler_opts = {
      border = 'single',
      use_lspsaga = true,
      hint_prefix = 'U+1f608',
    }
  }, bufnr)

  local function buf_set_keymap(...) api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) api.nvim_buf_set_option(bufnr, ...) end
  local opts = { noremap = true, silent = true } -- Mappings
  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
end

-- Update capabilities
local capabilities = lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  },
}
capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
   properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
   },
}

local eslint = {
  lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
  lintStdin = true,
  lintFormats = {"%f:%l:%c: %m"},
  lintIgnoreExitCode = true,
  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true
}

-- Typescript, Javascript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { 'typescript-language-server', '--stdio' },
  init_options = {
    hostInfo = 'neovim'
  },
  root_dir = function(fname)
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
      javascript = { eslint },
      javascriptreact = { eslint },
      ["javascript.jsx"] = { eslint },
      typescript = { eslint },
      ["typescript.tsx"] = { eslint },
      typescriptreact = { eslint }
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

-- Python
nvim_lsp.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_dir = function(fname)
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

-- C, C++
nvim_lsp.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { 'clangd', '--background-index' },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
  root_dir = function(fname)
    local root_files = {
      'compile_commands.json',
      'compile_flags.txt',
      '.git',
    }
    return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end,
}

-- Java
nvim_lsp.jdtls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { '/home/madlife/scripts/jdtls-launcher.sh' },
  filetypes = { "java" },
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

-- Lua
nvim_lsp.sumneko_lua.setup {
  cmd = {
    vim.fn.expand("$HOME")..'/lua-language-server/bin/Linux/lua-language-server',
    '-E',
    vim.fn.expand("$HOME")..'/lua-language-server/main.lua'
  },
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ";"),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        enable = true,
        globals = { 'vim', 'nvim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
        }
      },
    },
  }
}

-- Bash
nvim_lsp.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { 'bash-language-server', 'start' },
  cmd_env = {
    GLOB_PATTERN = '*@(.sh|.inc|.bash|.command)'
  },
  filetypes = { 'sh' },
  root_dir = function(fname)
    return util.root_pattern('.git')(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end
}

-- JSON
nvim_lsp.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "vscode-json-language-server", "--stdio" },
  filetypes = { "json" },
  init_options = {
    provideFormatter = true
  },
  root_dir = function(fname)
    local root_files = {
      'package.json',
      'tsconfig.json',
      'jsconfig.json',
      '.git',
    }
    return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end,
}

-- YAML
nvim_lsp.ansiblels.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { 'ansible-language-server', '--stdio' },
  filetypes = { 'yaml' },
  root_dir = function(fname)
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
  }
}

-- HTML
nvim_lsp.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html' },
  init_options = {
    configurationSection = { 'html', 'css', 'javascript' },
    embeddedLanguages = {
      css = true,
      javascript = true
    }
  },
  root_dir = function(fname)
    return util.root_pattern('package.json', '.git')(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end
}

-- CSS
nvim_lsp.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { 'vscode-css-language-server', '--stdio' },
  filetypes = { 'css', 'scss', 'less' },
  root_dir = function(fname)
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
