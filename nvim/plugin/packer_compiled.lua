-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/madlife/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/madlife/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/madlife/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/madlife/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/madlife/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n�\3\0\1\b\0\18\00006\1\0\0'\3\1\0B\1\2\2+\2\0\0009\3\2\0009\4\2\0019\4\3\4\5\3\4\0X\3\a�6\3\0\0'\5\4\0B\3\2\0029\3\5\3B\3\1\2\18\2\3\0X\3\16�9\3\6\0009\4\6\0019\4\a\4\4\3\4\0X\3\5�9\3\6\0009\4\6\0019\4\b\4\5\3\4\0X\3\6�6\3\0\0'\5\4\0B\3\2\0029\3\t\3B\3\1\2\18\2\3\0006\3\0\0'\5\n\0B\3\2\0029\3\v\0035\5\14\0009\6\2\0009\a\2\0019\a\f\a\5\6\a\0X\6\2�'\6\r\0X\a\1�'\6\15\0=\6\16\5=\2\17\5D\3\2\0\rlocation\bkey\16__multiline\1\0\0\14__default\tline\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\nctype\18Comment.utils\frequire�\1\1\0\6\0\v\0\0186\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0\n�9\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0043\5\t\0=\5\n\4B\2\2\1K\0\1\0K\0\1\0\rpre_hook\0\ropleader\1\0\2\nblock\agb\tline\agc\ftoggler\1\0\2\nblock\bgbc\tline\bgcc\1\0\2\fpadding\2\vsticky\2\nsetup\fComment\frequire\npcall\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\no\0\0\6\2\3\0\14-\0\0\0009\0\0\0-\2\1\0+\3\2\0+\4\1\0+\5\2\0B\0\5\2-\1\0\0009\1\1\1\18\3\0\0'\4\2\0+\5\1\0B\1\4\1K\0\1\0\0\0\3�\vnormal\18nvim_feedkeys\27nvim_replace_termcodes�\2\1\3\b\1\16\0\28\18\5\0\0009\3\0\0'\6\1\0'\a\2\0B\3\4\2\18\5\3\0009\3\0\3'\6\3\0'\a\4\0B\3\4\0025\4\5\0=\1\6\4=\0\a\4\15\0\2\0X\5\6�5\5\t\0>\3\2\5>\2\3\0055\6\n\0>\6\4\5=\5\b\0045\5\v\0=\1\f\0053\6\r\0=\6\14\5=\4\15\0052\0\0�L\5\2\0\2�\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\vsilent\2\fnoremap\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\6\vcursor\3\5\19align_shortcut\nright\ahl\31LspSagaSignatureHelpBorder\16hl_shortcut\fSpecial\nwidth\3\24\rposition\vcenter\r<leader>\bSPC\5\a%s\tgsub�\16\1\0\16\0004\1g6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0_�6\2\3\0009\2\4\0026\3\3\0009\3\5\0035\4\6\0005\5\a\0=\5\b\0045\5\t\0=\5\n\0046\5\v\0009\5\f\5'\a\r\0B\5\2\2\18\b\5\0009\6\14\5'\t\15\0B\6\3\2\18\t\5\0009\a\16\5B\a\2\0015\a\17\0'\b\18\0\18\t\6\0'\n\19\0&\b\n\b=\b\b\a5\b\20\0=\b\n\a3\b\21\0005\t\22\0004\n\5\0\18\v\b\0'\r\23\0'\14\24\0'\15\25\0B\v\4\2>\v\1\n\18\v\b\0'\r\26\0'\14\27\0'\15\28\0B\v\4\2>\v\2\n\18\v\b\0'\r\29\0'\14\30\0'\15\31\0B\v\4\2>\v\3\n\18\v\b\0'\r \0'\14!\0'\15\"\0B\v\4\0?\v\0\0=\n\b\t5\n#\0=\n\n\t5\n$\0005\v%\0=\v\n\n5\v&\0=\4'\v=\a(\v=\t)\v=\n*\v5\f/\0004\r\t\0005\14+\0>\14\1\r9\14'\v>\14\2\r5\14,\0>\14\3\r9\14(\v>\14\4\r5\14-\0>\14\5\r9\14)\v>\14\6\r5\14.\0>\14\a\r9\14*\v>\14\b\r=\r0\f5\r1\0=\r\n\f9\r2\1\18\15\f\0B\r\2\1\18\r\3\0'\0153\0B\r\2\0012\0\0�K\0\1\0K\0\1\0001autocmd FileType alpha setlocal nofoldenable\nsetup\1\0\1\vmargin\3\5\vlayout\1\0\0\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\vfooter\fbuttons\24plugins_total_stats\vheader\1\0\0\1\0\2\ahl!LspDiagnosticsDefaultWarning\rposition\vcenter\1\0\2\bval?A clever person solves a problem. A wise person avoids it.\ttype\ttext\1\0\2\fspacing\3\1\rposition\vcenter\f:qa<CR>\14  Quit\6q5:e $HOME/.config/nvim/lua/default_config.lua<CR>\18  Settings\6s\f:Rg<CR>\19  Find Word\6f\15:Files<CR>\19  Find File\6p\1\0\1\ttype\ngroup\0\1\0\2\ahl\29LspSagaCodeActionContent\rposition\vcenter\17 plugins \23Madvim has loaded \1\0\1\ttype\ttext\nclose\a*a\treadTfd -d 1 . $HOME\"/.local/share/nvim/site/pack/packer/start\" | wc -l | tr -d \"\n\" \npopen\aio\topts\1\0\2\ahl\16TSCharacter\rposition\vcenter\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\bcmd\bapi\bvim\nalpha\frequire\npcall\t����\4\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["barbar.nvim"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["close-buffers.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/close-buffers.nvim",
    url = "https://github.com/kazhala/close-buffers.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-calc/after/plugin/cmp_calc.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-emoji"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-emoji/after/plugin/cmp_emoji.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-treesitter"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-treesitter/after/plugin/cmp_treesitter.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-treesitter",
    url = "https://github.com/ray-x/cmp-treesitter"
  },
  cmp_luasnip = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\2\n4\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\23did_load_filetypes\6g\bvim\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  fzf = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    config = { "\27LJ\2\n�\r\0\0\n\0003\0I6\0\0\0009\0\1\0009\1\2\0006\2\0\0009\2\3\0025\3\4\0005\4\6\0=\4\5\0025\4\b\0=\4\a\2)\4\0\0=\4\t\2\18\4\1\0'\6\n\0'\a\v\0'\b\f\0\18\t\3\0B\4\5\1\18\4\1\0'\6\n\0'\a\r\0'\b\14\0\18\t\3\0B\4\5\1\18\4\1\0'\6\n\0'\a\15\0'\b\16\0\18\t\3\0B\4\5\0015\4\19\0005\5\18\0=\5\20\0045\5\21\0=\5\22\0045\5\23\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4\17\0025\4.\0=\4-\0029\4/\0'\0060\0+\a\1\0B\4\3\0019\4/\0'\0061\0+\a\1\0B\4\3\0019\4/\0'\0062\0+\a\1\0B\4\3\1K\0\1\0�\4      function! RipgrepFzf(query, fullscreen)\n        let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s -g \"!{node_modules,.git,build,dist,.cache,cache,.idea}\" || true'\n        let initial_command = printf(command_fmt, shellescape(a:query))\n        let reload_command = printf(command_fmt, '{q}')\n        let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}\n        call fzf#vim#grep(initial_command, 1, a:fullscreen)\n      endfunction\n      command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)\n    Zcommand! -bang -nargs=? -complete=dir Buffers call fzf#vim#buffers(<q-args>, <bang>0)Vcommand! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)\14nvim_exec\1\0\3\vctrl-x\nsplit\vctrl-t\14tab split\vctrl-v\vvsplit\15fzf_action\vheader\1\3\0\0\afg\22TSVariableBuiltin\fspinner\1\3\0\0\afg\23NvimTreeRootFolder\vmarker\1\3\0\0\afg\23NvimTreeRootFolder\fpointer\1\3\0\0\afg\23NvimTreeRootFolder\vprompt\1\3\0\0\afg\14Statement\vborder\1\3\0\0\afg\23NvimTreeRootFolder\tinfo\1\3\0\0\afg\14Directory\bhl+\1\3\0\0\afg\30DiagnosticVirtualTextInfo\bbg+\1\3\0\0\abg\16EndOfBuffer\bfg+\1\3\0\0\afg\fSpecial\ahl\1\3\0\0\afg\30DiagnosticVirtualTextInfo\abg\1\3\0\0\abg\16EndOfBuffer\afg\1\0\0\1\3\0\0\afg\vLineNr\15fzf_colors\17:Buffers<CR>\n<C-b>\f:Rg<CR>\n<C-f>\15:Files<CR>\n<C-p>\6n\24fzf_nvim_statusline\1\0\1\nright\vhidden\23fzf_preview_window\1\0\1\tdown\t~40%\15fzf_layout\1\0\2\vsilent\2\fnoremap\2\6g\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\a\0\17\0\0236\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\6\0005\6\5\0=\6\a\0055\6\b\0=\6\t\0055\6\n\0=\6\v\0055\6\f\0=\6\r\0055\6\14\0=\6\15\5=\5\16\4B\2\2\1K\0\1\0\nsigns\14topdelete\1\0\3\ttext\b‾\ahl\15DiffDelete\nnumhl\21GitSignsDeleteNr\vdelete\1\0\3\ttext\6_\ahl\15DiffDelete\nnumhl\21GitSignsDeleteNr\17changedelete\1\0\3\ttext\6~\ahl\15DiffChange\nnumhl\21GitSignsChangeNr\vchange\1\0\3\ttext\b│\ahl\15DiffChange\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\3\ttext\b│\ahl\fDiffAdd\nnumhl\18GitSignsAddNr\1\0\a\14word_diff\1\20update_debounce\3d\18sign_priority\3\6\nnumhl\1\15debug_mode\1\15signcolumn\1\23current_line_blame\1\nsetup\rgitsigns\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nO\0\0\5\1\3\1\r-\0\0\0009\0\0\0-\2\0\0009\2\1\2'\4\2\0B\2\2\0A\0\0\2\t\0\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\5�\b%:t\vexpand\nempty\2>\0\0\3\1\1\0\v-\0\0\0009\0\0\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\5�\rwinwidth�\1\0\0\6\1\5\0\25-\0\0\0009\0\0\0'\2\1\0B\0\2\2-\1\0\0009\1\2\1'\3\3\0\18\4\0\0'\5\4\0&\4\5\4B\1\3\2\r\2\1\0X\2\v�\21\2\1\0)\3\0\0\1\3\2\0X\2\4�\21\2\1\0\21\3\0\0\0\2\3\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\5�\6;\t.git\ffinddir\n%:p:h\vexpand�\1\0\0\3\2\14\0\0315\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\a\1=\1\b\0-\1\0\0009\1\a\1=\1\t\0-\1\0\0009\1\a\1=\1\n\0-\1\0\0009\1\v\1=\1\f\0-\1\1\0009\1\r\1B\1\1\0028\1\1\0\v\1\0\0X\2\2�-\2\0\0009\1\v\2L\1\2\0\4�\5�\tmode\6R\bred\6v\6\22\6V\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tblueI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\b�\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\b�\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b▊�\2\0\0\b\4\a\0 5\0\0\0005\1\1\0-\2\0\0'\4\2\0-\5\1\0B\5\1\2'\6\3\0-\a\2\0009\a\4\a&\4\a\4B\2\2\1-\2\3\0009\2\5\2B\2\1\0028\2\2\0-\3\3\0009\3\5\3B\3\1\0028\3\3\1\14\0\2\0X\4\4�-\4\3\0009\4\5\4B\4\1\2\18\2\4\0\14\0\3\0X\4\1�'\3\6\0\18\4\3\0\18\5\2\0&\4\5\4L\4\2\0\6�\t�\4�\5�\t \tmode\16secondaryBg\f guibg=\27hi! LualineMode guifg=\1\0\b\6i\t \6s\t \6n\t \6\22\t﬏ \6R\t \6c\tגּ \6V\t﬏ \6v\t﬏ \1\0\b\6i\vINSERT\6s\fSNIPPET\6n\vNORMAL\6\22\vVISUAL\6R\fREPLACE\6c\fCOMMAND\6V\vVISUAL\6v\vVISUAL\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b▊�\14\1\0\18\0l\0�\0016\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\2\0X\4\3�\14\0\0\0X\4\1�2\0΀9\4\4\0016\5\5\0009\5\6\0056\6\5\0009\6\a\0065\a\t\0003\b\b\0=\b\n\a3\b\v\0=\b\f\a3\b\r\0=\b\14\a5\b\28\0005\t\15\0005\n\22\0005\v\20\0005\f\17\0009\r\16\4=\r\16\f9\r\18\4=\r\19\f=\f\21\v=\v\23\n5\v\25\0005\f\24\0009\r\16\4=\r\16\f9\r\18\4=\r\19\f=\f\21\v=\v\26\n=\n\27\t=\t\29\b5\t\30\0004\n\0\0=\n\31\t4\n\0\0=\n \t4\n\0\0=\n!\t4\n\0\0=\n\"\t4\n\0\0=\n#\t4\n\0\0=\n$\t=\t%\b5\t&\0004\n\0\0=\n\31\t4\n\0\0=\n \t4\n\0\0=\n!\t4\n\0\0=\n\"\t4\n\0\0=\n#\t4\n\0\0=\n$\t=\t'\b3\t(\0003\n)\0003\v*\0\18\f\n\0005\14.\0003\15+\0>\15\1\0145\15-\0009\16,\4=\16\16\15=\15/\0145\0150\0=\0151\14B\f\2\1\18\f\n\0005\0143\0003\0152\0>\15\1\0145\0154\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\0146\0005\0157\0009\16\16\4=\16\16\15=\15/\0149\15\n\a\15\0\15\0X\16\1�9\15\f\a=\0155\14B\f\2\1\18\f\n\0005\0148\0005\15:\0009\0169\4=\16\16\15=\15/\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\14;\0005\15<\0=\15=\0145\15@\0005\16?\0009\17>\4=\17\16\16=\16A\0155\16C\0009\17B\4=\17\16\16=\16D\0155\16F\0009\17E\4=\17\16\16=\16G\15=\15H\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\14J\0003\15I\0>\15\1\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14K\0005\15M\0009\16L\4=\16\16\15=\15/\0145\15N\0=\0151\14B\f\2\1\18\f\v\0005\14O\0005\15P\0=\15Q\0145\15R\0=\15=\0145\15T\0005\16S\0009\17E\4=\17\16\16=\16U\0155\16W\0009\17V\4=\17\16\16=\16X\0155\16Y\0009\17L\4=\17\16\16=\16Z\0155\16[\0009\17,\4=\17\16\16=\16\\\15=\15]\0145\15^\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14_\0005\15`\0=\0151\14B\f\2\1\18\f\v\0005\14a\0006\15b\0009\15c\15=\15d\0145\15e\0009\16>\4=\16\16\15=\15/\0145\15f\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14i\0003\15g\0>\15\1\0145\15h\0009\16,\4=\16\16\15=\15/\0145\15j\0=\0151\14B\f\2\0019\fk\3\18\14\b\0B\f\2\0012\0\0�K\0\1\0K\0\1\0\nsetup\1\0\1\nright\3\0\1\0\0\1\0\0\0\1\0\2\nright\3\1\tleft\3\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\1\0\2\nright\3\1\tleft\3\1\1\2\0\0\rfiletype\1\0\2\nright\3\1\tleft\3\1\22diagnostics_color\thint\1\0\0\tinfo\1\0\0\twarn\1\0\0\vyellow\nerror\1\0\0\1\0\0\1\0\4\thint\t \twarn\t \tinfo\t \nerror\t \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\2\nright\3\1\tleft\3\1\1\0\1\bgui\tbold\tcyan\1\2\0\0\rlocation\1\0\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\nadded\t \fremoved\t \rmodified\b柳\1\2\0\0\tdiff\1\0\1\bgui\tbold\fmagenta\1\2\1\0\vbranch\ticon\b\1\0\1\bgui\tbold\1\2\0\0\rfilename\tcond\1\0\2\nright\3\1\tleft\3\0\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\nright\3\1\tleft\3\0\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\22inactive_sections\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\16secondaryBg\1\0\0\afg\1\0\2\25component_separators\5\23section_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\bcmd\afn\bvim\vcolors\flualine\22colors.highlights\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\b\0\15\0\0316\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�K\0\1\0009\4\4\0015\6\6\0005\a\5\0=\a\a\6B\4\2\0014\4\0\0005\5\t\0005\6\n\0>\6\2\5=\5\b\0045\5\f\0005\6\r\0>\6\2\5=\5\v\0049\5\14\3\18\a\4\0B\5\2\1K\0\1\0\17set_mappings\1\4\0\0\18vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-u>\rmappings\1\0\5\16hide_cursor\2\rstop_eof\2\24use_local_scrolloff\1\22respect_scrolloff\1\25cursor_scrolls_alone\2\1\3\0\0\n<C-u>\n<C-d>\nsetup\21neoscroll.config\14neoscroll\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nord.nvim"] = {
    after = { "nvim-web-devicons" },
    loaded = true,
    only_config = true
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n�\2\0\0\r\0\16\0 6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�K\0\1\0009\4\4\0015\6\5\0005\a\6\0=\a\a\6B\4\2\0016\4\1\0'\6\b\0B\4\2\0029\5\t\3\18\a\5\0009\5\n\5'\b\v\0009\t\f\0045\v\14\0005\f\r\0=\f\15\vB\t\2\0A\5\2\1K\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\21disable_filetype\1\2\0\0\20TelescopePrompt\1\0\2\21enable_moveright\2\vmap_bs\2\nsetup\bcmp\19nvim-autopairs\frequire\npcall\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-buffer", "cmp-calc", "cmp-emoji", "cmp-nvim-lsp", "cmp_luasnip", "cmp-path", "cmp-treesitter", "nvim-autopairs", "cmp-nvim-lua" },
    config = { "\27LJ\2\n�\1\0\0\b\1\6\2\0316\0\0\0-\2\0\0009\2\1\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\19�-\2\0\0009\2\2\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\3\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\4\2'\5\5\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\b�\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\vunpack\0\2-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\a�\tbody\15lsp_expand\v\0\1\1\0\0\0\1L\0\2\0\v\0\1\1\0\0\0\1L\0\2\0�\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\4\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\a�\f�\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\a�\tjump\rjumpable\21select_prev_item\fvisible�\2\0\2\4\1\a\0\18-\2\0\0009\3\0\0018\2\3\2=\2\0\0015\2\2\0009\3\3\0009\3\4\0038\2\3\2=\2\1\0015\2\6\0009\3\3\0009\3\4\0038\2\3\2\14\0\2\0X\3\1�)\2\0\0=\2\5\1L\1\2\0\v�\1\0\3\rnvim_lsp\3\1\tpath\3\1\vbuffer\3\1\bdup\tname\vsource\1\0\a\vbuffer\r(Buffer)\15treesitter\17(Treesitter)\tcalc\v(Calc)\fluasnip\14(Snippet)\rnvim_lsp\n(LSP)\tpath\v(Path)\16cmp_tabnine\14(Tabnine)\tmenu\tkind�\15\1\0\23\0\\\3�\0016\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\0036\4\0\0006\6\1\0'\a\4\0B\4\3\0036\6\0\0006\b\1\0'\t\5\0B\6\3\3\14\0\0\0X\b\a�\14\0\2\0X\b\5�\14\0\4\0X\b\3�\14\0\6\0X\b\1�2\0��6\b\6\0009\b\a\b6\t\6\0009\t\b\t)\n(\0005\v\t\0003\f\n\0009\r\v\0015\15\15\0005\16\r\0003\17\f\0=\17\14\16=\16\16\0159\16\2\0059\16\17\0169\16\18\16=\16\19\0155\16\29\0005\17\21\0005\18\20\0=\18\22\0176\18\23\0009\18\24\18\24\20\0\n9\21\25\t\24\22\0\n\24\22\1\22\25\22\2\22#\21\22\21\"\20\21\20B\18\2\2=\18\26\0176\18\23\0009\18\24\0189\20\27\t#\20\20\n\"\20\20\nB\18\2\2=\18\28\17=\17\30\0165\17!\0004\18\3\0009\19\2\0059\19\31\0199\19 \19>\19\1\18=\18\"\0173\18#\0=\18$\17=\17%\16=\16&\0155\16)\0009\17\2\0059\17'\0179\17(\17=\17*\0163\17+\0=\17,\16=\16-\0155\16.\0004\17\b\0009\18/\3>\18\1\0179\0180\3>\18\2\0179\0181\3>\18\3\0179\0182\3>\18\4\0179\0183\3>\18\5\0179\0184\3>\18\6\0179\0185\3>\18\a\17=\0176\16=\0167\0155\16:\0009\0178\0019\0179\17)\19��B\17\2\2=\17;\0169\0178\0019\0179\17)\19\4\0B\17\2\2=\17<\0169\0178\0019\17=\17B\17\1\2=\17>\0169\0178\0019\17?\17B\17\1\2=\17@\0169\0178\0019\17A\0175\19C\0009\20'\0019\20B\20=\20D\19B\17\2\2=\17E\0169\0178\0013\19F\0005\20G\0B\17\3\2=\17H\0169\0178\0013\19I\0005\20J\0B\17\3\2=\17K\16=\0168\0155\16M\0003\17L\0=\17N\16=\16O\0155\16P\0=\16Q\0154\16\n\0005\17R\0>\17\1\0165\17S\0>\17\2\0165\17T\0>\17\3\0165\17U\0>\17\4\0165\17V\0>\17\5\0165\17W\0>\17\6\0165\17X\0>\17\a\0165\17Y\0>\17\b\0165\17Z\0>\17\t\16=\16[\15B\r\2\0012\0\0�K\0\1\0K\0\1\0\fsources\1\0\1\tname\nemoji\1\0\1\tname\15treesitter\1\0\1\tname\tcalc\1\0\1\tname\16cmp_tabnine\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\17experimental\1\0\1\15ghost_text\1\15formatting\vformat\1\0\0\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\t<Up>\v<Down>\1\0\0\16scroll_docs\fmapping\fsorting\16comparators\norder\vlength\14sort_text\tkind\nscore\nexact\voffset\1\0\1\20priority_weight\3\2\17confirmation\26get_commit_characters\0\21default_behavior\1\0\0\vInsert\20ConfirmBehavior\vwindow\15completion\27get_trigger_characters\0\17autocomplete\1\0\3\20keyword_pattern/\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\w*\\%(-\\w*\\)*\\)\19keyword_length\3\1\16completeopt\26menu,menuone,noinsert\16TextChanged\17TriggerEvent\18documentation\1\0\0\14maxheight\nlines\rmaxwidth\fcolumns\nfloor\tmath\vborder\1\0\1\17winhighlight(Normal:MyNormal,NormalNC:MyNormalNC\1\t\0\0\b╭\b─\b╮\b│\b╯\b─\b╰\b│\14preselect\tItem\18PreselectMode\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\1\0\25\16Constructor\b\rVariable\b\nValue\b\tEnum\b練\tUnit\b塞\15EnumMember\b\18TypeParameter\b\nEvent\b\tText\b\14Interface\b\nField\b\fKeyword\t \vStruct\b\vMethod\b\tFile\b\vModule\b\fSnippet\b\rOperator\b\vFolder\b\nClass\b\14Reference\b\nColor\b\rFunction\b\rConstant\b\rProperty\b\6o\bapi\bvim\fluasnip\14cmp.types\23cmp.config.compare\bcmp\frequire\npcall\4 \18\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\6\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\5\0B\2\3\1K\0\1\0\1\0\t\vRRGGBB\2\nnames\1\rRRGGBBAA\1\vrgb_fn\1\vhsl_fn\1\vcss_fn\1\tmode\15background\bcss\2\bRGB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\npcall\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\nJ\2\3\t\2\1\0\14\14\0\2\0X\3\1�4\2\0\0009\3\0\2\14\0\3\0X\4\1�-\3\0\0=\3\0\2-\3\1\0\18\5\0\0\18\6\1\0\18\a\2\0G\b\3\0C\3\3\0\3�\4�\vborder�\5\1\0\r\1\28\0009-\0\0\0009\0\0\0006\1\1\0009\1\2\1-\2\0\0009\2\4\2-\4\0\0009\4\5\0049\4\6\0045\5\a\0B\2\3\2=\2\3\0005\2\b\0006\3\t\0\18\5\2\0B\3\2\4H\6\n�'\b\n\0\18\t\6\0&\b\t\b9\t\v\1\18\v\b\0005\f\f\0=\a\r\f=\b\14\f=\b\15\fB\t\3\1F\6\3\3R\6�4\3\t\0005\4\16\0>\4\1\0035\4\17\0>\4\2\0035\4\18\0>\4\3\0035\4\19\0>\4\4\0035\4\20\0>\4\5\0035\4\21\0>\4\6\0035\4\22\0>\4\a\0035\4\23\0>\4\b\0036\4\1\0009\4\24\0049\4\25\0049\4\26\0046\5\1\0009\5\24\0059\5\25\0053\6\27\0=\6\26\0052\0\0�K\0\1\0\6�\0\26open_floating_preview\tutil\blsp\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╰\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╯\16FloatBorder\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╮\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╭\16FloatBorder\nnumhl\vtexthl\ttext\1\0\0\16sign_define\19DiagnosticSign\npairs\1\0\4\nError\t \tWarn\t \tHint\t \tInfo\t \1\0\4\17virtual_text\1\18severity_sort\1\nsigns\2\14underline\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\afn\bvim\rhandlers7\2\0\4\2\1\0\6-\0\0\0009\0\0\0-\2\1\0G\3\0\0A\0\1\1K\0\1\0\0\0\1�\24nvim_buf_set_keymap7\2\0\4\2\1\0\6-\0\0\0009\0\0\0-\2\1\0G\3\0\0A\0\1\1K\0\1\0\0\0\1�\24nvim_buf_set_option�\t\1\2\v\1 \0T3\2\0\0003\3\1\0005\4\2\0\18\5\3\0'\a\3\0'\b\4\0B\5\3\1\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\26\0'\t\27\0\18\n\4\0B\5\5\0019\5\28\0009\5\29\5\15\0\5\0X\6\5�-\5\0\0009\5\30\5'\a\31\0+\b\1\0B\5\3\0012\0\0�K\0\1\0\4��\1          augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\23document_highlight\26resolved_capabilities-<cmd>lua vim.diagnostic.open_float()<CR>\15<leader>gl*<cmd>lua vim.lsp.buf.references()<CR>\15<leader>gf+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ga,<cmd>lua vim.diagnostic.goto_prev()<CR>\15<leader>gp,<cmd>lua vim.diagnostic.goto_next()<CR>\15<leader>gn&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>gr.<cmd>lua vim.lsp.buf.signature_help()<CR>\15<leader>gs%<cmd>lua vim.lsp.buf.hover()<CR>\15<leader>gk*<cmd>lua vim.lsp.buf.definition()<CR>\15<leader>gdF<cmd>lua vim.lsp.diagnostic.set_loclist({ workspace = true })<CR>\n<C-w>2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\n<C-e>\6n\27v:lua.vim.lsp.omnifunc\romnifunc\1\0\2\vsilent\2\fnoremap\2\0\0�\2\0\0\4\1\r\0\24-\0\0\0009\0\0\0009\0\1\0B\0\1\0029\1\2\0009\1\3\0019\1\4\1+\2\2\0=\2\5\0019\1\2\0009\1\3\0019\1\4\0015\2\b\0005\3\a\0=\3\t\2=\2\6\0016\1\n\0'\3\v\0B\1\2\0029\1\f\1\18\3\0\0B\1\2\2\18\0\1\0L\0\2\0\6�\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol�\2\0\1\a\4\n\0'5\1\0\0-\2\0\0=\2\1\1-\2\1\0B\2\1\2=\2\2\1-\2\2\0009\3\3\0008\2\3\2\15\0\2\0X\3\20�9\3\4\2\15\0\3\0X\4\2�9\3\4\2=\3\4\0019\3\5\2\15\0\3\0X\4\2�9\3\5\2=\3\5\0019\3\6\2\15\0\3\0X\4\2�9\3\6\2=\3\6\0019\3\a\2\15\0\3\0X\4\2�9\3\a\2=\3\a\1\18\5\0\0009\3\b\0\18\6\1\0B\3\3\1-\3\3\0'\5\t\0B\3\2\1K\0\1\0\b�\t�\3�\5�\31 do User LspAttachBuffers \nsetup\14filetypes\rroot_dir\rsettings\17init_options\tname\17capabilities\14on_attach\1\0\0�\3\1\0\15\0\21\0'6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�2\0\25�6\4\4\0009\4\5\0046\5\4\0009\5\6\0056\6\4\0009\6\a\0063\a\b\0\18\b\a\0B\b\1\0013\b\t\0003\t\n\0009\n\v\0015\f\17\0005\r\r\0005\14\f\0=\14\14\r5\14\15\0=\14\16\r=\r\18\fB\n\2\0019\n\19\0013\f\20\0B\n\2\0012\0\0�K\0\1\0K\0\1\0\0\20on_server_ready\aui\1\0\0\fkeymaps\1\0\4\25toggle_server_expand\t<CR>\19install_server\6i\18update_server\6u\21uninstall_server\6X\nicons\1\0\0\1\0\3\21server_installed\b✓\19server_pending\b➜\23server_uninstalled\b✗\rsettings\0\0\0\blsp\bcmd\bapi\bvim\22plugins/languages\23nvim-lsp-installer\frequire\npcall\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeOpen" },
    config = { "\27LJ\2\n�\4\0\0\b\0\23\0!6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0004\5\0\0=\5\5\0045\5\t\0005\6\6\0005\a\a\0=\a\b\6=\6\n\5=\5\v\0045\5\f\0004\6\0\0=\6\r\5=\5\14\0045\5\15\0004\6\0\0=\6\16\5=\5\17\0045\5\18\0005\6\19\0004\a\0\0=\a\20\6=\6\21\5=\5\22\4B\2\2\1K\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\4\tside\tleft\21hide_root_folder\2\nwidth\3#\16auto_resize\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\2\15update_cwd\2\rrenderer\19indent_markers\1\0\0\nicons\1\0\3\vcorner\t└ \tedge\t│ \tnone\a  \1\0\1\venable\1\23ignore_ft_on_setup\1\0\b\25nvim_tree_auto_close\2\30nvim_tree_lsp_diagnostics\1\16open_on_tab\1\15update_cwd\1\18hijack_cursor\1\18disable_netrw\2\17hijack_netrw\2\18open_on_setup\1\nsetup\14nvim-tree\frequire\npcall\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-autotag", "nvim-ts-rainbow", "playground" },
    loaded = true,
    only_config = true
  },
  ["nvim-ts-autotag"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    after = { "nvim-tree.lua", "lualine.nvim", "barbar.nvim" },
    config = { "\27LJ\2\n�\n\0\0\v\0D\0|6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\2\0X\4\3�\14\0\0\0X\4\1�K\0\1\0009\4\4\0019\5\5\0035\aB\0005\b\t\0005\t\6\0009\n\a\4=\n\b\t=\t\n\b5\t\v\0009\n\a\4=\n\b\t=\t\f\b5\t\r\0009\n\a\4=\n\b\t=\t\14\b5\t\15\0009\n\a\4=\n\b\t=\t\16\b5\t\17\0009\n\18\4=\n\b\t=\t\19\b5\t\20\0009\n\a\4=\n\b\t=\t\21\b5\t\22\0009\n\23\4=\n\b\t=\t\24\b5\t\25\0009\n\18\4=\n\b\t=\t\26\b5\t\27\0009\n\28\4=\n\b\t=\t\29\b5\t\30\0009\n\28\4=\n\b\t=\t\31\b5\t \0009\n\23\4=\n\b\t=\t!\b5\t\"\0009\n\23\4=\n\b\t=\t#\b5\t$\0009\n\18\4=\n\b\t=\t%\b5\t&\0009\n\a\4=\n\b\t=\t'\b5\t(\0009\n\a\4=\n\b\t=\t)\b5\t*\0009\n\a\4=\n\b\t=\t+\b5\t,\0009\n\a\4=\n\b\t=\t-\b5\t.\0009\n\28\4=\n\b\t=\t/\b5\t0\0009\n1\4=\n\b\t=\t2\b5\t3\0009\n\a\4=\n\b\t=\t4\b5\t5\0009\n\a\4=\n\b\t=\t6\b5\t7\0009\n\18\4=\n\b\t=\t8\b5\t9\0009\n\23\4=\n\b\t=\t:\b5\t;\0009\n<\4=\n\b\t=\t=\b5\t>\0009\n\23\4=\n\b\t=\t?\b5\t@\0009\n\23\4=\n\b\t=\tA\b=\bC\aB\5\2\1K\0\1\0\roverride\1\0\0\bzip\1\0\2\ticon\b\tname\bzip\axz\1\0\2\ticon\b\tname\axz\bvue\ngreen\1\0\2\ticon\b﵂\tname\bvue\brpm\1\0\2\ticon\b\tname\brpm\arb\1\0\2\ticon\b\tname\arb\ats\1\0\2\ticon\b\tname\ats\ttoml\1\0\2\ticon\b\tname\ttoml\apy\vyellow\1\0\2\ticon\b\tname\apy\bpng\1\0\2\ticon\b\tname\bpng\bout\1\0\2\ticon\b\tname\bout\bmp4\1\0\2\ticon\b\tname\bmp4\bmp3\1\0\2\ticon\b\tname\bmp3\blua\1\0\2\ticon\b\tname\blua\tlock\1\0\2\ticon\b\tname\tlock\akt\1\0\2\ticon\t󱈙\tname\akt\ajs\1\0\2\ticon\b\tname\ajs\bjpg\1\0\2\ticon\b\tname\bjpg\tjpeg\fmagenta\1\0\2\ticon\b\tname\tjpeg\tjava\1\0\2\ticon\b\tname\tjava\thtml\vorange\1\0\2\ticon\b\tname\thtml\15Dockerfile\1\0\2\ticon\b\tname\15Dockerfile\bdeb\bred\1\0\2\ticon\b\tname\bdeb\bcss\1\0\2\ticon\b\tname\bcss\bcpp\1\0\2\ticon\b\tname\bcpp\acc\1\0\2\ticon\b\tname\acc\6c\1\0\0\ncolor\tblue\1\0\2\ticon\b\tname\6c\nsetup\vcolors\22nvim-web-devicons\22colors.highlights\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    commands = { "TSPlaygroundToggle" },
    load_after = {},
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "Gdiff", "Gdiffsplit", "Gvdiffsplit", "Gwrite", "Gw" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-jsx-pretty"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/vim-jsx-pretty",
    url = "https://github.com/maxmellon/vim-jsx-pretty"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: neoformat
time([[Setup for neoformat]], true)
try_loadstring("\27LJ\2\n�\1\0\0\t\0\n\0\0156\0\0\0009\0\1\0006\1\0\0009\1\2\0019\1\3\0015\2\4\0005\3\6\0=\3\5\0\18\3\1\0'\5\a\0'\6\b\0'\a\t\0\18\b\2\0B\3\5\1K\0\1\0\23<cmd>Neoformat<CR>\14<leader>f\6n\1\4\0\0\tyapf\rautopep8\nblack\29neoformat_enabled_python\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\6g\bvim\0", "setup", "neoformat")
time([[Setup for neoformat]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\6\0\0\t\0\27\0)6\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\3\0015\2\4\0\18\3\0\0'\5\5\0'\6\6\0'\a\a\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\b\0'\a\t\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\n\0'\a\v\0\18\b\2\0B\3\5\0015\3\r\0=\3\f\0015\3\15\0=\3\14\1)\3\0\0=\3\16\1'\3\18\0=\3\17\0015\3\20\0005\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\3=\3\19\1K\0\1\0\blsp\1\0\4\fwarning\b\tinfo\b\thint\b\nerror\b\vfolder\1\0\b\15empty_open\b\nempty\b\15arrow_open\b\17arrow_closed\b\fsymlink\b\fdefault\b\topen\b\17symlink_open\b\bgit\1\0\a\fignored\b\runmerged\b\fdeleted\b\vstaged\b\frenamed\b\runstaged\a±\14untracked\b\1\0\2\fsymlink\b\fdefault\b\20nvim_tree_icons\a:~#nvim_tree_root_folder_modifier%nvim_tree_highlight_opened_files\1\0\3\rMakefile\3\1\rMAKEFILE\3\1\14README.md\3\1\27vim_tree_special_files\1\4\0\0\rstartify\14dashboard\nalpha\29nvim_tree_auto_ignore_ft\26:NvimTreeFindFile<CR>\15<leader>nf\25:NvimTreeRefresh<CR>\14<leader>r\24:NvimTreeToggle<CR>\n<C-n>\6n\1\0\2\fnoremap\2\vsilent\2\6g\20nvim_set_keymap\bapi\bvim\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
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
-- Setup for: barbar.nvim
time([[Setup for barbar.nvim]], true)
try_loadstring("\27LJ\2\n�\t\0\0\t\0000\0}6\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\3\0015\2\4\0\18\3\0\0'\5\5\0'\6\6\0'\a\a\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\b\0'\a\t\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\n\0'\a\v\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\f\0'\a\r\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\14\0'\a\15\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\16\0'\a\17\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\18\0'\a\19\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\20\0'\a\21\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\22\0'\a\23\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\24\0'\a\25\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\26\0'\a\27\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\28\0'\a\29\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\30\0'\a\31\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6 \0'\a!\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6\"\0'\a#\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6$\0'\a%\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6&\0'\a'\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6(\0'\a)\0\18\b\2\0B\3\5\1\18\3\0\0'\5\5\0'\6*\0'\a+\0\18\b\2\0B\3\5\0015\3-\0005\4.\0=\4/\3=\3,\1K\0\1\0\17exclude_name\1\3\0\0\bfzf\nalpha\1\0\1\rclosable\1\15bufferline\31:BufferOrderByLanguage<CR>\15<leader>bl :BufferOrderByDirectory<CR>\15<leader>bd#:BufferOrderByBufferNumber<CR>\15<leader>bb\":BufferCloseAllButCurrent<CR>\15<leader>cb\20:BufferLast<CR>\14<leader>0\23:BufferGoto 10<CR>\15<leader>10\22:BufferGoto 9<CR>\14<leader>9\22:BufferGoto 8<CR>\14<leader>8\22:BufferGoto 7<CR>\14<leader>7\22:BufferGoto 6<CR>\14<leader>6\22:BufferGoto 5<CR>\14<leader>5\22:BufferGoto 4<CR>\14<leader>4\22:BufferGoto 3<CR>\14<leader>3\22:BufferGoto 2<CR>\14<leader>2\22:BufferGoto 1<CR>\14<leader>1\25 :BufferMoveNext<CR>\14<leader>>\28:BufferMovePrevious<CR>\14<leader><\20:BufferNext<CR>\18<leader><Tab>\24:BufferPrevious<CR>\20<leader><S-Tab>\6n\1\0\2\fnoremap\2\vsilent\2\6g\20nvim_set_keymap\bapi\bvim\0", "setup", "barbar.nvim")
time([[Setup for barbar.nvim]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\6\0\0\2\0\17\0\0236\0\0\0009\0\1\0005\1\3\0=\1\2\0005\1\5\0=\1\4\0005\1\a\0=\1\6\0+\1\1\0=\1\b\0+\1\1\0=\1\t\0005\1\v\0=\1\n\0005\1\r\0=\1\f\0+\1\2\0=\1\14\0+\1\2\0=\1\15\0+\1\2\0=\1\16\0K\0\1\0\29indent_blankline_enabled*indent_blankline_show_current_context$indent_blankline_use_treesitter\1\23\0\0\nclass\vreturn\rfunction\vmethod\b^if\aif\v^while\16jsx_element\t^for\bfor\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns\1\2\0\0\14README.md%indent_blankline_bufname_exclude-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\1\n\0\0\b\b┊\b┆\a¦\6|\a¦\b┆\b┊\b\31indent_blankline_char_list\1\a\0\0\thelp\rstartify\14dashboard\vpacker\nalpha\rNvimTree&indent_blankline_filetype_exclude\1\a\0\0\thelp\rstartify\14dashboard\vpacker\nalpha\rNvimTree%indent_blankline_buftype_exclude\6g\bvim\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nJ\2\3\t\2\1\0\14\14\0\2\0X\3\1�4\2\0\0009\3\0\2\14\0\3\0X\4\1�-\3\0\0=\3\0\2-\3\1\0\18\5\0\0\18\6\1\0\18\a\2\0G\b\3\0C\3\3\0\3�\4�\vborder�\5\1\0\r\1\28\0009-\0\0\0009\0\0\0006\1\1\0009\1\2\1-\2\0\0009\2\4\2-\4\0\0009\4\5\0049\4\6\0045\5\a\0B\2\3\2=\2\3\0005\2\b\0006\3\t\0\18\5\2\0B\3\2\4H\6\n�'\b\n\0\18\t\6\0&\b\t\b9\t\v\1\18\v\b\0005\f\f\0=\a\r\f=\b\14\f=\b\15\fB\t\3\1F\6\3\3R\6�4\3\t\0005\4\16\0>\4\1\0035\4\17\0>\4\2\0035\4\18\0>\4\3\0035\4\19\0>\4\4\0035\4\20\0>\4\5\0035\4\21\0>\4\6\0035\4\22\0>\4\a\0035\4\23\0>\4\b\0036\4\1\0009\4\24\0049\4\25\0049\4\26\0046\5\1\0009\5\24\0059\5\25\0053\6\27\0=\6\26\0052\0\0�K\0\1\0\6�\0\26open_floating_preview\tutil\blsp\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╰\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╯\16FloatBorder\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╮\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╭\16FloatBorder\nnumhl\vtexthl\ttext\1\0\0\16sign_define\19DiagnosticSign\npairs\1\0\4\nError\t \tWarn\t \tHint\t \tInfo\t \1\0\4\17virtual_text\1\18severity_sort\1\nsigns\2\14underline\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\afn\bvim\rhandlers7\2\0\4\2\1\0\6-\0\0\0009\0\0\0-\2\1\0G\3\0\0A\0\1\1K\0\1\0\0\0\1�\24nvim_buf_set_keymap7\2\0\4\2\1\0\6-\0\0\0009\0\0\0-\2\1\0G\3\0\0A\0\1\1K\0\1\0\0\0\1�\24nvim_buf_set_option�\t\1\2\v\1 \0T3\2\0\0003\3\1\0005\4\2\0\18\5\3\0'\a\3\0'\b\4\0B\5\3\1\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\26\0'\t\27\0\18\n\4\0B\5\5\0019\5\28\0009\5\29\5\15\0\5\0X\6\5�-\5\0\0009\5\30\5'\a\31\0+\b\1\0B\5\3\0012\0\0�K\0\1\0\4��\1          augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\23document_highlight\26resolved_capabilities-<cmd>lua vim.diagnostic.open_float()<CR>\15<leader>gl*<cmd>lua vim.lsp.buf.references()<CR>\15<leader>gf+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ga,<cmd>lua vim.diagnostic.goto_prev()<CR>\15<leader>gp,<cmd>lua vim.diagnostic.goto_next()<CR>\15<leader>gn&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>gr.<cmd>lua vim.lsp.buf.signature_help()<CR>\15<leader>gs%<cmd>lua vim.lsp.buf.hover()<CR>\15<leader>gk*<cmd>lua vim.lsp.buf.definition()<CR>\15<leader>gdF<cmd>lua vim.lsp.diagnostic.set_loclist({ workspace = true })<CR>\n<C-w>2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\n<C-e>\6n\27v:lua.vim.lsp.omnifunc\romnifunc\1\0\2\vsilent\2\fnoremap\2\0\0�\2\0\0\4\1\r\0\24-\0\0\0009\0\0\0009\0\1\0B\0\1\0029\1\2\0009\1\3\0019\1\4\1+\2\2\0=\2\5\0019\1\2\0009\1\3\0019\1\4\0015\2\b\0005\3\a\0=\3\t\2=\2\6\0016\1\n\0'\3\v\0B\1\2\0029\1\f\1\18\3\0\0B\1\2\2\18\0\1\0L\0\2\0\6�\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol�\2\0\1\a\4\n\0'5\1\0\0-\2\0\0=\2\1\1-\2\1\0B\2\1\2=\2\2\1-\2\2\0009\3\3\0008\2\3\2\15\0\2\0X\3\20�9\3\4\2\15\0\3\0X\4\2�9\3\4\2=\3\4\0019\3\5\2\15\0\3\0X\4\2�9\3\5\2=\3\5\0019\3\6\2\15\0\3\0X\4\2�9\3\6\2=\3\6\0019\3\a\2\15\0\3\0X\4\2�9\3\a\2=\3\a\1\18\5\0\0009\3\b\0\18\6\1\0B\3\3\1-\3\3\0'\5\t\0B\3\2\1K\0\1\0\b�\t�\3�\5�\31 do User LspAttachBuffers \nsetup\14filetypes\rroot_dir\rsettings\17init_options\tname\17capabilities\14on_attach\1\0\0�\3\1\0\15\0\21\0'6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�2\0\25�6\4\4\0009\4\5\0046\5\4\0009\5\6\0056\6\4\0009\6\a\0063\a\b\0\18\b\a\0B\b\1\0013\b\t\0003\t\n\0009\n\v\0015\f\17\0005\r\r\0005\14\f\0=\14\14\r5\14\15\0=\14\16\r=\r\18\fB\n\2\0019\n\19\0013\f\20\0B\n\2\0012\0\0�K\0\1\0K\0\1\0\0\20on_server_ready\aui\1\0\0\fkeymaps\1\0\4\25toggle_server_expand\t<CR>\19install_server\6i\18update_server\6u\21uninstall_server\6X\nicons\1\0\0\1\0\3\21server_installed\b✓\19server_pending\b➜\23server_uninstalled\b✗\rsettings\0\0\0\blsp\bcmd\bapi\bvim\22plugins/languages\23nvim-lsp-installer\frequire\npcall\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\5\0\0\a\0\20\0\0316\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0004\6\0\0=\6\b\5=\5\t\0045\5\n\0004\6\0\0=\6\b\5=\5\v\0045\5\f\0004\6\0\0=\6\b\0055\6\r\0=\6\14\5=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\4B\2\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\fautotag\1\0\1\venable\2\15playground\16keybindings\1\0\n\19focus_language\6f\21unfocus_language\6F\vupdate\6R\14goto_node\t<CR>\14show_help\6?\24toggle_query_editor\6o\21toggle_hl_groups\6i\30toggle_injected_languages\6t\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\1\0\3\venable\2\15updatetime\3\25\20persist_queries\1\vindent\1\0\1\venable\1\14highlight\fdisable\1\0\2&additional_vim_regex_highlighting\2\venable\2\26context_commentstring\1\0\1\21ensure_installed\ball\1\0\2\19enable_autocmd\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\npcall\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\1\b\0\18\00006\1\0\0'\3\1\0B\1\2\2+\2\0\0009\3\2\0009\4\2\0019\4\3\4\5\3\4\0X\3\a�6\3\0\0'\5\4\0B\3\2\0029\3\5\3B\3\1\2\18\2\3\0X\3\16�9\3\6\0009\4\6\0019\4\a\4\4\3\4\0X\3\5�9\3\6\0009\4\6\0019\4\b\4\5\3\4\0X\3\6�6\3\0\0'\5\4\0B\3\2\0029\3\t\3B\3\1\2\18\2\3\0006\3\0\0'\5\n\0B\3\2\0029\3\v\0035\5\14\0009\6\2\0009\a\2\0019\a\f\a\5\6\a\0X\6\2�'\6\r\0X\a\1�'\6\15\0=\6\16\5=\2\17\5D\3\2\0\rlocation\bkey\16__multiline\1\0\0\14__default\tline\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\nctype\18Comment.utils\frequire�\1\1\0\6\0\v\0\0186\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0\n�9\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0043\5\t\0=\5\n\4B\2\2\1K\0\1\0K\0\1\0\rpre_hook\0\ropleader\1\0\2\nblock\agb\tline\agc\ftoggler\1\0\2\nblock\bgbc\tline\bgcc\1\0\2\fpadding\2\vsticky\2\nsetup\fComment\frequire\npcall\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nord.nvim
time([[Config for nord.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit\vcolors\frequire\0", "config", "nord.nvim")
time([[Config for nord.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\no\0\0\6\2\3\0\14-\0\0\0009\0\0\0-\2\1\0+\3\2\0+\4\1\0+\5\2\0B\0\5\2-\1\0\0009\1\1\1\18\3\0\0'\4\2\0+\5\1\0B\1\4\1K\0\1\0\0\0\3�\vnormal\18nvim_feedkeys\27nvim_replace_termcodes�\2\1\3\b\1\16\0\28\18\5\0\0009\3\0\0'\6\1\0'\a\2\0B\3\4\2\18\5\3\0009\3\0\3'\6\3\0'\a\4\0B\3\4\0025\4\5\0=\1\6\4=\0\a\4\15\0\2\0X\5\6�5\5\t\0>\3\2\5>\2\3\0055\6\n\0>\6\4\5=\5\b\0045\5\v\0=\1\f\0053\6\r\0=\6\14\5=\4\15\0052\0\0�L\5\2\0\2�\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\vsilent\2\fnoremap\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\6\vcursor\3\5\19align_shortcut\nright\ahl\31LspSagaSignatureHelpBorder\16hl_shortcut\fSpecial\nwidth\3\24\rposition\vcenter\r<leader>\bSPC\5\a%s\tgsub�\16\1\0\16\0004\1g6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0_�6\2\3\0009\2\4\0026\3\3\0009\3\5\0035\4\6\0005\5\a\0=\5\b\0045\5\t\0=\5\n\0046\5\v\0009\5\f\5'\a\r\0B\5\2\2\18\b\5\0009\6\14\5'\t\15\0B\6\3\2\18\t\5\0009\a\16\5B\a\2\0015\a\17\0'\b\18\0\18\t\6\0'\n\19\0&\b\n\b=\b\b\a5\b\20\0=\b\n\a3\b\21\0005\t\22\0004\n\5\0\18\v\b\0'\r\23\0'\14\24\0'\15\25\0B\v\4\2>\v\1\n\18\v\b\0'\r\26\0'\14\27\0'\15\28\0B\v\4\2>\v\2\n\18\v\b\0'\r\29\0'\14\30\0'\15\31\0B\v\4\2>\v\3\n\18\v\b\0'\r \0'\14!\0'\15\"\0B\v\4\0?\v\0\0=\n\b\t5\n#\0=\n\n\t5\n$\0005\v%\0=\v\n\n5\v&\0=\4'\v=\a(\v=\t)\v=\n*\v5\f/\0004\r\t\0005\14+\0>\14\1\r9\14'\v>\14\2\r5\14,\0>\14\3\r9\14(\v>\14\4\r5\14-\0>\14\5\r9\14)\v>\14\6\r5\14.\0>\14\a\r9\14*\v>\14\b\r=\r0\f5\r1\0=\r\n\f9\r2\1\18\15\f\0B\r\2\1\18\r\3\0'\0153\0B\r\2\0012\0\0�K\0\1\0K\0\1\0001autocmd FileType alpha setlocal nofoldenable\nsetup\1\0\1\vmargin\3\5\vlayout\1\0\0\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\vfooter\fbuttons\24plugins_total_stats\vheader\1\0\0\1\0\2\ahl!LspDiagnosticsDefaultWarning\rposition\vcenter\1\0\2\bval?A clever person solves a problem. A wise person avoids it.\ttype\ttext\1\0\2\fspacing\3\1\rposition\vcenter\f:qa<CR>\14  Quit\6q5:e $HOME/.config/nvim/lua/default_config.lua<CR>\18  Settings\6s\f:Rg<CR>\19  Find Word\6f\15:Files<CR>\19  Find File\6p\1\0\1\ttype\ngroup\0\1\0\2\ahl\29LspSagaCodeActionContent\rposition\vcenter\17 plugins \23Madvim has loaded \1\0\1\ttype\ttext\nclose\a*a\treadTfd -d 1 . $HOME\"/.local/share/nvim/site/pack/packer/start\" | wc -l | tr -d \"\n\" \npopen\aio\topts\1\0\2\ahl\16TSCharacter\rposition\vcenter\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\bcmd\bapi\bvim\nalpha\frequire\npcall\t����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\6\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\5\0B\2\3\1K\0\1\0\1\0\t\vRRGGBB\2\nnames\1\rRRGGBBAA\1\vrgb_fn\1\vhsl_fn\1\vcss_fn\1\tmode\15background\bcss\2\bRGB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\npcall\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\23did_load_filetypes\6g\bvim\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
try_loadstring("\27LJ\2\n�\r\0\0\n\0003\0I6\0\0\0009\0\1\0009\1\2\0006\2\0\0009\2\3\0025\3\4\0005\4\6\0=\4\5\0025\4\b\0=\4\a\2)\4\0\0=\4\t\2\18\4\1\0'\6\n\0'\a\v\0'\b\f\0\18\t\3\0B\4\5\1\18\4\1\0'\6\n\0'\a\r\0'\b\14\0\18\t\3\0B\4\5\1\18\4\1\0'\6\n\0'\a\15\0'\b\16\0\18\t\3\0B\4\5\0015\4\19\0005\5\18\0=\5\20\0045\5\21\0=\5\22\0045\5\23\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4\17\0025\4.\0=\4-\0029\4/\0'\0060\0+\a\1\0B\4\3\0019\4/\0'\0061\0+\a\1\0B\4\3\0019\4/\0'\0062\0+\a\1\0B\4\3\1K\0\1\0�\4      function! RipgrepFzf(query, fullscreen)\n        let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s -g \"!{node_modules,.git,build,dist,.cache,cache,.idea}\" || true'\n        let initial_command = printf(command_fmt, shellescape(a:query))\n        let reload_command = printf(command_fmt, '{q}')\n        let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}\n        call fzf#vim#grep(initial_command, 1, a:fullscreen)\n      endfunction\n      command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)\n    Zcommand! -bang -nargs=? -complete=dir Buffers call fzf#vim#buffers(<q-args>, <bang>0)Vcommand! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)\14nvim_exec\1\0\3\vctrl-x\nsplit\vctrl-t\14tab split\vctrl-v\vvsplit\15fzf_action\vheader\1\3\0\0\afg\22TSVariableBuiltin\fspinner\1\3\0\0\afg\23NvimTreeRootFolder\vmarker\1\3\0\0\afg\23NvimTreeRootFolder\fpointer\1\3\0\0\afg\23NvimTreeRootFolder\vprompt\1\3\0\0\afg\14Statement\vborder\1\3\0\0\afg\23NvimTreeRootFolder\tinfo\1\3\0\0\afg\14Directory\bhl+\1\3\0\0\afg\30DiagnosticVirtualTextInfo\bbg+\1\3\0\0\abg\16EndOfBuffer\bfg+\1\3\0\0\afg\fSpecial\ahl\1\3\0\0\afg\30DiagnosticVirtualTextInfo\abg\1\3\0\0\abg\16EndOfBuffer\afg\1\0\0\1\3\0\0\afg\vLineNr\15fzf_colors\17:Buffers<CR>\n<C-b>\f:Rg<CR>\n<C-f>\15:Files<CR>\n<C-p>\6n\24fzf_nvim_statusline\1\0\1\nright\vhidden\23fzf_preview_window\1\0\1\tdown\t~40%\15fzf_layout\1\0\2\vsilent\2\fnoremap\2\6g\20nvim_set_keymap\bapi\bvim\0", "config", "fzf.vim")
time([[Config for fzf.vim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]

-- Config for: nvim-web-devicons
try_loadstring("\27LJ\2\n�\n\0\0\v\0D\0|6\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\2\0X\4\3�\14\0\0\0X\4\1�K\0\1\0009\4\4\0019\5\5\0035\aB\0005\b\t\0005\t\6\0009\n\a\4=\n\b\t=\t\n\b5\t\v\0009\n\a\4=\n\b\t=\t\f\b5\t\r\0009\n\a\4=\n\b\t=\t\14\b5\t\15\0009\n\a\4=\n\b\t=\t\16\b5\t\17\0009\n\18\4=\n\b\t=\t\19\b5\t\20\0009\n\a\4=\n\b\t=\t\21\b5\t\22\0009\n\23\4=\n\b\t=\t\24\b5\t\25\0009\n\18\4=\n\b\t=\t\26\b5\t\27\0009\n\28\4=\n\b\t=\t\29\b5\t\30\0009\n\28\4=\n\b\t=\t\31\b5\t \0009\n\23\4=\n\b\t=\t!\b5\t\"\0009\n\23\4=\n\b\t=\t#\b5\t$\0009\n\18\4=\n\b\t=\t%\b5\t&\0009\n\a\4=\n\b\t=\t'\b5\t(\0009\n\a\4=\n\b\t=\t)\b5\t*\0009\n\a\4=\n\b\t=\t+\b5\t,\0009\n\a\4=\n\b\t=\t-\b5\t.\0009\n\28\4=\n\b\t=\t/\b5\t0\0009\n1\4=\n\b\t=\t2\b5\t3\0009\n\a\4=\n\b\t=\t4\b5\t5\0009\n\a\4=\n\b\t=\t6\b5\t7\0009\n\18\4=\n\b\t=\t8\b5\t9\0009\n\23\4=\n\b\t=\t:\b5\t;\0009\n<\4=\n\b\t=\t=\b5\t>\0009\n\23\4=\n\b\t=\t?\b5\t@\0009\n\23\4=\n\b\t=\tA\b=\bC\aB\5\2\1K\0\1\0\roverride\1\0\0\bzip\1\0\2\ticon\b\tname\bzip\axz\1\0\2\ticon\b\tname\axz\bvue\ngreen\1\0\2\ticon\b﵂\tname\bvue\brpm\1\0\2\ticon\b\tname\brpm\arb\1\0\2\ticon\b\tname\arb\ats\1\0\2\ticon\b\tname\ats\ttoml\1\0\2\ticon\b\tname\ttoml\apy\vyellow\1\0\2\ticon\b\tname\apy\bpng\1\0\2\ticon\b\tname\bpng\bout\1\0\2\ticon\b\tname\bout\bmp4\1\0\2\ticon\b\tname\bmp4\bmp3\1\0\2\ticon\b\tname\bmp3\blua\1\0\2\ticon\b\tname\blua\tlock\1\0\2\ticon\b\tname\tlock\akt\1\0\2\ticon\t󱈙\tname\akt\ajs\1\0\2\ticon\b\tname\ajs\bjpg\1\0\2\ticon\b\tname\bjpg\tjpeg\fmagenta\1\0\2\ticon\b\tname\tjpeg\tjava\1\0\2\ticon\b\tname\tjava\thtml\vorange\1\0\2\ticon\b\tname\thtml\15Dockerfile\1\0\2\ticon\b\tname\15Dockerfile\bdeb\bred\1\0\2\ticon\b\tname\bdeb\bcss\1\0\2\ticon\b\tname\bcss\bcpp\1\0\2\ticon\b\tname\bcpp\acc\1\0\2\ticon\b\tname\acc\6c\1\0\0\ncolor\tblue\1\0\2\ticon\b\tname\6c\nsetup\vcolors\22nvim-web-devicons\22colors.highlights\frequire\npcall\0", "config", "nvim-web-devicons")

vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
try_loadstring("\27LJ\2\nO\0\0\5\1\3\1\r-\0\0\0009\0\0\0-\2\0\0009\2\1\2'\4\2\0B\2\2\0A\0\0\2\t\0\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\5�\b%:t\vexpand\nempty\2>\0\0\3\1\1\0\v-\0\0\0009\0\0\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\5�\rwinwidth�\1\0\0\6\1\5\0\25-\0\0\0009\0\0\0'\2\1\0B\0\2\2-\1\0\0009\1\2\1'\3\3\0\18\4\0\0'\5\4\0&\4\5\4B\1\3\2\r\2\1\0X\2\v�\21\2\1\0)\3\0\0\1\3\2\0X\2\4�\21\2\1\0\21\3\0\0\0\2\3\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\5�\6;\t.git\ffinddir\n%:p:h\vexpand�\1\0\0\3\2\14\0\0315\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\a\1=\1\b\0-\1\0\0009\1\a\1=\1\t\0-\1\0\0009\1\a\1=\1\n\0-\1\0\0009\1\v\1=\1\f\0-\1\1\0009\1\r\1B\1\1\0028\1\1\0\v\1\0\0X\2\2�-\2\0\0009\1\v\2L\1\2\0\4�\5�\tmode\6R\bred\6v\6\22\6V\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tblueI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\b�\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\b�\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b▊�\2\0\0\b\4\a\0 5\0\0\0005\1\1\0-\2\0\0'\4\2\0-\5\1\0B\5\1\2'\6\3\0-\a\2\0009\a\4\a&\4\a\4B\2\2\1-\2\3\0009\2\5\2B\2\1\0028\2\2\0-\3\3\0009\3\5\3B\3\1\0028\3\3\1\14\0\2\0X\4\4�-\4\3\0009\4\5\4B\4\1\2\18\2\4\0\14\0\3\0X\4\1�'\3\6\0\18\4\3\0\18\5\2\0&\4\5\4L\4\2\0\6�\t�\4�\5�\t \tmode\16secondaryBg\f guibg=\27hi! LualineMode guifg=\1\0\b\6i\t \6s\t \6n\t \6\22\t﬏ \6R\t \6c\tגּ \6V\t﬏ \6v\t﬏ \1\0\b\6i\vINSERT\6s\fSNIPPET\6n\vNORMAL\6\22\vVISUAL\6R\fREPLACE\6c\fCOMMAND\6V\vVISUAL\6v\vVISUAL\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b▊�\14\1\0\18\0l\0�\0016\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\2\0X\4\3�\14\0\0\0X\4\1�2\0΀9\4\4\0016\5\5\0009\5\6\0056\6\5\0009\6\a\0065\a\t\0003\b\b\0=\b\n\a3\b\v\0=\b\f\a3\b\r\0=\b\14\a5\b\28\0005\t\15\0005\n\22\0005\v\20\0005\f\17\0009\r\16\4=\r\16\f9\r\18\4=\r\19\f=\f\21\v=\v\23\n5\v\25\0005\f\24\0009\r\16\4=\r\16\f9\r\18\4=\r\19\f=\f\21\v=\v\26\n=\n\27\t=\t\29\b5\t\30\0004\n\0\0=\n\31\t4\n\0\0=\n \t4\n\0\0=\n!\t4\n\0\0=\n\"\t4\n\0\0=\n#\t4\n\0\0=\n$\t=\t%\b5\t&\0004\n\0\0=\n\31\t4\n\0\0=\n \t4\n\0\0=\n!\t4\n\0\0=\n\"\t4\n\0\0=\n#\t4\n\0\0=\n$\t=\t'\b3\t(\0003\n)\0003\v*\0\18\f\n\0005\14.\0003\15+\0>\15\1\0145\15-\0009\16,\4=\16\16\15=\15/\0145\0150\0=\0151\14B\f\2\1\18\f\n\0005\0143\0003\0152\0>\15\1\0145\0154\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\0146\0005\0157\0009\16\16\4=\16\16\15=\15/\0149\15\n\a\15\0\15\0X\16\1�9\15\f\a=\0155\14B\f\2\1\18\f\n\0005\0148\0005\15:\0009\0169\4=\16\16\15=\15/\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\14;\0005\15<\0=\15=\0145\15@\0005\16?\0009\17>\4=\17\16\16=\16A\0155\16C\0009\17B\4=\17\16\16=\16D\0155\16F\0009\17E\4=\17\16\16=\16G\15=\15H\0149\15\f\a=\0155\14B\f\2\1\18\f\n\0005\14J\0003\15I\0>\15\1\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14K\0005\15M\0009\16L\4=\16\16\15=\15/\0145\15N\0=\0151\14B\f\2\1\18\f\v\0005\14O\0005\15P\0=\15Q\0145\15R\0=\15=\0145\15T\0005\16S\0009\17E\4=\17\16\16=\16U\0155\16W\0009\17V\4=\17\16\16=\16X\0155\16Y\0009\17L\4=\17\16\16=\16Z\0155\16[\0009\17,\4=\17\16\16=\16\\\15=\15]\0145\15^\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14_\0005\15`\0=\0151\14B\f\2\1\18\f\v\0005\14a\0006\15b\0009\15c\15=\15d\0145\15e\0009\16>\4=\16\16\15=\15/\0145\15f\0=\0151\0149\15\f\a=\0155\14B\f\2\1\18\f\v\0005\14i\0003\15g\0>\15\1\0145\15h\0009\16,\4=\16\16\15=\15/\0145\15j\0=\0151\14B\f\2\0019\fk\3\18\14\b\0B\f\2\0012\0\0�K\0\1\0K\0\1\0\nsetup\1\0\1\nright\3\0\1\0\0\1\0\0\0\1\0\2\nright\3\1\tleft\3\1\1\0\1\bgui\tbold\bfmt\nupper\vstring\1\2\0\0\15o:encoding\1\0\2\nright\3\1\tleft\3\1\1\2\0\0\rfiletype\1\0\2\nright\3\1\tleft\3\1\22diagnostics_color\thint\1\0\0\tinfo\1\0\0\twarn\1\0\0\vyellow\nerror\1\0\0\1\0\0\1\0\4\thint\t \twarn\t \tinfo\t \nerror\t \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\2\nright\3\1\tleft\3\1\1\0\1\bgui\tbold\tcyan\1\2\0\0\rlocation\1\0\0\0\15diff_color\fremoved\1\0\0\bred\rmodified\1\0\0\vorange\nadded\1\0\0\1\0\0\ngreen\fsymbols\1\0\3\nadded\t \fremoved\t \rmodified\b柳\1\2\0\0\tdiff\1\0\1\bgui\tbold\fmagenta\1\2\1\0\vbranch\ticon\b\1\0\1\bgui\tbold\1\2\0\0\rfilename\tcond\1\0\2\nright\3\1\tleft\3\0\1\0\1\ncolor\16LualineMode\0\fpadding\1\0\2\nright\3\1\tleft\3\0\ncolor\1\0\0\1\0\0\tblue\0\0\0\0\22inactive_sections\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\16secondaryBg\1\0\0\afg\1\0\2\25component_separators\5\23section_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\bcmd\afn\bvim\vcolors\flualine\22colors.highlights\frequire\npcall\0", "config", "lualine.nvim")

vim.cmd [[ packadd barbar.nvim ]]
vim.cmd [[ packadd nvim-ts-rainbow ]]
vim.cmd [[ packadd nvim-ts-autotag ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSPlaygroundToggle lua require("packer.load")({'playground'}, { cmd = "TSPlaygroundToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gdiff lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiff", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gvdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gvdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gw lua require("packer.load")({'vim-fugitive'}, { cmd = "Gw", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gwrite lua require("packer.load")({'vim-fugitive'}, { cmd = "Gwrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'emmet-vim', 'vim-jsx-pretty'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'emmet-vim', 'vim-jsx-pretty'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'emmet-vim'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'emmet-vim', 'vim-jsx-pretty'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'emmet-vim', 'vim-jsx-pretty'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'emmet-vim'}, { ft = "vue" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'neoscroll.nvim', 'nvim-cmp', 'gitsigns.nvim', 'indent-blankline.nvim'}, { event = "BufEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'emmet-vim', 'vim-surround'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
