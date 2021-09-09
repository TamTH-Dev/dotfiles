local util = require 'lspconfig/util'

-- local system_name
-- if vim.fn.has('mac') == 1 then
--   system_name = 'macOS'
-- elseif vim.fn.has('unix') == 1 then
--   system_name = 'Linux'
-- elseif vim.fn.has('win32') == 1 then
--   system_name = 'Windows'
-- else
--   print('Unsupported system for sumneko')
-- end

-- local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
local sumneko_root_path = '/home/madlife/lua-language-server'
-- local sumneko_binary = sumneko_root_path..'/bin/'..system_name..'/lua-language-server'
local sumneko_binary = '/home/madlife/lua-language-server/bin/Linux/lua-language-server'

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

local lua_lsp = {}

function lua_lsp:config()
  return {
    cmd = { sumneko_binary, '-E', sumneko_root_path .. '/main.lua' },
    root_dir = function(fname)
      local root_files = {
        'init.lua',
        '.git',
      }
      return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
    end,
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
          -- Setup your lua path
          path = runtime_path,
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = { 'vim' },
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file('', true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      },
    }
  }
end

return lua_lsp
