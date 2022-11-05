-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/lap15870-local/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/lap15870-local/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/lap15870-local/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/lap15870-local/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/lap15870-local/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n�\3\0\1\b\0\18\00006\1\0\0'\3\1\0B\1\2\2+\2\0\0009\3\2\0009\4\2\0019\4\3\4\5\3\4\0X\3\a�6\3\0\0'\5\4\0B\3\2\0029\3\5\3B\3\1\2\18\2\3\0X\3\16�9\3\6\0009\4\6\0019\4\a\4\4\3\4\0X\3\5�9\3\6\0009\4\6\0019\4\b\4\5\3\4\0X\3\6�6\3\0\0'\5\4\0B\3\2\0029\3\t\3B\3\1\2\18\2\3\0006\3\0\0'\5\n\0B\3\2\0029\3\v\0035\5\14\0009\6\2\0009\a\2\0019\a\f\a\5\6\a\0X\6\2�'\6\r\0X\a\1�'\6\15\0=\6\16\5=\2\17\5D\3\2\0\rlocation\bkey\16__multiline\1\0\0\14__default\tline\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\nctype\18Comment.utils\frequire�\1\1\0\6\0\v\0\0186\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0\n�9\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0043\5\t\0=\5\n\4B\2\2\1K\0\1\0K\0\1\0\rpre_hook\0\ropleader\1\0\2\tline\agc\nblock\agb\ftoggler\1\0\2\tline\bgcc\nblock\bgbc\1\0\2\fpadding\2\vsticky\2\nsetup\fComment\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\no\0\0\6\2\3\0\14-\0\0\0009\0\0\0-\2\1\0+\3\2\0+\4\1\0+\5\2\0B\0\5\2-\1\0\0009\1\1\1\18\3\0\0'\4\2\0+\5\1\0B\1\4\1K\0\1\0\0\0\3�\vnormal\18nvim_feedkeys\27nvim_replace_termcodes�\2\1\3\b\1\16\0\28\18\5\0\0009\3\0\0'\6\1\0'\a\2\0B\3\4\2\18\5\3\0009\3\0\3'\6\3\0'\a\4\0B\3\4\0025\4\5\0=\1\6\4=\0\a\4\15\0\2\0X\5\6�5\5\t\0>\3\2\5>\2\3\0055\6\n\0>\6\4\5=\5\b\0045\5\v\0=\1\f\0053\6\r\0=\6\14\5=\4\15\0052\0\0�L\5\2\0\2�\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\fnoremap\2\vsilent\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\6\nwidth\3\24\rposition\vcenter\vcursor\3\5\ahl\27DiagnosticFloatingInfo\19align_shortcut\nright\16hl_shortcut\fSpecial\r<leader>\bSPC\5\a%s\tgsub�\14\1\0\r\0+\1Q6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0I�6\2\3\0009\2\4\0026\3\3\0009\3\5\0035\4\6\0005\5\a\0=\5\b\0045\5\t\0=\5\n\0043\5\v\0005\6\f\0004\a\a\0\18\b\5\0'\n\r\0'\v\14\0'\f\15\0B\b\4\2>\b\1\a\18\b\5\0'\n\16\0'\v\17\0'\f\18\0B\b\4\2>\b\2\a\18\b\5\0'\n\19\0'\v\20\0'\f\21\0B\b\4\2>\b\3\a\18\b\5\0'\n\22\0'\v\23\0'\f\24\0B\b\4\2>\b\4\a\18\b\5\0'\n\25\0'\v\26\0'\f\27\0B\b\4\2>\b\5\a\18\b\5\0'\n\28\0'\v\29\0'\f\30\0B\b\4\0?\b\0\0=\a\b\0065\a\31\0=\a\n\0065\a \0005\b!\0=\b\n\a5\b\"\0=\4#\b=\6$\b=\a%\b5\t'\0004\n\3\0005\v&\0>\v\1\n9\v$\b>\v\2\n=\n(\t9\n)\1\18\f\t\0B\n\2\1\18\n\3\0'\f*\0B\n\2\0012\0\0�K\0\1\0K\0\1\0001autocmd FileType alpha setlocal nofoldenable\nsetup\vlayout\1\0\0\1\0\2\ttype\fpadding\bval\3\14\vfooter\fbuttons\vheader\1\0\0\1\0\2\ahl\vString\rposition\vcenter\1\0\2\ttype\ttext\bval?A clever person solves a problem. A wise person avoids it.\1\0\2\fspacing\3\2\rposition\vcenter\16<cmd>qa<CR>\14  Quit\6q9<cmd>e $HOME/.config/nvim/lua/default_config.lua<CR>\18  Settings\6s\18<cmd>ene!<CR>\18  New File\6n\28<cmd>NvimTreeToggle<CR>\27  Project structure\6o!<cmd>Telescope live_grep<CR>\19  Find Word\6f.<cmd>Telescope find_files hidden=true<CR>\19  Find File\6p\1\0\1\ttype\ngroup\0\topts\1\0\2\ahl\fSpecial\rposition\vcenter\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\bcmd\bapi\bvim\nalpha\frequire\npcall\r����\4\0" },
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nU\0\1\5\1\4\0\f9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\15\0\1\0X\2\4�-\1\0\0009\1\3\0019\3\0\0D\1\2\0K\0\1\0\2�\16fnamemodify\t%.md\nmatch\tname�\4\1\0\b\0\r\0\0216\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0\r�6\2\3\0009\2\4\0029\3\5\0015\5\v\0005\6\6\0005\a\a\0=\a\b\0063\a\t\0=\a\n\6=\6\f\5B\3\2\0012\0\0�K\0\1\0K\0\1\0\foptions\1\0\0\19name_formatter\0\14indicator\1\0\2\ticon\b▎\nstyle\ticon\1\0\22\22buffer_close_icon\b\18modified_icon\b●\15close_icon\b\22left_trunc_marker\b\23right_trunc_marker\b\27always_show_bufferline\1\20max_name_length\3\14\22max_prefix_length\3\n\rtab_size\3\16\16diagnostics\1\22show_buffer_icons\2\28show_buffer_close_icons\1\20show_close_icon\1\24show_tab_indicators\2\24persist_buffer_sort\2\20separator_style\tthin\fnumbers\tnone\25enforce_regular_tabs\1\18close_command\16bdelete! %d\fsort_by\aid\24right_mouse_command\16bdelete! %d\23left_mouse_command\14buffer %d\nsetup\afn\bvim\15bufferline\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["close-buffers.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/close-buffers.nvim",
    url = "https://github.com/kazhala/close-buffers.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after = { "friendly-snippets" },
    after_files = { "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\2\n4\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\23did_load_filetypes\6g\bvim\0" },
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["flutter-tools.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\a\0\17\0\0236\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\b\0005\6\a\0=\6\t\5=\5\n\0045\5\f\0005\6\v\0=\6\r\0055\6\14\0=\6\15\5=\5\16\4B\2\2\1K\0\1\0\blsp\rsettings\1\0\4\27renameFilesWithClasses\vprompt\19enableSnippets\2\14showTodos\1\26completeFunctionCalls\2\ncolor\1\0\0\1\0\5\fenabled\2\15foreground\2\17virtual_text\1\21virtual_text_str\5\15background\2\16decorations\15statusline\1\0\0\1\0\2\16app_version\1\vdevice\1\aui\1\0\0\1\0\2\23notification_style\vnative\vborder\frounded\nsetup\18flutter-tools\frequire\npcall\0" },
    loaded = true,
    needs_bufread = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/flutter-tools.nvim",
    url = "https://github.com/akinsho/flutter-tools.nvim"
  },
  ["friendly-snippets"] = {
    load_after = {
      cmp_luasnip = true,
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\a\0\17\0\0236\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\6\0005\6\5\0=\6\a\0055\6\b\0=\6\t\0055\6\n\0=\6\v\0055\6\f\0=\6\r\0055\6\14\0=\6\15\5=\5\16\4B\2\2\1K\0\1\0\nsigns\17changedelete\1\0\2\ahl\15DiffChange\ttext\b\14topdelete\1\0\2\ahl\15DiffDelete\ttext\b\vdelete\1\0\2\ahl\15DiffDelete\ttext\b\vchange\1\0\2\ahl\15DiffChange\ttext\b\badd\1\0\0\1\0\2\ahl\fDiffAdd\ttext\b\1\0\b\23current_line_blame\1\15debug_mode\1\15signcolumn\2\20update_debounce\3d\nnumhl\1\vlinehl\1\14word_diff\1\18sign_priority\3\6\nsetup\rgitsigns\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n=\2\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0G\3\0\0A\0\1\1K\0\1\0\6n\20nvim_set_keymap\bapi\bvim�\6\1\0\t\0\26\0:6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0002�9\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\4B\2\2\0013\2\t\0005\3\n\0\18\4\2\0'\6\v\0'\a\f\0\18\b\3\0B\4\4\1\18\4\2\0'\6\r\0'\a\14\0\18\b\3\0B\4\4\1\18\4\2\0'\6\15\0'\a\16\0\18\b\3\0B\4\4\1\18\4\2\0'\6\17\0'\a\18\0\18\b\3\0B\4\4\1\18\4\2\0'\6\19\0'\a\20\0\18\b\3\0B\4\4\1\18\4\2\0'\6\19\0'\a\21\0\18\b\3\0B\4\4\1\18\4\2\0'\6\22\0'\a\23\0\18\b\3\0B\4\4\1\18\4\2\0'\6\24\0'\a\25\0\18\b\3\0B\4\4\1K\0\1\0K\0\1\0*<cmd>Lspsaga diagnostic_jump_prev<CR>\15<leader>gp*<cmd>Lspsaga diagnostic_jump_next<CR>\15<leader>gn-<cmd>Lspsaga show_cursor_diagnostics<CR>+<cmd>Lspsaga show_line_diagnostics<CR>\15<leader>gl\31<cmd>Lspsaga hover_doc<CR>\15<leader>gk <cmd>Lspsaga lsp_finder<CR>\15<leader>gf!<cmd>Lspsaga code_action<CR>\15<leader>ga\28<cmd>Lspsaga rename<CR>\15<leader>gr\1\0\2\fnoremap\2\vsilent\2\0\17finder_icons\1\0\3\bref\t \bdef\t \tlink\t \22diagnostic_header\1\5\0\0\t \t \t \t \1\0\5\21code_action_icon\t \29code_action_num_shortcut\2\17border_style\frounded\18saga_winblend\3\0\22max_preview_lines\3\f\18init_lsp_saga\flspsaga\frequire\npcall\0" },
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nO\0\0\5\1\3\1\r-\0\0\0009\0\0\0-\2\0\0009\2\1\2'\4\2\0B\2\2\0A\0\0\2\t\0\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\5�\b%:t\vexpand\nempty\2>\0\0\3\1\1\0\v-\0\0\0009\0\0\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\5�\rwinwidth�\1\0\0\6\1\5\0\25-\0\0\0009\0\0\0'\2\1\0B\0\2\2-\1\0\0009\1\2\1'\3\3\0\18\4\0\0'\5\4\0&\4\5\4B\1\3\2\r\2\1\0X\2\v�\21\2\1\0)\3\0\0\1\3\2\0X\2\4�\21\2\1\0\21\3\0\0\0\2\3\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\5�\6;\t.git\ffinddir\n%:p:h\vexpand�\1\0\0\3\2\r\0\0285\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\a\1=\1\b\0-\1\0\0009\1\a\1=\1\t\0-\1\0\0009\1\n\1=\1\v\0-\1\1\0009\1\f\1B\1\1\0028\1\1\0\v\1\0\0X\2\2�-\2\0\0009\1\n\2L\1\2\0\4�\5�\tmode\6R\bred\6V\6v\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tblueI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\b�\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\b�\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b▊�\2\0\0\b\4\a\0 5\0\0\0005\1\1\0-\2\0\0'\4\2\0-\5\1\0B\5\1\2'\6\3\0-\a\2\0009\a\4\a&\4\a\4B\2\2\1-\2\3\0009\2\5\2B\2\1\0028\2\2\0-\3\3\0009\3\5\3B\3\1\0028\3\3\1\14\0\2\0X\4\4�-\4\3\0009\4\5\4B\4\1\2\18\2\4\0\14\0\3\0X\4\1�'\3\6\0\18\4\3\0\18\5\2\0&\4\5\4L\4\2\0\6�\t�\4�\5�\t \tmode\fextraBg\f guibg=\27hi! LualineMode guifg=\1\0\a\6i\t \6V\t﬏ \6c\tגּ \6s\t \6n\t \6R\t \6v\t﬏ \1\0\a\6i\vINSERT\6V\vVISUAL\6c\fCOMMAND\6s\fSNIPPET\6n\vNORMAL\6R\fREPLACE\6v\vVISUAL\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b▊�\14\1\0\18\0m\0�\0016\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�2\0ـ9\4\4\0036\5\5\0009\5\6\0056\6\5\0009\6\a\0065\a\t\0003\b\b\0=\b\n\a3\b\v\0=\b\f\a3\b\r\0=\b\14\a5\b\28\0005\t\15\0005\n\22\0005\v\20\0005\f\17\0009\r\16\4=\r\16\f9\r\18\4=\r\19\f=\f\21\v=\v\23\n5\v\25\0005\f\24\0009\r\16\4=\r\16\f9\r\18\4=\r\19\f=\f\21\v=\v\26\n=\n\27\t=\t\29\b5\t\30\0004\n\0\0=\n\31\t4\n\0\0=\n \t4\n\0\0=\n!\t4\n\0\0=\n\"\t4\n\0\0=\n#\t4\n\0\0=\n$\t=\t%\b5\t&\0004\n\0\0=\n\31\t4\n\0\0=\n \t4\n\0\0=\n!\t4\n\0\0=\n\"\t4\n\0\0=\n#\t4\n\0\0=\n$\t=\t'\b3\t(\0003\n)\0003\v*\0\18\f\n\0005\14.\0003\15+\0>\15\1\0145\15-\0009\16,\4=\16\16\15=\15/\0145\0150\0=\0151\14B\f\2\1\18\f\n\0005\0143\0003\0152\0>\15\1\0145\0154\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\0146\0005\0157\0009\16\16\4=\16\16\15=\15/\0149\15\n\a\15\0\15\0X\16\1�9\15\f\a=\0155\14B\f\2\1\18\f\n\0005\0148\0005\15:\0009\0169\4=\16\16\15=\15/\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\14;\0005\15<\0=\15=\0145\15@\0005\16?\0009\17>\4=\17\16\16=\16A\0155\16C\0009\17B\4=\17\16\16=\16D\0155\16F\0009\17E\4=\17\16\16=\16G\15=\15H\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\14J\0003\15I\0>\15\1\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14K\0005\15L\0009\16,\4=\16\16\15=\15/\0145\15M\0=\0151\14B\f\2\1\18\f\v\0005\14N\0005\15O\0=\15P\0145\15Q\0=\15=\0145\15S\0005\16R\0009\17E\4=\17\16\16=\16T\0155\16U\0009\17B\4=\17\16\16=\16V\0155\16W\0009\17,\4=\17\16\16=\16X\0155\16Y\0009\17,\4=\17\16\16=\16Z\15=\15[\0145\15\\\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14]\0005\15^\0=\0151\14B\f\2\1\18\f\v\0005\14_\0006\15`\0009\15a\15=\15b\0145\15c\0009\16>\4=\16\16\15=\15/\0145\15d\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14e\0005\15f\0=\0151\0145\15g\0009\16B\4=\16\16\15=\15/\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14j\0003\15h\0>\15\1\0145\15i\0009\16,\4=\16\16\15=\15/\0145\15k\0=\0151\14B\f\2\0019\fl\1\18\14\b\0B\f\2\0012\0\0�K\0\1\0K\0\1\0\nsetup\1\0\1\nright\3\0\1\0\0\1\0\0\0\1\0\1\bgui\tbold\1\0\2\tleft\3\1\nright\3\1\1\2\0\0\rprogress\1\0\2\tleft\3\1\nright\3\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\1\0\2\tleft\3\1\nright\3\1\1\2\0\0\rfiletype\1\0\2\tleft\3\1\nright\3\1\22diagnostics_color\thint\1\0\0\tinfo\1\0\0\twarn\1\0\0\nerror\1\0\0\1\0\0\1\0\4\twarn\t \nerror\t \thint\t \tinfo\t \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\2\tleft\3\1\nright\3\1\1\0\1\bgui\tbold\1\2\0\0\rlocation\1\0\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\fremoved\t \rmodified\b柳\nadded\t \1\2\0\0\tdiff\1\0\1\bgui\tbold\fmagenta\1\2\1\0\vbranch\ticon\b\1\0\1\bgui\tbold\1\2\0\0\rfilename\tcond\1\0\2\tleft\3\0\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\tleft\3\0\nright\3\1\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\22inactive_sections\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\fextraBg\1\0\0\afg\1\0\2\25component_separators\5\23section_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\bcmd\afn\bvim\vcolors\22colors.highlights\flualine\frequire\npcall\0" },
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\b\0\15\0\0316\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�K\0\1\0009\4\4\0015\6\6\0005\a\5\0=\a\a\6B\4\2\0014\4\0\0005\5\t\0005\6\n\0>\6\2\5=\5\b\0045\5\f\0005\6\r\0>\6\2\5=\5\v\0049\5\14\3\18\a\4\0B\5\2\1K\0\1\0\17set_mappings\1\4\0\0\18vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-u>\rmappings\1\0\5\22respect_scrolloff\1\25cursor_scrolls_alone\2\16hide_cursor\2\rstop_eof\2\24use_local_scrolloff\1\1\3\0\0\n<C-u>\n<C-d>\nsetup\21neoscroll.config\14neoscroll\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\6\0\21\0K6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0014\4\17\0009\5\4\0019\5\5\0059\5\6\5>\5\1\0049\5\4\0019\5\5\0059\5\a\5>\5\2\0049\5\4\0019\5\5\0059\5\b\5>\5\3\0049\5\4\0019\5\5\0059\5\t\5>\5\4\0049\5\4\0019\5\5\0059\5\n\5>\5\5\0049\5\4\0019\5\5\0059\5\v\5>\5\6\0049\5\4\0019\5\f\0059\5\r\5>\5\a\0049\5\4\0019\5\f\0059\5\14\5>\5\b\0049\5\4\0019\5\15\0059\5\16\5>\5\t\0049\5\4\0019\5\15\0059\5\n\5>\5\n\0049\5\4\0019\5\15\0059\5\v\5>\5\v\0049\5\4\0019\5\15\0059\5\17\5>\5\f\0049\5\4\0019\5\18\0059\5\n\5>\5\r\0049\5\4\0019\5\18\0059\5\v\5>\5\14\0049\5\4\0019\5\18\0059\5\19\5>\5\15\0049\5\4\0019\5\18\0059\5\20\5>\5\16\4B\2\2\1K\0\1\0\16refactoring\rgitsigns\17code_actions\tfish\btsc\16diagnostics\fluasnip\nspell\15completion\reslint_d\veslint\16dart_format\14prettierd\rprettier\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\npcall\0" },
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n�\5\0\0\r\0\26\0+6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�K\0\1\0009\4\4\0015\6\6\0005\a\5\0=\a\a\0065\a\b\0005\b\t\0=\b\n\a6\b\v\0009\b\f\b'\n\r\0'\v\14\0'\f\15\0B\b\4\2=\b\16\a=\a\17\6B\4\2\0016\4\1\0'\6\18\0B\4\2\0029\5\19\3\18\a\5\0009\5\20\5'\b\21\0009\t\22\0045\v\24\0005\f\23\0=\f\25\vB\t\2\0A\5\2\1K\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\a\16check_comma\2\bmap\n<M-e>\19highlight_grey\fComment\voffset\3\0\14highlight\vSearch\fend_key\6$\tkeys\31qwertyuiopzxcvbnmasdfghjkl\21disable_filetype\1\0\b\21disable_in_macro\1\22enable_afterquote\2\vmap_bs\2\fmap_c_w\1\27disable_in_visualblock\1\30enable_check_bracket_line\1\rcheck_ts\2\21enable_moveright\2\1\2\0\0\20TelescopePrompt\nsetup\bcmp\19nvim-autopairs\frequire\npcall\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-buffer", "friendly-snippets", "cmp-path", "cmp-nvim-lsp", "cmp-nvim-lua", "cmp_luasnip", "nvim-autopairs" },
    config = { "\27LJ\2\n�\1\0\0\b\1\6\2\0316\0\0\0-\2\0\0009\2\1\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\19�-\2\0\0009\2\2\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\3\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\4\2'\5\5\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\4�\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\vunpack\0\2-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3�\tbody\15lsp_expand�\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\4\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\3�\6�\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\3�\tjump\rjumpable\21select_prev_item\fvisible�\1\0\2\4\1\a\0\18-\2\0\0009\3\0\0018\2\3\2=\2\0\0015\2\2\0009\3\3\0009\3\4\0038\2\3\2=\2\1\0015\2\6\0009\3\3\0009\3\4\0038\2\3\2\14\0\2\0X\3\1�)\2\0\0=\2\5\1L\1\2\0\5�\1\0\4\rnvim_lsp\3\0\vbuffer\3\1\fluasnip\3\1\tpath\3\1\bdup\tname\vsource\1\0\4\rnvim_lsp\n(LSP)\tpath\v(Path)\fluasnip\14(Snippet)\vbuffer\r(Buffer)\tmenu\tkind�\14\1\0\15\0<\0_6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�2\0Q�6\4\4\0009\4\5\0045\5\6\0003\6\a\0009\a\b\0015\t\f\0005\n\n\0003\v\t\0=\v\v\n=\n\r\t5\n\17\0005\v\15\0005\f\14\0=\f\16\v=\v\18\n5\v\20\0005\f\19\0=\f\16\v=\v\21\n=\n\22\t5\n\25\0009\v\23\0019\v\24\v)\r��B\v\2\2=\v\26\n9\v\23\0019\v\24\v)\r\4\0B\v\2\2=\v\27\n9\v\23\0019\v\28\vB\v\1\2=\v\29\n9\v\23\0019\v\30\v5\r!\0009\14\31\0019\14 \14=\14\"\rB\v\2\2=\v#\n9\v\23\0013\r$\0005\14%\0B\v\3\2=\v&\n9\v\23\0013\r'\0005\14(\0B\v\3\2=\v)\n=\n\23\t5\n+\0005\v*\0=\v,\n5\v-\0=\v.\n5\v/\0=\v0\n5\v1\0=\v2\n3\v3\0=\v4\n=\n5\t4\n\6\0005\v6\0>\v\1\n5\v7\0>\v\2\n5\v8\0>\v\3\n5\v9\0>\v\4\n5\v:\0>\v\5\n=\n;\tB\a\2\0012\0\0�K\0\1\0K\0\1\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\15duplicates\1\0\4\rnvim_lsp\3\0\vbuffer\3\1\fluasnip\3\1\tpath\3\1\17source_names\1\0\4\rnvim_lsp\n(LSP)\tpath\v(Path)\fluasnip\14(Snippet)\vbuffer\r(Buffer)\15kind_icons\1\0\25\rOperator\b\tEnum\b練\14Reference\b\fKeyword\t \15EnumMember\b\14Interface\b\rProperty\b\18TypeParameter\b\nEvent\b\tUnit\b塞\nClass\b\nValue\b\nField\b\rVariable\b\nColor\b\vFolder\b\tFile\b\rFunction\b\vMethod\b\tText\b\vModule\b\rConstant\b\vStruct\b\16Constructor\b\fSnippet\b\vfields\1\0\2\14max_width\3\0\23duplicates_default\3\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\t<Up>\v<Down>\1\0\0\16scroll_docs\fmapping\vwindow\15completion\1\0\1\17winhighlightHNormal:Normal,FloatBorder:PmenuBorder,CursorLine:Visual,Search:None\1\t\0\0\b╭\b─\b╮\b│\b╯\b─\b╰\b│\18documentation\1\0\0\vborder\1\0\2\17winhighlightHNormal:Normal,FloatBorder:PmenuBorder,CursorLine:Visual,Search:None\14scrollbar\b║\1\t\0\0\b╭\b─\b╮\b│\b╯\b─\b╰\b│\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\1\0\25\rOperator\b\tEnum\b練\14Reference\b\fKeyword\t \15EnumMember\b\14Interface\b\rProperty\b\18TypeParameter\b\nEvent\b\tUnit\b塞\nClass\b\nValue\b\nField\b\rVariable\b\nColor\b\vFolder\b\tFile\b\rFunction\b\vMethod\b\tText\b\vModule\b\rConstant\b\vStruct\b\16Constructor\b\fSnippet\b\bapi\bvim\fluasnip\bcmp\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\nJ\2\3\t\2\1\0\14\14\0\2\0X\3\1�4\2\0\0009\3\0\2\14\0\3\0X\4\1�-\3\0\0=\3\0\2-\3\1\0\18\5\0\0\18\6\1\0\18\a\2\0G\b\3\0C\3\3\0\3�\4�\vborder�\5\1\0\r\1\27\0008-\0\0\0009\0\0\0006\1\1\0009\1\2\1-\2\0\0009\2\4\2-\4\0\0009\4\5\0049\4\6\0045\5\a\0B\2\3\2=\2\3\0005\2\b\0006\3\t\0\18\5\2\0B\3\2\4H\6\t�'\b\n\0\18\t\6\0&\b\t\b9\t\v\1\18\v\b\0005\f\f\0=\a\r\f=\b\14\fB\t\3\1F\6\3\3R\6�4\3\t\0005\4\15\0>\4\1\0035\4\16\0>\4\2\0035\4\17\0>\4\3\0035\4\18\0>\4\4\0035\4\19\0>\4\5\0035\4\20\0>\4\6\0035\4\21\0>\4\a\0035\4\22\0>\4\b\0036\4\1\0009\4\23\0049\4\24\0049\4\25\0046\5\1\0009\5\23\0059\5\24\0053\6\26\0=\6\25\0052\0\0�K\0\1\0\6�\0\26open_floating_preview\tutil\blsp\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╰\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╯\16FloatBorder\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╮\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╭\16FloatBorder\vtexthl\ttext\1\0\0\16sign_define\19DiagnosticSign\npairs\1\0\4\tInfo\t \tWarn\t \nError\t \tHint\t \1\0\4\nsigns\2\14underline\2\17virtual_text\1\18severity_sort\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\afn\bvim\rhandlers�\2\0\2\6\1\4\0\n9\2\0\0009\2\1\2\15\0\2\0X\3\5�-\2\0\0009\2\2\2'\4\3\0+\5\1\0B\2\3\1K\0\1\0\4��\1          augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\23document_highlight\26resolved_capabilities�\2\0\0\4\1\r\0\24-\0\0\0009\0\0\0009\0\1\0B\0\1\0029\1\2\0009\1\3\0019\1\4\1+\2\2\0=\2\5\0019\1\2\0009\1\3\0019\1\4\0015\2\b\0005\3\a\0=\3\t\2=\2\6\0016\1\n\0'\3\v\0B\1\2\0029\1\f\1\18\3\0\0B\1\2\2\18\0\1\0L\0\2\0\6�\25default_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol�\2\0\1\a\4\n\0'5\1\0\0-\2\0\0=\2\1\1-\2\1\0B\2\1\2=\2\2\1-\2\2\0009\3\3\0008\2\3\2\15\0\2\0X\3\20�9\3\4\2\15\0\3\0X\4\2�9\3\4\2=\3\4\0019\3\5\2\15\0\3\0X\4\2�9\3\5\2=\3\5\0019\3\6\2\15\0\3\0X\4\2�9\3\6\2=\3\6\0019\3\a\2\15\0\3\0X\4\2�9\3\a\2=\3\a\1\18\5\0\0009\3\b\0\18\6\1\0B\3\3\1-\3\3\0'\5\t\0B\3\2\1K\0\1\0\b�\t�\3�\5�\31 do User LspAttachBuffers \nsetup\14filetypes\rroot_dir\rsettings\17init_options\tname\17capabilities\14on_attach\1\0\0�\3\1\0\15\0\21\0'6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�2\0\25�6\4\4\0009\4\5\0046\5\4\0009\5\6\0056\6\4\0009\6\a\0063\a\b\0\18\b\a\0B\b\1\0013\b\t\0003\t\n\0009\n\v\0015\f\17\0005\r\r\0005\14\f\0=\14\14\r5\14\15\0=\14\16\r=\r\18\fB\n\2\0019\n\19\0013\f\20\0B\n\2\0012\0\0�K\0\1\0K\0\1\0\0\20on_server_ready\aui\1\0\0\fkeymaps\1\0\4\21uninstall_server\6X\25toggle_server_expand\t<CR>\18update_server\6u\19install_server\6i\nicons\1\0\0\1\0\3\19server_pending\b➜\23server_uninstalled\b✗\21server_installed\b✓\rsettings\0\0\0\blsp\bcmd\bapi\bvim\22plugins/languages\23nvim-lsp-installer\frequire\npcall\0" },
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\a\0\0\r\0%\1?6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0006\2\3\0009\2\4\0029\2\5\2B\2\1\2:\2\1\0029\2\6\0026\3\3\0009\3\4\0039\3\5\3B\3\1\2:\3\1\0039\3\a\3)\4d\0)\5 \0009\6\b\0015\b\t\0004\t\0\0=\t\n\b5\t\v\0005\n\f\0=\n\r\t=\t\14\b5\t\15\0005\n\16\0005\v\17\0=\v\r\n=\n\18\t=\t\19\b5\t\20\0004\n\0\0=\n\21\t=\t\22\b5\t\23\0004\n\0\0=\n\24\t=\t\25\b5\t\26\0005\n\27\0004\v\0\0=\v\28\n=\n\29\t5\n\30\0005\v\31\0=\4\6\v=\5\a\v!\f\5\3\24\f\0\f=\f \v!\f\4\2\24\f\0\f=\f!\v=\v\"\n=\n#\t=\t$\bB\6\2\1K\0\1\0\tview\nfloat\20open_win_config\bcol\brow\1\0\2\vborder\frounded\rrelative\veditor\1\0\2\venable\2\23quit_on_focus_loss\2\rmappings\tlist\1\0\1\16custom_only\1\1\0\4\tside\btop preserve_window_proportions\2\nwidth\3#\21hide_root_folder\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\2\15update_cwd\2\rrenderer\19indent_markers\1\0\5\tedge\b│\titem\b│\vbottom\b─\tnone\6 \vcorner\b└\1\0\2\venable\2\18inline_arrows\2\1\0\a\18highlight_git\1\14full_name\1\27highlight_opened_files\tnone\25root_folder_modifier\a:~\17indent_width\3\2\17add_trailing\1\16group_empty\1\16diagnostics\nicons\1\0\4\fwarning\b\nerror\b\thint\b\tinfo\b\1\0\2\venable\2\17show_on_dirs\2\23ignore_ft_on_setup\1\0\6\18hijack_cursor\1\18disable_netrw\2\17hijack_netrw\1\18open_on_setup\1\16open_on_tab\1\15update_cwd\1\nsetup\vheight\nwidth\18nvim_list_uis\bapi\bvim\14nvim-tree\frequire\npcall\1����\3\0" },
    loaded = true,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-autotag" },
    config = { "\27LJ\2\n�\6\0\0\a\0\24\0#6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0004\6\0\0=\6\b\5=\5\t\0045\5\n\0004\6\0\0=\6\b\5=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0004\6\0\0=\6\b\0055\6\17\0=\6\18\5=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\4B\2\2\1K\0\1\0\frainbow\1\0\2\venable\2\18extended_mode\2\fautotag\1\0\1\venable\2\15playground\16keybindings\1\0\n\21unfocus_language\6F\14goto_node\t<CR>\vupdate\6R\14show_help\6?\24toggle_query_editor\6o\21toggle_hl_groups\6i\30toggle_injected_languages\6t\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\19focus_language\6f\1\0\3\15updatetime\3\25\20persist_queries\1\venable\2\19ignore_install\1\2\0\0\vphpdoc\21ensure_installed\1!\0\0\tscss\vkotlin\blua\vpython\tyaml\nregex\tmake\bsql\tjson\tdart\fhaskell\btsx\njsonc\ttoml\nquery\tfish\14gitignore\trust\thtml\bcss\15typescript\6c\njson5\tdiff\tbash\ncmake\bvue\fcomment\njsdoc\ago\15javascript\15dockerfile\vindent\1\0\1\venable\1\14highlight\fdisable\1\0\2\venable\2&additional_vim_regex_highlighting\2\26context_commentstring\1\0\1\17auto_install\2\1\0\2\venable\2\19enable_autocmd\1\nsetup\28nvim-treesitter.configs\frequire\npcall\0" },
    loaded = true,
    only_config = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n�\t\0\0\v\0C\0|6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�K\0\1\0009\4\4\0039\5\5\0015\aA\0005\b\t\0005\t\6\0009\n\a\4=\n\b\t=\t\n\b5\t\v\0009\n\a\4=\n\b\t=\t\f\b5\t\r\0009\n\a\4=\n\b\t=\t\14\b5\t\15\0009\n\a\4=\n\b\t=\t\16\b5\t\17\0009\n\18\4=\n\b\t=\t\19\b5\t\20\0009\n\a\4=\n\b\t=\t\21\b5\t\22\0009\n\23\4=\n\b\t=\t\24\b5\t\25\0009\n\18\4=\n\b\t=\t\26\b5\t\27\0009\n\28\4=\n\b\t=\t\29\b5\t\30\0009\n\28\4=\n\b\t=\t\31\b5\t \0009\n\23\4=\n\b\t=\t!\b5\t\"\0009\n\23\4=\n\b\t=\t#\b5\t$\0009\n\18\4=\n\b\t=\t%\b5\t&\0009\n\a\4=\n\b\t=\t'\b5\t(\0009\n\a\4=\n\b\t=\t)\b5\t*\0009\n\a\4=\n\b\t=\t+\b5\t,\0009\n\a\4=\n\b\t=\t-\b5\t.\0009\n\28\4=\n\b\t=\t/\b5\t0\0009\n\23\4=\n\b\t=\t1\b5\t2\0009\n\a\4=\n\b\t=\t3\b5\t4\0009\n\a\4=\n\b\t=\t5\b5\t6\0009\n\18\4=\n\b\t=\t7\b5\t8\0009\n\23\4=\n\b\t=\t9\b5\t:\0009\n;\4=\n\b\t=\t<\b5\t=\0009\n\23\4=\n\b\t=\t>\b5\t?\0009\n\23\4=\n\b\t=\t@\b=\bB\aB\5\2\1K\0\1\0\roverride\1\0\0\bzip\1\0\2\tname\bzip\ticon\b\axz\1\0\2\tname\axz\ticon\b\bvue\ngreen\1\0\2\tname\bvue\ticon\b﵂\brpm\1\0\2\tname\brpm\ticon\b\arb\1\0\2\tname\arb\ticon\b\ats\1\0\2\tname\ats\ticon\b\ttoml\1\0\2\tname\ttoml\ticon\b\apy\1\0\2\tname\apy\ticon\b\bpng\1\0\2\tname\bpng\ticon\b\bout\1\0\2\tname\bout\ticon\b\bmp4\1\0\2\tname\bmp4\ticon\b\bmp3\1\0\2\tname\bmp3\ticon\b\blua\1\0\2\tname\blua\ticon\b\tlock\1\0\2\tname\tlock\ticon\b\akt\1\0\2\tname\akt\ticon\t󱈙\ajs\1\0\2\tname\ajs\ticon\b\bjpg\1\0\2\tname\bjpg\ticon\b\tjpeg\fmagenta\1\0\2\tname\tjpeg\ticon\b\tjava\1\0\2\tname\tjava\ticon\b\thtml\vorange\1\0\2\tname\thtml\ticon\b\15Dockerfile\1\0\2\tname\15Dockerfile\ticon\b\bdeb\bred\1\0\2\tname\bdeb\ticon\b\bcss\1\0\2\tname\bcss\ticon\b\bcpp\1\0\2\tname\bcpp\ticon\b\acc\1\0\2\tname\acc\ticon\b\6c\1\0\0\ncolor\tblue\1\0\2\tname\6c\ticon\b\nsetup\vcolors\22colors.highlights\22nvim-web-devicons\frequire\npcall\0" },
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n,\0\3\6\0\2\1\0046\3\0\0009\3\1\3\24\5\0\1D\3\2\0\nfloor\tmath��̙\19����\3�\r\1\0\16\0H\0p6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\0036\4\0\0006\6\1\0'\a\4\0B\4\3\0036\6\0\0006\b\1\0'\t\5\0B\6\3\3\14\0\0\0X\b\a�\14\0\2\0X\b\5�\14\0\4\0X\b\3�\14\0\6\0X\b\1�2\0V�9\b\6\0015\n;\0005\v\a\0005\f\b\0005\r\t\0=\r\n\f5\r\f\0003\14\v\0=\14\r\r=\r\14\f=\f\15\v5\f\16\0=\f\17\v5\f\"\0005\r\19\0009\14\18\3=\14\20\r9\14\21\3=\14\22\r9\14\23\3=\14\24\r9\14\25\0039\15\26\3 \14\15\14=\14\27\r9\14\28\3=\14\29\r9\14\30\3=\14\31\r9\14 \3=\14!\r=\r#\f5\r$\0009\14\18\3=\14\20\r9\14\21\3=\14\22\r9\14\23\3=\14\24\r9\14\25\0039\15\26\3 \14\15\14=\14\27\r9\14 \3=\14!\r=\r%\f=\f&\v5\f'\0=\f(\v5\f)\0=\f*\v4\f\0\0=\f+\v5\f,\0=\f-\v5\f.\0=\f/\v9\f0\a9\f1\f=\f2\v9\f3\a9\f1\f=\f4\v9\f5\a9\f1\f=\f6\v9\f7\5=\f8\v9\f9\5=\f:\v=\v<\n5\v>\0005\f=\0=\f?\v5\f@\0=\fA\v=\vB\n5\vD\0005\fC\0=\fE\v=\vF\nB\b\2\0019\bG\1'\nE\0B\b\2\1K\0\1\0K\0\1\0\19load_extension\15extensions\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\14case_mode\15smart_case\nfuzzy\2\fpickers\14live_grep\1\0\2\14previewer\1\19only_sort_text\2\15find_files\1\0\0\1\0\2\14previewer\1\vhidden\2\rdefaults\1\0\0\19generic_sorter\29get_generic_fuzzy_sorter\16file_sorter\19get_fuzzy_file\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b─\b│\b─\b│\b╭\b╮\b╯\b╰\vborder\17path_display\1\0\1\fshorten\3\6\25file_ignore_patterns\1\a\0\0\15scratch/.*\20node_modules/.*\rbuild/.*\fdist/.*\f.git/.*\f.next/*\rmappings\6n\1\0\0\6i\1\0\0\t<CR>\19select_default\n<C-k>\23cycle_history_prev\n<C-j>\23cycle_history_next\n<C-q>\16open_qflist\25smart_send_to_qflist\n<C-c>\nclose\f<S-Tab>\28move_selection_previous\n<Tab>\1\0\0\24move_selection_next\22vimgrep_arguments\1\n\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\r--hidden\18--glob=!.git/\18layout_config\15horizontal\18preview_width\1\0\1\vmirror\1\0\rvertical\1\0\1\vmirror\1\1\0\2\nwidth\4\0����\3\19preview_cutoff\3x\1\0\n\17initial_mode\vinsert\23selection_strategy\nreset\20selection_caret\v   \21sorting_strategy\14ascending\20layout_strategy\15horizontal\21disable_devicons\1\19color_devicons\2\18prompt_prefix\n  \rwinblend\3\0\17entry_prefix\a  \nsetup\25telescope.previewers\22telescope.sorters\22telescope.actions\14telescope\frequire\npcall\0" },
    loaded = true,
    needs_bufread = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit\vcolors\frequire\0" },
    loaded = true,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\a\0\25\0\0316\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\5\0005\6\6\0=\6\a\0055\6\b\0=\6\t\0055\6\n\0=\6\v\0055\6\f\0=\6\r\0055\6\14\0=\6\15\0055\6\16\0=\6\17\0055\6\18\0=\6\19\0055\6\20\0=\6\21\5=\5\22\0045\5\23\0=\5\24\4B\2\2\1K\0\1\0\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\t<CR>\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\2\0\0\n<Tab>\1\0\5\vcancel\n<esc>\tnext\6j\rprevious\6k\frefresh\6r\nclose\6q\1\0\14\tmode\26workspace_diagnostics\14auto_fold\1\17indent_lines\2\vheight\3\n\fpadding\2\ngroup\2\15auto_close\1\14auto_open\1\nicons\2\rposition\vbottom\17auto_preview\2\14fold_open\b\25use_diagnostic_signs\2\16fold_closed\b\nsetup\ftrouble\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-jsx-pretty"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/vim-jsx-pretty",
    url = "https://github.com/maxmellon/vim-jsx-pretty"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lap15870-local/.local/share/nvim/site/pack/packer/opt/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
try_loadstring("\27LJ\2\n=\2\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0G\3\0\0A\0\1\1K\0\1\0\6n\20nvim_set_keymap\bapi\bvim�\1\1\0\a\0\b\0\0183\0\0\0005\1\1\0\18\2\0\0'\4\2\0'\5\3\0\18\6\1\0B\2\4\1\18\2\0\0'\4\4\0'\5\5\0\18\6\1\0B\2\4\1\18\2\0\0'\4\6\0'\5\a\0\18\6\1\0B\2\4\1K\0\1\0\31<cmd>Telescope buffers<CR>\n<C-b>!<cmd>Telescope live_grep<CR>\n<C-f>.<cmd>Telescope find_files hidden=true<CR>\n<C-p>\1\0\2\fnoremap\2\vsilent\2\0\0", "setup", "telescope.nvim")
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: trouble.nvim
time([[Setup for trouble.nvim]], true)
try_loadstring("\27LJ\2\n=\2\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0G\3\0\0A\0\1\1K\0\1\0\6n\20nvim_set_keymap\bapi\bvim�\1\1\0\a\0\6\0\r3\0\0\0005\1\1\0\18\2\0\0'\4\2\0'\5\3\0\18\6\1\0B\2\4\1\18\2\0\0'\4\4\0'\5\5\0\18\6\1\0B\2\4\1K\0\1\0001<cmd>TroubleToggle workspace_diagnostics<CR>\n<C-w>0<cmd>TroubleToggle document_diagnostics<CR>\n<C-e>\1\0\2\fnoremap\2\vsilent\2\0\0", "setup", "trouble.nvim")
time([[Setup for trouble.nvim]], false)
time([[packadd for trouble.nvim]], true)
vim.cmd [[packadd trouble.nvim]]
time([[packadd for trouble.nvim]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\6\0\0\2\0\17\0\0236\0\0\0009\0\1\0005\1\3\0=\1\2\0005\1\5\0=\1\4\0005\1\a\0=\1\6\0+\1\1\0=\1\b\0+\1\1\0=\1\t\0005\1\v\0=\1\n\0005\1\r\0=\1\f\0+\1\2\0=\1\14\0+\1\2\0=\1\15\0+\1\2\0=\1\16\0K\0\1\0\29indent_blankline_enabled*indent_blankline_show_current_context$indent_blankline_use_treesitter\1\23\0\0\nclass\vreturn\rfunction\vmethod\b^if\aif\v^while\16jsx_element\t^for\bfor\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns\1\2\0\0\14README.md%indent_blankline_bufname_exclude-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\1\n\0\0\b\b┊\b┆\a¦\6|\a¦\b┆\b┊\b\31indent_blankline_char_list\1\5\0\0\thelp\vpacker\nalpha\rNvimTree&indent_blankline_filetype_exclude\1\5\0\0\thelp\vpacker\nalpha\rNvimTree%indent_blankline_buftype_exclude\6g\bvim\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Setup for: close-buffers.nvim
time([[Setup for close-buffers.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\a\0\v6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\28<cmd>BWipeout other<CR>\15<leader>cb\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "setup", "close-buffers.nvim")
time([[Setup for close-buffers.nvim]], false)
time([[packadd for close-buffers.nvim]], true)
vim.cmd [[packadd close-buffers.nvim]]
time([[packadd for close-buffers.nvim]], false)
-- Setup for: emmet-vim
time([[Setup for emmet-vim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\n<C-y>\26user_emmet_leader_key\6g\bvim\0", "setup", "emmet-vim")
time([[Setup for emmet-vim]], false)
-- Setup for: flutter-tools.nvim
time([[Setup for flutter-tools.nvim]], true)
try_loadstring("\27LJ\2\n=\2\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0G\3\0\0A\0\1\1K\0\1\0\6n\20nvim_set_keymap\bapi\bvim�\5\1\0\a\0\20\00005\0\0\0003\1\1\0\18\2\1\0'\4\2\0'\5\3\0\18\6\0\0B\2\4\1\18\2\1\0'\4\4\0'\5\5\0\18\6\0\0B\2\4\1\18\2\1\0'\4\6\0'\5\a\0\18\6\0\0B\2\4\1\18\2\1\0'\4\b\0'\5\t\0\18\6\0\0B\2\4\1\18\2\1\0'\4\n\0'\5\v\0\18\6\0\0B\2\4\1\18\2\1\0'\4\f\0'\5\r\0\18\6\0\0B\2\4\1\18\2\1\0'\4\14\0'\5\15\0\18\6\0\0B\2\4\1\18\2\1\0'\4\16\0'\5\17\0\18\6\0\0B\2\4\1\18\2\1\0'\4\18\0'\5\19\0\18\6\0\0B\2\4\1K\0\1\0-<cmd>lua vim.diagnostic.open_float()<CR>\15<leader>gl+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ga,<cmd>lua vim.diagnostic.goto_prev()<CR>\15<leader>gp,<cmd>lua vim.diagnostic.goto_next()<CR>\15<leader>gn&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>gr.<cmd>lua vim.lsp.buf.signature_help()<CR>\15<leader>gs%<cmd>lua vim.lsp.buf.hover()<CR>\15<leader>gk*<cmd>lua vim.lsp.buf.references()<CR>\15<leader>gf*<cmd>lua vim.lsp.buf.definition()<CR>\15<leader>gd\0\1\0\2\fnoremap\2\vsilent\2\0", "setup", "flutter-tools.nvim")
time([[Setup for flutter-tools.nvim]], false)
time([[packadd for flutter-tools.nvim]], true)
vim.cmd [[packadd flutter-tools.nvim]]
time([[packadd for flutter-tools.nvim]], false)
-- Setup for: bufferline.nvim
time([[Setup for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n=\2\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0G\3\0\0A\0\1\1K\0\1\0\6n\20nvim_set_keymap\bapi\bvim�\a\1\0\a\0\30\0I3\0\0\0005\1\1\0\18\2\0\0'\4\2\0'\5\3\0\18\6\1\0B\2\4\1\18\2\0\0'\4\4\0'\5\5\0\18\6\1\0B\2\4\1\18\2\0\0'\4\6\0'\5\a\0\18\6\1\0B\2\4\1\18\2\0\0'\4\b\0'\5\t\0\18\6\1\0B\2\4\1\18\2\0\0'\4\n\0'\5\v\0\18\6\1\0B\2\4\1\18\2\0\0'\4\f\0'\5\r\0\18\6\1\0B\2\4\1\18\2\0\0'\4\14\0'\5\15\0\18\6\1\0B\2\4\1\18\2\0\0'\4\16\0'\5\17\0\18\6\1\0B\2\4\1\18\2\0\0'\4\18\0'\5\19\0\18\6\1\0B\2\4\1\18\2\0\0'\4\20\0'\5\21\0\18\6\1\0B\2\4\1\18\2\0\0'\4\22\0'\5\23\0\18\6\1\0B\2\4\1\18\2\0\0'\4\24\0'\5\25\0\18\6\1\0B\2\4\1\18\2\0\0'\4\26\0'\5\27\0\18\6\1\0B\2\4\1\18\2\0\0'\4\28\0'\5\29\0\18\6\1\0B\2\4\1K\0\1\0%<cmd>BufferLineGoToBuffer 10<CR>\15<leader>10$<cmd>BufferLineGoToBuffer 9<CR>\14<leader>9$<cmd>BufferLineGoToBuffer 8<CR>\14<leader>8$<cmd>BufferLineGoToBuffer 7<CR>\14<leader>7$<cmd>BufferLineGoToBuffer 6<CR>\14<leader>6$<cmd>BufferLineGoToBuffer 5<CR>\14<leader>5$<cmd>BufferLineGoToBuffer 4<CR>\14<leader>4$<cmd>BufferLineGoToBuffer 3<CR>\14<leader>3$<cmd>BufferLineGoToBuffer 2<CR>\14<leader>2$<cmd>BufferLineGoToBuffer 1<CR>\14<leader>1 <cmd>BufferLineMovePrev<CR>\14<leader>< <cmd>BufferLineMoveNext<CR>\14<leader>>!<cmd>BufferLineCyclePrev<CR>\20<leader><S-Tab>!<cmd>BufferLineCycleNext<CR>\18<leader><Tab>\1\0\2\fnoremap\2\vsilent\2\0\0", "setup", "bufferline.nvim")
time([[Setup for bufferline.nvim]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n=\2\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0G\3\0\0A\0\1\1K\0\1\0\6n\20nvim_set_keymap\bapi\bvim�\2\1\0\b\0\14\0\0243\0\0\0006\1\1\0009\1\2\0015\2\3\0\18\3\0\0'\5\4\0'\6\5\0\18\a\2\0B\3\4\1\18\3\0\0'\5\6\0'\6\a\0\18\a\2\0B\3\4\1\18\3\0\0'\5\b\0'\6\t\0\18\a\2\0B\3\4\0015\3\v\0=\3\n\0015\3\r\0=\3\f\1K\0\1\0\1\0\3\14README.md\3\1\rMakefile\3\1\rMAKEFILE\3\1\27vim_tree_special_files\1\2\0\0\nalpha\29nvim_tree_auto_ignore_ft\30<cmd>NvimTreeFindFile<CR>\15<leader>nf\29<cmd>NvimTreeRefresh<CR>\14<leader>r\28<cmd>NvimTreeToggle<CR>\n<C-n>\1\0\2\fnoremap\2\vsilent\2\6g\bvim\0\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
time([[packadd for nvim-tree.lua]], true)
vim.cmd [[packadd nvim-tree.lua]]
time([[packadd for nvim-tree.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n,\0\3\6\0\2\1\0046\3\0\0009\3\1\3\24\5\0\1D\3\2\0\nfloor\tmath��̙\19����\3�\r\1\0\16\0H\0p6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\0036\4\0\0006\6\1\0'\a\4\0B\4\3\0036\6\0\0006\b\1\0'\t\5\0B\6\3\3\14\0\0\0X\b\a�\14\0\2\0X\b\5�\14\0\4\0X\b\3�\14\0\6\0X\b\1�2\0V�9\b\6\0015\n;\0005\v\a\0005\f\b\0005\r\t\0=\r\n\f5\r\f\0003\14\v\0=\14\r\r=\r\14\f=\f\15\v5\f\16\0=\f\17\v5\f\"\0005\r\19\0009\14\18\3=\14\20\r9\14\21\3=\14\22\r9\14\23\3=\14\24\r9\14\25\0039\15\26\3 \14\15\14=\14\27\r9\14\28\3=\14\29\r9\14\30\3=\14\31\r9\14 \3=\14!\r=\r#\f5\r$\0009\14\18\3=\14\20\r9\14\21\3=\14\22\r9\14\23\3=\14\24\r9\14\25\0039\15\26\3 \14\15\14=\14\27\r9\14 \3=\14!\r=\r%\f=\f&\v5\f'\0=\f(\v5\f)\0=\f*\v4\f\0\0=\f+\v5\f,\0=\f-\v5\f.\0=\f/\v9\f0\a9\f1\f=\f2\v9\f3\a9\f1\f=\f4\v9\f5\a9\f1\f=\f6\v9\f7\5=\f8\v9\f9\5=\f:\v=\v<\n5\v>\0005\f=\0=\f?\v5\f@\0=\fA\v=\vB\n5\vD\0005\fC\0=\fE\v=\vF\nB\b\2\0019\bG\1'\nE\0B\b\2\1K\0\1\0K\0\1\0\19load_extension\15extensions\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\14case_mode\15smart_case\nfuzzy\2\fpickers\14live_grep\1\0\2\14previewer\1\19only_sort_text\2\15find_files\1\0\0\1\0\2\14previewer\1\vhidden\2\rdefaults\1\0\0\19generic_sorter\29get_generic_fuzzy_sorter\16file_sorter\19get_fuzzy_file\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b─\b│\b─\b│\b╭\b╮\b╯\b╰\vborder\17path_display\1\0\1\fshorten\3\6\25file_ignore_patterns\1\a\0\0\15scratch/.*\20node_modules/.*\rbuild/.*\fdist/.*\f.git/.*\f.next/*\rmappings\6n\1\0\0\6i\1\0\0\t<CR>\19select_default\n<C-k>\23cycle_history_prev\n<C-j>\23cycle_history_next\n<C-q>\16open_qflist\25smart_send_to_qflist\n<C-c>\nclose\f<S-Tab>\28move_selection_previous\n<Tab>\1\0\0\24move_selection_next\22vimgrep_arguments\1\n\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\r--hidden\18--glob=!.git/\18layout_config\15horizontal\18preview_width\1\0\1\vmirror\1\0\rvertical\1\0\1\vmirror\1\1\0\2\nwidth\4\0����\3\19preview_cutoff\3x\1\0\n\17initial_mode\vinsert\23selection_strategy\nreset\20selection_caret\v   \21sorting_strategy\14ascending\20layout_strategy\15horizontal\21disable_devicons\1\19color_devicons\2\18prompt_prefix\n  \rwinblend\3\0\17entry_prefix\a  \nsetup\25telescope.previewers\22telescope.sorters\22telescope.actions\14telescope\frequire\npcall\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\6\0\0\a\0\24\0#6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0004\6\0\0=\6\b\5=\5\t\0045\5\n\0004\6\0\0=\6\b\5=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0004\6\0\0=\6\b\0055\6\17\0=\6\18\5=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\4B\2\2\1K\0\1\0\frainbow\1\0\2\venable\2\18extended_mode\2\fautotag\1\0\1\venable\2\15playground\16keybindings\1\0\n\21unfocus_language\6F\14goto_node\t<CR>\vupdate\6R\14show_help\6?\24toggle_query_editor\6o\21toggle_hl_groups\6i\30toggle_injected_languages\6t\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\19focus_language\6f\1\0\3\15updatetime\3\25\20persist_queries\1\venable\2\19ignore_install\1\2\0\0\vphpdoc\21ensure_installed\1!\0\0\tscss\vkotlin\blua\vpython\tyaml\nregex\tmake\bsql\tjson\tdart\fhaskell\btsx\njsonc\ttoml\nquery\tfish\14gitignore\trust\thtml\bcss\15typescript\6c\njson5\tdiff\tbash\ncmake\bvue\fcomment\njsdoc\ago\15javascript\15dockerfile\vindent\1\0\1\venable\1\14highlight\fdisable\1\0\2\venable\2&additional_vim_regex_highlighting\2\26context_commentstring\1\0\1\17auto_install\2\1\0\2\venable\2\19enable_autocmd\1\nsetup\28nvim-treesitter.configs\frequire\npcall\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\no\0\0\6\2\3\0\14-\0\0\0009\0\0\0-\2\1\0+\3\2\0+\4\1\0+\5\2\0B\0\5\2-\1\0\0009\1\1\1\18\3\0\0'\4\2\0+\5\1\0B\1\4\1K\0\1\0\0\0\3�\vnormal\18nvim_feedkeys\27nvim_replace_termcodes�\2\1\3\b\1\16\0\28\18\5\0\0009\3\0\0'\6\1\0'\a\2\0B\3\4\2\18\5\3\0009\3\0\3'\6\3\0'\a\4\0B\3\4\0025\4\5\0=\1\6\4=\0\a\4\15\0\2\0X\5\6�5\5\t\0>\3\2\5>\2\3\0055\6\n\0>\6\4\5=\5\b\0045\5\v\0=\1\f\0053\6\r\0=\6\14\5=\4\15\0052\0\0�L\5\2\0\2�\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\fnoremap\2\vsilent\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\6\nwidth\3\24\rposition\vcenter\vcursor\3\5\ahl\27DiagnosticFloatingInfo\19align_shortcut\nright\16hl_shortcut\fSpecial\r<leader>\bSPC\5\a%s\tgsub�\14\1\0\r\0+\1Q6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0I�6\2\3\0009\2\4\0026\3\3\0009\3\5\0035\4\6\0005\5\a\0=\5\b\0045\5\t\0=\5\n\0043\5\v\0005\6\f\0004\a\a\0\18\b\5\0'\n\r\0'\v\14\0'\f\15\0B\b\4\2>\b\1\a\18\b\5\0'\n\16\0'\v\17\0'\f\18\0B\b\4\2>\b\2\a\18\b\5\0'\n\19\0'\v\20\0'\f\21\0B\b\4\2>\b\3\a\18\b\5\0'\n\22\0'\v\23\0'\f\24\0B\b\4\2>\b\4\a\18\b\5\0'\n\25\0'\v\26\0'\f\27\0B\b\4\2>\b\5\a\18\b\5\0'\n\28\0'\v\29\0'\f\30\0B\b\4\0?\b\0\0=\a\b\0065\a\31\0=\a\n\0065\a \0005\b!\0=\b\n\a5\b\"\0=\4#\b=\6$\b=\a%\b5\t'\0004\n\3\0005\v&\0>\v\1\n9\v$\b>\v\2\n=\n(\t9\n)\1\18\f\t\0B\n\2\1\18\n\3\0'\f*\0B\n\2\0012\0\0�K\0\1\0K\0\1\0001autocmd FileType alpha setlocal nofoldenable\nsetup\vlayout\1\0\0\1\0\2\ttype\fpadding\bval\3\14\vfooter\fbuttons\vheader\1\0\0\1\0\2\ahl\vString\rposition\vcenter\1\0\2\ttype\ttext\bval?A clever person solves a problem. A wise person avoids it.\1\0\2\fspacing\3\2\rposition\vcenter\16<cmd>qa<CR>\14  Quit\6q9<cmd>e $HOME/.config/nvim/lua/default_config.lua<CR>\18  Settings\6s\18<cmd>ene!<CR>\18  New File\6n\28<cmd>NvimTreeToggle<CR>\27  Project structure\6o!<cmd>Telescope live_grep<CR>\19  Find Word\6f.<cmd>Telescope find_files hidden=true<CR>\19  Find File\6p\1\0\1\ttype\ngroup\0\topts\1\0\2\ahl\fSpecial\rposition\vcenter\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\bcmd\bapi\bvim\nalpha\frequire\npcall\r����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n�\t\0\0\v\0C\0|6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�K\0\1\0009\4\4\0039\5\5\0015\aA\0005\b\t\0005\t\6\0009\n\a\4=\n\b\t=\t\n\b5\t\v\0009\n\a\4=\n\b\t=\t\f\b5\t\r\0009\n\a\4=\n\b\t=\t\14\b5\t\15\0009\n\a\4=\n\b\t=\t\16\b5\t\17\0009\n\18\4=\n\b\t=\t\19\b5\t\20\0009\n\a\4=\n\b\t=\t\21\b5\t\22\0009\n\23\4=\n\b\t=\t\24\b5\t\25\0009\n\18\4=\n\b\t=\t\26\b5\t\27\0009\n\28\4=\n\b\t=\t\29\b5\t\30\0009\n\28\4=\n\b\t=\t\31\b5\t \0009\n\23\4=\n\b\t=\t!\b5\t\"\0009\n\23\4=\n\b\t=\t#\b5\t$\0009\n\18\4=\n\b\t=\t%\b5\t&\0009\n\a\4=\n\b\t=\t'\b5\t(\0009\n\a\4=\n\b\t=\t)\b5\t*\0009\n\a\4=\n\b\t=\t+\b5\t,\0009\n\a\4=\n\b\t=\t-\b5\t.\0009\n\28\4=\n\b\t=\t/\b5\t0\0009\n\23\4=\n\b\t=\t1\b5\t2\0009\n\a\4=\n\b\t=\t3\b5\t4\0009\n\a\4=\n\b\t=\t5\b5\t6\0009\n\18\4=\n\b\t=\t7\b5\t8\0009\n\23\4=\n\b\t=\t9\b5\t:\0009\n;\4=\n\b\t=\t<\b5\t=\0009\n\23\4=\n\b\t=\t>\b5\t?\0009\n\23\4=\n\b\t=\t@\b=\bB\aB\5\2\1K\0\1\0\roverride\1\0\0\bzip\1\0\2\tname\bzip\ticon\b\axz\1\0\2\tname\axz\ticon\b\bvue\ngreen\1\0\2\tname\bvue\ticon\b﵂\brpm\1\0\2\tname\brpm\ticon\b\arb\1\0\2\tname\arb\ticon\b\ats\1\0\2\tname\ats\ticon\b\ttoml\1\0\2\tname\ttoml\ticon\b\apy\1\0\2\tname\apy\ticon\b\bpng\1\0\2\tname\bpng\ticon\b\bout\1\0\2\tname\bout\ticon\b\bmp4\1\0\2\tname\bmp4\ticon\b\bmp3\1\0\2\tname\bmp3\ticon\b\blua\1\0\2\tname\blua\ticon\b\tlock\1\0\2\tname\tlock\ticon\b\akt\1\0\2\tname\akt\ticon\t󱈙\ajs\1\0\2\tname\ajs\ticon\b\bjpg\1\0\2\tname\bjpg\ticon\b\tjpeg\fmagenta\1\0\2\tname\tjpeg\ticon\b\tjava\1\0\2\tname\tjava\ticon\b\thtml\vorange\1\0\2\tname\thtml\ticon\b\15Dockerfile\1\0\2\tname\15Dockerfile\ticon\b\bdeb\bred\1\0\2\tname\bdeb\ticon\b\bcss\1\0\2\tname\bcss\ticon\b\bcpp\1\0\2\tname\bcpp\ticon\b\acc\1\0\2\tname\acc\ticon\b\6c\1\0\0\ncolor\tblue\1\0\2\tname\6c\ticon\b\nsetup\vcolors\22colors.highlights\22nvim-web-devicons\frequire\npcall\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: flutter-tools.nvim
time([[Config for flutter-tools.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\a\0\17\0\0236\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\b\0005\6\a\0=\6\t\5=\5\n\0045\5\f\0005\6\v\0=\6\r\0055\6\14\0=\6\15\5=\5\16\4B\2\2\1K\0\1\0\blsp\rsettings\1\0\4\27renameFilesWithClasses\vprompt\19enableSnippets\2\14showTodos\1\26completeFunctionCalls\2\ncolor\1\0\0\1\0\5\fenabled\2\15foreground\2\17virtual_text\1\21virtual_text_str\5\15background\2\16decorations\15statusline\1\0\0\1\0\2\16app_version\1\vdevice\1\aui\1\0\0\1\0\2\23notification_style\vnative\vborder\frounded\nsetup\18flutter-tools\frequire\npcall\0", "config", "flutter-tools.nvim")
time([[Config for flutter-tools.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n=\2\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0G\3\0\0A\0\1\1K\0\1\0\6n\20nvim_set_keymap\bapi\bvim�\6\1\0\t\0\26\0:6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0002�9\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\4B\2\2\0013\2\t\0005\3\n\0\18\4\2\0'\6\v\0'\a\f\0\18\b\3\0B\4\4\1\18\4\2\0'\6\r\0'\a\14\0\18\b\3\0B\4\4\1\18\4\2\0'\6\15\0'\a\16\0\18\b\3\0B\4\4\1\18\4\2\0'\6\17\0'\a\18\0\18\b\3\0B\4\4\1\18\4\2\0'\6\19\0'\a\20\0\18\b\3\0B\4\4\1\18\4\2\0'\6\19\0'\a\21\0\18\b\3\0B\4\4\1\18\4\2\0'\6\22\0'\a\23\0\18\b\3\0B\4\4\1\18\4\2\0'\6\24\0'\a\25\0\18\b\3\0B\4\4\1K\0\1\0K\0\1\0*<cmd>Lspsaga diagnostic_jump_prev<CR>\15<leader>gp*<cmd>Lspsaga diagnostic_jump_next<CR>\15<leader>gn-<cmd>Lspsaga show_cursor_diagnostics<CR>+<cmd>Lspsaga show_line_diagnostics<CR>\15<leader>gl\31<cmd>Lspsaga hover_doc<CR>\15<leader>gk <cmd>Lspsaga lsp_finder<CR>\15<leader>gf!<cmd>Lspsaga code_action<CR>\15<leader>ga\28<cmd>Lspsaga rename<CR>\15<leader>gr\1\0\2\fnoremap\2\vsilent\2\0\17finder_icons\1\0\3\bref\t \bdef\t \tlink\t \22diagnostic_header\1\5\0\0\t \t \t \t \1\0\5\21code_action_icon\t \29code_action_num_shortcut\2\17border_style\frounded\18saga_winblend\3\0\22max_preview_lines\3\f\18init_lsp_saga\flspsaga\frequire\npcall\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nJ\2\3\t\2\1\0\14\14\0\2\0X\3\1�4\2\0\0009\3\0\2\14\0\3\0X\4\1�-\3\0\0=\3\0\2-\3\1\0\18\5\0\0\18\6\1\0\18\a\2\0G\b\3\0C\3\3\0\3�\4�\vborder�\5\1\0\r\1\27\0008-\0\0\0009\0\0\0006\1\1\0009\1\2\1-\2\0\0009\2\4\2-\4\0\0009\4\5\0049\4\6\0045\5\a\0B\2\3\2=\2\3\0005\2\b\0006\3\t\0\18\5\2\0B\3\2\4H\6\t�'\b\n\0\18\t\6\0&\b\t\b9\t\v\1\18\v\b\0005\f\f\0=\a\r\f=\b\14\fB\t\3\1F\6\3\3R\6�4\3\t\0005\4\15\0>\4\1\0035\4\16\0>\4\2\0035\4\17\0>\4\3\0035\4\18\0>\4\4\0035\4\19\0>\4\5\0035\4\20\0>\4\6\0035\4\21\0>\4\a\0035\4\22\0>\4\b\0036\4\1\0009\4\23\0049\4\24\0049\4\25\0046\5\1\0009\5\23\0059\5\24\0053\6\26\0=\6\25\0052\0\0�K\0\1\0\6�\0\26open_floating_preview\tutil\blsp\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╰\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╯\16FloatBorder\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╮\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╭\16FloatBorder\vtexthl\ttext\1\0\0\16sign_define\19DiagnosticSign\npairs\1\0\4\tInfo\t \tWarn\t \nError\t \tHint\t \1\0\4\nsigns\2\14underline\2\17virtual_text\1\18severity_sort\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\afn\bvim\rhandlers�\2\0\2\6\1\4\0\n9\2\0\0009\2\1\2\15\0\2\0X\3\5�-\2\0\0009\2\2\2'\4\3\0+\5\1\0B\2\3\1K\0\1\0\4��\1          augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\23document_highlight\26resolved_capabilities�\2\0\0\4\1\r\0\24-\0\0\0009\0\0\0009\0\1\0B\0\1\0029\1\2\0009\1\3\0019\1\4\1+\2\2\0=\2\5\0019\1\2\0009\1\3\0019\1\4\0015\2\b\0005\3\a\0=\3\t\2=\2\6\0016\1\n\0'\3\v\0B\1\2\0029\1\f\1\18\3\0\0B\1\2\2\18\0\1\0L\0\2\0\6�\25default_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol�\2\0\1\a\4\n\0'5\1\0\0-\2\0\0=\2\1\1-\2\1\0B\2\1\2=\2\2\1-\2\2\0009\3\3\0008\2\3\2\15\0\2\0X\3\20�9\3\4\2\15\0\3\0X\4\2�9\3\4\2=\3\4\0019\3\5\2\15\0\3\0X\4\2�9\3\5\2=\3\5\0019\3\6\2\15\0\3\0X\4\2�9\3\6\2=\3\6\0019\3\a\2\15\0\3\0X\4\2�9\3\a\2=\3\a\1\18\5\0\0009\3\b\0\18\6\1\0B\3\3\1-\3\3\0'\5\t\0B\3\2\1K\0\1\0\b�\t�\3�\5�\31 do User LspAttachBuffers \nsetup\14filetypes\rroot_dir\rsettings\17init_options\tname\17capabilities\14on_attach\1\0\0�\3\1\0\15\0\21\0'6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�2\0\25�6\4\4\0009\4\5\0046\5\4\0009\5\6\0056\6\4\0009\6\a\0063\a\b\0\18\b\a\0B\b\1\0013\b\t\0003\t\n\0009\n\v\0015\f\17\0005\r\r\0005\14\f\0=\14\14\r5\14\15\0=\14\16\r=\r\18\fB\n\2\0019\n\19\0013\f\20\0B\n\2\0012\0\0�K\0\1\0K\0\1\0\0\20on_server_ready\aui\1\0\0\fkeymaps\1\0\4\21uninstall_server\6X\25toggle_server_expand\t<CR>\18update_server\6u\19install_server\6i\nicons\1\0\0\1\0\3\19server_pending\b➜\23server_uninstalled\b✗\21server_installed\b✓\rsettings\0\0\0\blsp\bcmd\bapi\bvim\22plugins/languages\23nvim-lsp-installer\frequire\npcall\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\a\0\0\r\0%\1?6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0006\2\3\0009\2\4\0029\2\5\2B\2\1\2:\2\1\0029\2\6\0026\3\3\0009\3\4\0039\3\5\3B\3\1\2:\3\1\0039\3\a\3)\4d\0)\5 \0009\6\b\0015\b\t\0004\t\0\0=\t\n\b5\t\v\0005\n\f\0=\n\r\t=\t\14\b5\t\15\0005\n\16\0005\v\17\0=\v\r\n=\n\18\t=\t\19\b5\t\20\0004\n\0\0=\n\21\t=\t\22\b5\t\23\0004\n\0\0=\n\24\t=\t\25\b5\t\26\0005\n\27\0004\v\0\0=\v\28\n=\n\29\t5\n\30\0005\v\31\0=\4\6\v=\5\a\v!\f\5\3\24\f\0\f=\f \v!\f\4\2\24\f\0\f=\f!\v=\v\"\n=\n#\t=\t$\bB\6\2\1K\0\1\0\tview\nfloat\20open_win_config\bcol\brow\1\0\2\vborder\frounded\rrelative\veditor\1\0\2\venable\2\23quit_on_focus_loss\2\rmappings\tlist\1\0\1\16custom_only\1\1\0\4\tside\btop preserve_window_proportions\2\nwidth\3#\21hide_root_folder\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\2\15update_cwd\2\rrenderer\19indent_markers\1\0\5\tedge\b│\titem\b│\vbottom\b─\tnone\6 \vcorner\b└\1\0\2\venable\2\18inline_arrows\2\1\0\a\18highlight_git\1\14full_name\1\27highlight_opened_files\tnone\25root_folder_modifier\a:~\17indent_width\3\2\17add_trailing\1\16group_empty\1\16diagnostics\nicons\1\0\4\fwarning\b\nerror\b\thint\b\tinfo\b\1\0\2\venable\2\17show_on_dirs\2\23ignore_ft_on_setup\1\0\6\18hijack_cursor\1\18disable_netrw\2\17hijack_netrw\1\18open_on_setup\1\16open_on_tab\1\15update_cwd\1\nsetup\vheight\nwidth\18nvim_list_uis\bapi\bvim\14nvim-tree\frequire\npcall\1����\3\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\a\0\25\0\0316\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\5\0005\6\6\0=\6\a\0055\6\b\0=\6\t\0055\6\n\0=\6\v\0055\6\f\0=\6\r\0055\6\14\0=\6\15\0055\6\16\0=\6\17\0055\6\18\0=\6\19\0055\6\20\0=\6\21\5=\5\22\0045\5\23\0=\5\24\4B\2\2\1K\0\1\0\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\t<CR>\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\2\0\0\n<Tab>\1\0\5\vcancel\n<esc>\tnext\6j\rprevious\6k\frefresh\6r\nclose\6q\1\0\14\tmode\26workspace_diagnostics\14auto_fold\1\17indent_lines\2\vheight\3\n\fpadding\2\ngroup\2\15auto_close\1\14auto_open\1\nicons\2\rposition\vbottom\17auto_preview\2\14fold_open\b\25use_diagnostic_signs\2\16fold_closed\b\nsetup\ftrouble\frequire\npcall\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\23did_load_filetypes\6g\bvim\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\21\0K6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0014\4\17\0009\5\4\0019\5\5\0059\5\6\5>\5\1\0049\5\4\0019\5\5\0059\5\a\5>\5\2\0049\5\4\0019\5\5\0059\5\b\5>\5\3\0049\5\4\0019\5\5\0059\5\t\5>\5\4\0049\5\4\0019\5\5\0059\5\n\5>\5\5\0049\5\4\0019\5\5\0059\5\v\5>\5\6\0049\5\4\0019\5\f\0059\5\r\5>\5\a\0049\5\4\0019\5\f\0059\5\14\5>\5\b\0049\5\4\0019\5\15\0059\5\16\5>\5\t\0049\5\4\0019\5\15\0059\5\n\5>\5\n\0049\5\4\0019\5\15\0059\5\v\5>\5\v\0049\5\4\0019\5\15\0059\5\17\5>\5\f\0049\5\4\0019\5\18\0059\5\n\5>\5\r\0049\5\4\0019\5\18\0059\5\v\5>\5\14\0049\5\4\0019\5\18\0059\5\19\5>\5\15\0049\5\4\0019\5\18\0059\5\20\5>\5\16\4B\2\2\1K\0\1\0\16refactoring\rgitsigns\17code_actions\tfish\btsc\16diagnostics\fluasnip\nspell\15completion\reslint_d\veslint\16dart_format\14prettierd\rprettier\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\npcall\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit\vcolors\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nO\0\0\5\1\3\1\r-\0\0\0009\0\0\0-\2\0\0009\2\1\2'\4\2\0B\2\2\0A\0\0\2\t\0\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\5�\b%:t\vexpand\nempty\2>\0\0\3\1\1\0\v-\0\0\0009\0\0\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\5�\rwinwidth�\1\0\0\6\1\5\0\25-\0\0\0009\0\0\0'\2\1\0B\0\2\2-\1\0\0009\1\2\1'\3\3\0\18\4\0\0'\5\4\0&\4\5\4B\1\3\2\r\2\1\0X\2\v�\21\2\1\0)\3\0\0\1\3\2\0X\2\4�\21\2\1\0\21\3\0\0\0\2\3\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\5�\6;\t.git\ffinddir\n%:p:h\vexpand�\1\0\0\3\2\r\0\0285\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\a\1=\1\b\0-\1\0\0009\1\a\1=\1\t\0-\1\0\0009\1\n\1=\1\v\0-\1\1\0009\1\f\1B\1\1\0028\1\1\0\v\1\0\0X\2\2�-\2\0\0009\1\n\2L\1\2\0\4�\5�\tmode\6R\bred\6V\6v\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tblueI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\b�\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\b�\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b▊�\2\0\0\b\4\a\0 5\0\0\0005\1\1\0-\2\0\0'\4\2\0-\5\1\0B\5\1\2'\6\3\0-\a\2\0009\a\4\a&\4\a\4B\2\2\1-\2\3\0009\2\5\2B\2\1\0028\2\2\0-\3\3\0009\3\5\3B\3\1\0028\3\3\1\14\0\2\0X\4\4�-\4\3\0009\4\5\4B\4\1\2\18\2\4\0\14\0\3\0X\4\1�'\3\6\0\18\4\3\0\18\5\2\0&\4\5\4L\4\2\0\6�\t�\4�\5�\t \tmode\fextraBg\f guibg=\27hi! LualineMode guifg=\1\0\a\6i\t \6V\t﬏ \6c\tגּ \6s\t \6n\t \6R\t \6v\t﬏ \1\0\a\6i\vINSERT\6V\vVISUAL\6c\fCOMMAND\6s\fSNIPPET\6n\vNORMAL\6R\fREPLACE\6v\vVISUAL\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b▊�\14\1\0\18\0m\0�\0016\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�2\0ـ9\4\4\0036\5\5\0009\5\6\0056\6\5\0009\6\a\0065\a\t\0003\b\b\0=\b\n\a3\b\v\0=\b\f\a3\b\r\0=\b\14\a5\b\28\0005\t\15\0005\n\22\0005\v\20\0005\f\17\0009\r\16\4=\r\16\f9\r\18\4=\r\19\f=\f\21\v=\v\23\n5\v\25\0005\f\24\0009\r\16\4=\r\16\f9\r\18\4=\r\19\f=\f\21\v=\v\26\n=\n\27\t=\t\29\b5\t\30\0004\n\0\0=\n\31\t4\n\0\0=\n \t4\n\0\0=\n!\t4\n\0\0=\n\"\t4\n\0\0=\n#\t4\n\0\0=\n$\t=\t%\b5\t&\0004\n\0\0=\n\31\t4\n\0\0=\n \t4\n\0\0=\n!\t4\n\0\0=\n\"\t4\n\0\0=\n#\t4\n\0\0=\n$\t=\t'\b3\t(\0003\n)\0003\v*\0\18\f\n\0005\14.\0003\15+\0>\15\1\0145\15-\0009\16,\4=\16\16\15=\15/\0145\0150\0=\0151\14B\f\2\1\18\f\n\0005\0143\0003\0152\0>\15\1\0145\0154\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\0146\0005\0157\0009\16\16\4=\16\16\15=\15/\0149\15\n\a\15\0\15\0X\16\1�9\15\f\a=\0155\14B\f\2\1\18\f\n\0005\0148\0005\15:\0009\0169\4=\16\16\15=\15/\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\14;\0005\15<\0=\15=\0145\15@\0005\16?\0009\17>\4=\17\16\16=\16A\0155\16C\0009\17B\4=\17\16\16=\16D\0155\16F\0009\17E\4=\17\16\16=\16G\15=\15H\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\14J\0003\15I\0>\15\1\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14K\0005\15L\0009\16,\4=\16\16\15=\15/\0145\15M\0=\0151\14B\f\2\1\18\f\v\0005\14N\0005\15O\0=\15P\0145\15Q\0=\15=\0145\15S\0005\16R\0009\17E\4=\17\16\16=\16T\0155\16U\0009\17B\4=\17\16\16=\16V\0155\16W\0009\17,\4=\17\16\16=\16X\0155\16Y\0009\17,\4=\17\16\16=\16Z\15=\15[\0145\15\\\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14]\0005\15^\0=\0151\14B\f\2\1\18\f\v\0005\14_\0006\15`\0009\15a\15=\15b\0145\15c\0009\16>\4=\16\16\15=\15/\0145\15d\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14e\0005\15f\0=\0151\0145\15g\0009\16B\4=\16\16\15=\15/\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14j\0003\15h\0>\15\1\0145\15i\0009\16,\4=\16\16\15=\15/\0145\15k\0=\0151\14B\f\2\0019\fl\1\18\14\b\0B\f\2\0012\0\0�K\0\1\0K\0\1\0\nsetup\1\0\1\nright\3\0\1\0\0\1\0\0\0\1\0\1\bgui\tbold\1\0\2\tleft\3\1\nright\3\1\1\2\0\0\rprogress\1\0\2\tleft\3\1\nright\3\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\1\0\2\tleft\3\1\nright\3\1\1\2\0\0\rfiletype\1\0\2\tleft\3\1\nright\3\1\22diagnostics_color\thint\1\0\0\tinfo\1\0\0\twarn\1\0\0\nerror\1\0\0\1\0\0\1\0\4\twarn\t \nerror\t \thint\t \tinfo\t \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\2\tleft\3\1\nright\3\1\1\0\1\bgui\tbold\1\2\0\0\rlocation\1\0\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\fremoved\t \rmodified\b柳\nadded\t \1\2\0\0\tdiff\1\0\1\bgui\tbold\fmagenta\1\2\1\0\vbranch\ticon\b\1\0\1\bgui\tbold\1\2\0\0\rfilename\tcond\1\0\2\tleft\3\0\nright\3\1\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\tleft\3\0\nright\3\1\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\22inactive_sections\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\fextraBg\1\0\0\afg\1\0\2\25component_separators\5\23section_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\bcmd\afn\bvim\vcolors\22colors.highlights\flualine\frequire\npcall\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-ts-autotag ]]
time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-jsx-pretty', 'emmet-vim'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'vim-jsx-pretty', 'emmet-vim'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-jsx-pretty', 'emmet-vim'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'vim-jsx-pretty', 'emmet-vim'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'emmet-vim'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'emmet-vim'}, { ft = "vue" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-ts-context-commentstring'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'neoscroll.nvim', 'gitsigns.nvim', 'Comment.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'bufferline.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'nvim-cmp', 'vim-surround', 'indent-blankline.nvim', 'emmet-vim'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
