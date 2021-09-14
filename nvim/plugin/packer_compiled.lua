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
local package_path_str = "/home/madlife/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/madlife/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/madlife/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/madlife/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/madlife/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  LuaSnip = {
    after = { "nvim-cmp", "cmp_luasnip" },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\1\2}\0\0\5\1\5\0\0164\0\0\0007\0\1\0007\0\2\0+\1\0\0)\2\2\0)\3\1\0)\4\2\0>\0\5\0024\1\0\0007\1\1\0017\1\3\1\16\2\0\0%\3\4\0)\4\1\0>\1\4\1G\0\1\0\3�\vnormal\18nvim_feedkeys\27nvim_replace_termcodes\bapi\bvim�\2\1\3\a\0\16\0\28\16\4\0\0007\3\0\0%\5\1\0%\6\2\0>\3\4\2\16\4\3\0007\3\0\3%\5\3\0%\6\4\0>\3\4\0023\4\5\0:\1\6\4:\0\a\4\15\0\2\0T\5\6�3\5\t\0;\3\2\5;\2\3\0053\6\n\0;\6\4\5:\5\b\0043\5\v\0:\1\f\0051\6\r\0:\6\14\5:\4\15\0050\0\0�H\5\2\0\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\vsilent\2\fnoremap\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\6\rposition\vcenter\16hl_shortcut\fSpecial\ahl\31LspSagaSignatureHelpBorder\19align_shortcut\nright\nwidth\3\24\vcursor\3\5\r<leader>\bSPC\5\a%s\tgsub�\17\1\0\r\0006\1i4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�0\0a�3\2\3\0003\3\4\0:\3\5\0023\3\6\0:\3\a\0024\3\b\0007\3\t\3%\4\n\0>\3\2\2\16\5\3\0007\4\v\3%\6\f\0>\4\3\2\16\6\3\0007\5\r\3>\5\2\0013\5\14\0%\6\15\0\16\a\4\0%\b\16\0$\6\b\6:\6\5\0053\6\17\0:\6\a\0051\6\18\0003\a\19\0002\b\6\0\16\t\6\0%\n\20\0%\v\21\0%\f\22\0>\t\4\2;\t\1\b\16\t\6\0%\n\23\0%\v\24\0%\f\25\0>\t\4\2;\t\2\b\16\t\6\0%\n\26\0%\v\27\0%\f\28\0>\t\4\2;\t\3\b\16\t\6\0%\n\29\0%\v\30\0%\f\31\0>\t\4\2;\t\4\b\16\t\6\0%\n \0%\v!\0%\f\"\0>\t\4\0<\t\0\0:\b\5\a3\b#\0:\b\a\a3\b$\0003\t%\0:\t\a\b3\t&\0:\2'\t:\5(\t:\a)\t:\b*\t3\n/\0002\v\t\0003\f+\0;\f\1\v7\f'\t;\f\2\v3\f,\0;\f\3\v7\f(\t;\f\4\v3\f-\0;\f\5\v7\f)\t;\f\6\v3\f.\0;\f\a\v7\f*\t;\f\b\v:\v0\n3\v1\0:\v\a\n7\v2\1\16\f\n\0>\v\2\0014\v3\0007\v4\v%\f5\0>\v\2\1G\0\1\0G\0\1\0001autocmd FileType alpha setlocal nofoldenable\bcmd\bvim\nsetup\1\0\1\vmargin\3\5\vlayout\1\0\0\1\0\2\bval\3\1\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\1\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\vfooter\fbuttons\24plugins_total_stats\vheader\1\0\0\1\0\2\ahl!LspDiagnosticsDefaultWarning\rposition\vcenter\1\0\2\bvalCA clever person solves a problem.\n    A wise person AVOIDS it.\ttype\ttext\1\0\1\fspacing\3\1\f:qa<cr>\14  Quit\6q;:e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<cr>\18  Settings\6s\31:ene <BAR> startinsert<cr>\18  New File\6n\29:Telescope live_grep<cr>\19  Find Word\6f\30:Telescope find_files<cr>\19  Find File\6p\1\0\1\ttype\ngroup\0\1\0\2\ahl\29LspSagaCodeActionContent\rposition\vcenter\17 plugins \23Madvim has loaded \1\0\1\ttype\ttext\nclose\a*a\treadTfd -d 1 . $HOME\"/.local/share/nvim/site/pack/packer/start\" | wc -l | tr -d \"\n\" \npopen\aio\topts\1\0\2\ahl\fSpecial\rposition\vcenter\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\nalpha\frequire\npcall\v����\4\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\1\2^\0\1\4\0\6\0\r7\1\0\0\16\2\1\0007\1\1\1%\3\2\0>\1\3\2\15\0\1\0T\2\5�4\1\3\0007\1\4\0017\1\5\0017\2\0\0@\1\2\0G\0\1\0\16fnamemodify\afn\bvim\t%.md\nmatch\tname�\5\1\0\a\0\v\0\0204\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�0\0\f�7\2\3\0013\3\t\0003\4\4\0001\5\5\0:\5\6\0042\5\3\0003\6\a\0;\6\1\5:\5\b\4:\4\n\3>\2\2\1G\0\1\0G\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\19name_formatter\0\1\0\23\22left_trunc_marker\b\fsort_by\aid\28show_buffer_close_icons\1\16diagnostics\1\rtab_size\3\16\20separator_style\tthin\24show_tab_indicators\2\25enforce_regular_tabs\1\24right_mouse_command\16bdelete! %d\18close_command\16bdelete! %d\22buffer_close_icon\b\20max_name_length\3\14\15close_icon\b\22show_buffer_icons\2\fnumbers\tnone\24persist_buffer_sort\2\23right_trunc_marker\b\22max_prefix_length\3\n\23left_mouse_command\14buffer %d\27always_show_bufferline\1\20show_close_icon\1\19indicator_icon\b▎\18modified_icon\b●\nsetup\15bufferline\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-buffer"
  },
  ["cmp-calc"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-calc/after/plugin/cmp_calc.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-calc"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp-path"
  },
  cmp_luasnip = {
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua", "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.vim" },
    load_after = {
      LuaSnip = true,
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp_luasnip"
  },
  ["emmet-vim"] = {
    config = { "\27LJ\1\2=\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0\n<C-y>\26user_emmet_leader_key\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/emmet-vim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\1\2'\0\0\1\2\0\0\a+\0\0\0>\0\1\2\15\0\0\0T\1\2�+\0\1\0>\0\1\2H\0\2\0\19�\20�;\0\0\2\1\2\0\n+\0\0\0007\0\0\0\15\0\0\0T\1\2�\a\0\1\0T\1\2�)\1\1\0H\1\2\0)\1\2\0H\1\2\0\r�\5\rfiletype�\2\0\0\t\0\v\00132\0\0\0004\1\0\0004\2\1\0007\2\2\0027\2\3\2'\3\1\0004\4\1\0007\4\2\0047\4\4\4%\5\5\0>\4\2\0=\2\1\0=\1\0\4T\4\19�4\6\1\0007\6\2\0067\6\6\6\16\a\5\0>\6\2\2\t\6\0\0T\6\f�4\6\1\0007\6\2\0067\6\a\6\16\a\5\0>\6\2\2\t\6\0\0T\6\5�4\6\b\0007\6\t\6\16\a\0\0\16\b\5\0>\6\3\1A\4\3\3N\4�4\1\0\0\16\2\0\0>\1\2\4T\4\t�4\6\1\0007\6\2\0067\6\4\6%\a\n\0>\6\2\2\5\5\6\0T\6\2�)\6\2\0H\6\2\0A\4\3\3N\4�G\0\1\0\5\vinsert\ntable\14buflisted\14bufexists\6$\nbufnr\nrange\afn\bvim\vipairs\2�\1\0\0\3\2\14\0\0313\0\1\0+\1\0\0007\1\0\1:\1\2\0+\1\0\0007\1\3\1:\1\4\0+\1\0\0007\1\5\1:\1\6\0+\1\0\0007\1\a\1:\1\b\0+\1\0\0007\1\a\1:\1\t\0+\1\0\0007\1\a\1:\1\n\0+\1\0\0007\1\v\1:\1\f\0+\1\1\0007\1\r\1>\1\1\0026\1\1\0\v\1\0\0T\2\2�+\2\0\0007\1\v\2H\1\2\0\24�\f�\tmode\6R\bred\6v\6\22\6V\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tblueH\0\0\3\2\2\0\b+\0\0\0%\1\0\0+\2\1\0>\2\1\2$\1\2\1>\0\2\1%\0\1\0H\0\2\0\14�\26�\b▊\29hi GalaxyEmptyBar guifg=�\2\0\0\6\3\5\0\0293\0\0\0003\1\1\0+\2\0\0%\3\2\0+\4\1\0>\4\1\2$\3\4\3>\2\2\1+\2\2\0007\2\3\2>\2\1\0026\2\2\0+\3\2\0007\3\3\3>\3\1\0026\3\3\1\14\0\2\0T\4\4�+\4\2\0007\4\3\4>\4\1\2\16\2\4\0\14\0\3\0T\4\1�%\3\4\0\16\4\3\0\16\5\2\0$\4\5\4H\4\2\0\14�\26�\f�\b\tmode\27hi GalaxyViMode guifg=\1\0\a\6\22\t﬏ \6c\tגּ \6V\t﬏ \6R\6 \6n\t \6v\t﬏ \6i\t \1\0\a\6\22\vVISUAL\6c\fCOMMAND\6V\vVISUAL\6R\fREPLACE\6n\vNORMAL\6v\vVISUAL\6i\vINSERT\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\b�\1\0\0\5\1\5\0\25+\0\0\0>\0\1\2\14\0\0\0T\1\2�%\1\0\0H\1\2\0\15\0\0\0T\1\16�4\1\1\0007\1\2\1\16\2\0\0>\1\2\2'\2\28\0\1\2\1\0T\1\t�4\1\1\0007\1\3\1\16\2\0\0'\3\1\0'\4\25\0>\1\4\2%\2\4\0$\1\2\1H\1\2\0H\0\2\0\16�\b...\bsub\blen\vstring\14Undefined\18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a| \30\0\0\1\1\1\0\3+\0\0\0007\0\0\0H\0\2\0\r�\rfiletype\31\0\0\2\1\1\0\5+\0\0\0>\0\1\2%\1\0\0$\0\1\0H\0\2\0\17�\6 �\23\1\0 \0x\0�\0034\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\0034\b\0\0004\t\1\0%\n\6\0>\b\3\0034\n\0\0004\v\1\0%\f\a\0>\n\3\3\14\0\0\0T\f\v�\14\0\2\0T\f\t�\14\0\4\0T\f\a�\14\0\6\0T\f\5�\14\0\b\0T\f\3�\14\0\n\0T\f\1�0\0m�4\f\b\0007\f\t\f4\r\b\0007\r\n\r4\14\b\0007\14\v\0147\15\f\0037\16\r\0057\17\14\a7\18\15\t7\19\16\t7\20\17\t7\21\18\v1\22\19\0001\23\20\0007\24\21\0011\25\22\0001\26\23\0003\27\25\0:\27\24\0037\27\26\0153\28\"\0003\29\28\0001\30\27\0:\30\29\0292\30\3\0007\31\30\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29#\28;\28\1\0277\27\26\0153\28&\0003\29%\0001\30$\0:\30\29\0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29'\28;\28\2\0277\27\26\0153\28*\0003\29(\0:\18)\0292\30\3\0;\21\1\0307\31\31\24;\31\2\30:\30 \29:\29+\28;\28\3\0277\27\26\0153\28.\0003\29,\0:\18)\0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29/\28;\28\4\0277\27\26\0153\0283\0003\0290\0:\22)\0291\0301\0:\30\29\0292\30\3\0007\0312\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\0294\28;\28\5\0277\27\26\0153\0287\0003\0295\0:\22)\0291\0306\0:\30\29\0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\0298\28;\28\6\0277\27\26\0153\28;\0003\0299\0:\22)\0292\30\3\0007\31:\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29<\28;\28\a\0277\27\26\0153\28>\0003\29=\0:\22)\0292\30\3\0007\0312\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29?\28;\28\b\0277\27\26\0153\28A\0003\29@\0:\22)\0292\30\3\0007\31\30\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29B\28;\28\t\0277\27\26\0153\28E\0003\29C\0:\22)\0292\30\3\0007\31D\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29F\28;\28\n\0277\27\26\0153\28H\0003\29G\0002\30\3\0007\31\30\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29I\28;\28\v\0277\27\26\0153\28K\0003\29J\0002\30\3\0007\0312\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29L\28;\28\f\0277\27\26\0153\28O\0003\29M\0002\30\3\0007\31N\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29P\28;\28\r\0277\27\26\0153\28S\0003\29Q\0002\30\3\0007\31R\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29T\28;\28\14\0277\27U\0153\28W\0003\29V\0:\19)\0292\30\3\0007\31:\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29X\28;\28\1\0277\27U\0153\28\\\0003\29Y\0:\25)\0291\30Z\0:\30\29\0292\30\3\0007\31[\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29]\28;\28\2\0277\27U\0153\28`\0003\29^\0:\19)\0292\30\3\0007\31_\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29a\28;\28\3\0277\27U\0153\28d\0003\29b\0:\19)\0291\30c\0:\30\29\0292\30\3\0007\31R\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29e\28;\28\4\0277\27U\0153\28g\0003\29f\0:\19)\0292\30\3\0007\31N\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29h\28;\28\5\0277\27U\0153\28j\0003\29i\0:\19)\0292\30\3\0007\31\30\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29k\28;\28\6\0277\27U\0153\28n\0003\29l\0:\19)\0291\30m\0:\30\29\0292\30\3\0007\31\30\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29o\28;\28\a\0277\27p\0153\28r\0003\29q\0:\23)\0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29s\28;\28\1\0277\27t\0153\28v\0003\29u\0:\23)\0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29w\28;\28\1\0270\0\0�G\0\1\0G\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\20short_line_left\14ScrollBar\1\0\0\0\1\0\0\fPerCent\1\0\0\1\0\3\14separator\b | \rprovider\16LinePercent\ticon\b\rLineInfo\1\0\0\1\0\3\14separator\b | \rprovider\15LineColumn\ticon\t \15FileFormat\1\0\0\0\1\0\2\14separator\b | \ticon\t \17GetLspClient\1\0\0\vyellow\1\0\2\ticon\t \rprovider\17GetLspClient\14Separator\1\0\0\nwhite\0\1\0\1\14separator\6 \17BufferNumber\1\0\0\1\0\2\ticon\t﬘ \rprovider\17BufferNumber\nright\19DiagnosticHint\1\0\0\tblue\1\0\2\ticon\t \rprovider\19DiagnosticHint\19DiagnosticInfo\1\0\0\fmagenta\1\0\2\ticon\t \rprovider\19DiagnosticInfo\19DiagnosticWarn\1\0\0\1\0\2\ticon\t \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\0\2\ticon\t \rprovider\20DiagnosticError\nSpace\1\0\0\tcyan\1\0\2\14separator\6 \rprovider\15WhiteSpace\15DiffRemove\1\0\0\1\0\2\ticon\n  \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\2\ticon\n  \rprovider\17DiffModified\fDiffAdd\1\0\0\ngreen\1\0\2\ticon\n  \rprovider\fDiffAdd\14GitBranch\1\0\0\0\1\0\1\14separator\6 \fGitIcon\1\0\0\vorange\0\1\0\1\14separator\6 \rFileName\1\0\0\afg\1\0\2\14separator\6 \rprovider\rFileName\rFileIcon\1\0\0\14condition\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\0\1\14separator\a  \0\rEmptyBar\1\0\0\24separator_highlight\14highlight\abg\bred\rprovider\1\0\1\14separator\6 \0\tleft\1\3\0\0\rNvimTree\vpacker\20short_line_list\0\0\vcolors\0\0\24get_file_icon_color\24check_git_workspace\18hide_in_width\21buffer_not_empty\23scrollbar_instance\19get_git_branch\fsection\bcmd\abo\afn\bvim!galaxyline.provider_fileinfo\25galaxyline.condition#galaxyline.provider_extensions\28galaxyline.provider_vcs\15galaxyline\22colors.highlights\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2�\4\0\0\6\0\19\0\0254\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\6\0003\5\5\0:\5\a\0043\5\b\0:\5\t\0043\5\n\0:\5\v\0043\5\f\0:\5\r\0043\5\14\0:\5\15\4:\4\16\0033\4\17\0:\4\18\3>\2\2\1G\0\1\0\16watch_index\1\0\2\rinterval\3�\a\17follow_files\2\nsigns\14topdelete\1\0\3\ttext\b‾\nnumhl\21GitSignsDeleteNr\ahl\15DiffDelete\vdelete\1\0\3\ttext\6_\nnumhl\21GitSignsDeleteNr\ahl\15DiffDelete\17changedelete\1\0\3\ttext\6~\nnumhl\21GitSignsChangeNr\ahl\15DiffChange\vchange\1\0\3\ttext\b│\nnumhl\21GitSignsChangeNr\ahl\15DiffChange\badd\1\0\0\1\0\3\ttext\b│\nnumhl\18GitSignsAddNr\ahl\fDiffAdd\1\0\a\20update_debounce\3d\15debug_mode\1\nnumhl\1\18sign_priority\3\6\15signcolumn\1\23current_line_blame\1\14word_diff\1\nsetup\rgitsigns\frequire\npcall\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\1\2�\5\0\0\5\0\r\0\0194\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\5\0:\4\6\0033\4\a\0:\4\b\0033\4\t\0:\4\n\0033\4\v\0:\4\f\3>\2\2\1G\0\1\0\23rename_action_keys\1\0\2\tquit\n<C-c>\texec\t<cr>\21code_action_keys\1\0\2\tquit\6q\texec\t<cr>\23finder_action_keys\1\0\6\tquit\6q\16scroll_down\n<C-j>\vvsplit\n<C-v>\topen\t<cr>\14scroll_up\n<C-k>\nsplit\n<C-x>\23code_action_prompt\1\0\4\18sign_priority\3\20\17virtual_text\2\tsign\2\venable\2\1\0\r\14warn_sign\t \28definition_preview_icon\t \26finder_reference_icon\t \17border_style\vsingle\25rename_prompt_prefix\b➤\26dianostic_header_icon\t \14hint_sign\t \15error_sign\t \15infor_sign\t \29use_saga_diagnostic_sign\2\22max_preview_lines\3\n\21code_action_icon\t \27finder_definition_icon\t \18init_lsp_saga\flspsaga\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    config = { "\27LJ\1\2R\0\0\2\0\4\0\0054\0\0\0007\0\1\0003\1\3\0:\1\2\0G\0\1\0\1\4\0\0\tyapf\rautopep8\nblack\29neoformat_enabled_python\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/neoformat"
  },
  ["nvim-autopairs"] = {
    config = { '\27LJ\1\2�\1\0\0\6\0\6\0\0194\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\0\0T\4\3�\14\0\2\0T\4\1�G\0\1\0007\4\4\1>\4\1\0017\4\4\0033\5\5\0>\4\2\1G\0\1\0\1\0\3\17map_complete\2\16auto_select\2\vmap_cr\2\nsetup"nvim-autopairs.completion.cmp\19nvim-autopairs\frequire\npcall\0' },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lsp", "nvim-autopairs", "cmp-nvim-lua", "cmp-buffer", "cmp_luasnip", "cmp-path", "cmp-calc" },
    config = { "\27LJ\1\2�\1\0\0\5\0\b\2\0274\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\2\21\0\0\0\b\0\1\0T\1\17�4\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\2\16\2\1\0007\1\5\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\6\1%\3\a\0>\1\3\2T\2\3�)\1\1\0T\2\1�)\1\2\0H\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0<\0\1\6\1\1\0\a+\1\0\0007\1\0\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\b�\27nvim_replace_termcodes\v\0\1\1\0\0\0\1H\0\2\0-\0\1\3\1\2\0\5+\1\0\0007\1\0\0017\2\1\0>\1\2\1G\0\1\0\a�\tbody\15lsp_expand\v\0\1\1\0\0\0\1H\0\2\0�\2\0\1\4\4\n\1*+\1\0\0007\1\0\1>\1\1\2\t\1\0\0T\1\b�+\1\0\0007\1\1\1+\2\1\0%\3\2\0>\2\2\2%\3\3\0>\1\3\1T\1\28�+\1\2\0007\1\4\1>\1\1\2\15\0\1\0T\2\b�+\1\0\0007\1\1\1+\2\1\0%\3\5\0>\2\2\2%\3\6\0>\1\3\1T\1\15�+\1\3\0>\1\1\2\15\0\1\0T\2\t�4\1\a\0007\1\b\0017\1\1\1+\2\1\0%\3\t\0>\2\2\2%\3\3\0>\1\3\1T\1\2�\16\1\0\0>\1\1\1G\0\1\0\t�\r�\a�\f�\n<Tab>\afn\bvim\5!<Plug>luasnip-expand-or-jump\23expand_or_jumpable\6n\n<C-n>\rfeedkeys\15pumvisible\2�\1\0\1\4\3\a\1\30+\1\0\0007\1\0\1>\1\1\2\t\1\0\0T\1\b�+\1\0\0007\1\1\1+\2\1\0%\3\2\0>\2\2\2%\3\3\0>\1\3\1T\1\16�+\1\2\0007\1\4\1'\2��>\1\2\2\15\0\1\0T\2\b�+\1\0\0007\1\1\1+\2\1\0%\3\5\0>\2\2\2%\3\6\0>\1\3\1T\1\2�\16\1\0\0>\1\1\1G\0\1\0\t�\r�\a�\5\28<Plug>luasnip-jump-prev\rjumpable\6n\n<C-p>\rfeedkeys\15pumvisible\2�\2\0\2\4\1\a\0\18+\2\0\0007\3\0\0016\2\3\2:\2\0\0013\2\2\0007\3\3\0007\3\4\0036\2\3\2:\2\1\0013\2\6\0007\3\3\0007\3\4\0036\2\3\2\14\0\2\0T\3\1�'\2\0\0:\2\5\1H\1\2\0\v�\1\0\3\tpath\3\1\rnvim_lsp\3\0\vbuffer\3\1\bdup\tname\vsource\1\0\b\nemoji\f(Emoji)\16cmp_tabnine\14(Tabnine)\rnvim_lsp\n(LSP)\vbuffer\r(Buffer)\nvsnip\14(Snippet)\tcalc\v(Calc)\fluasnip\14(Snippet)\tpath\v(Path)\tmenu\tkind�\14\1\0\21\0U\3�\0014\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\3\14\0\0\0T\b\a�\14\0\6\0T\b\5�\14\0\2\0T\b\3�\14\0\4\0T\b\1�0\0��4\b\6\0007\b\a\b4\t\6\0007\t\b\t'\n(\0003\v\t\0001\f\n\0001\r\v\0007\14\f\0013\15\19\0003\16\15\0002\17\3\0007\18\2\0057\18\r\0187\18\14\18;\18\1\17:\17\16\0161\17\17\0:\17\18\16:\16\20\0153\16\22\0001\17\21\0:\17\23\16:\16\24\0157\16\2\0057\16\25\0167\16\26\16:\16\27\0153\16\29\0003\17\28\0:\17\30\0164\17\31\0007\17 \17\22\18\0\n4\19\6\0007\19!\0197\19\"\19\22\20\0\n\22\20\1\20\23\20\2\20!\19\20\19 \18\19\18>\17\2\2:\17#\0164\17\31\0007\17 \0174\18\6\0007\18!\0187\18$\18!\18\18\n \18\18\n>\17\2\2:\17%\16:\16&\0153\16)\0007\17\2\0057\17'\0177\17(\17:\17*\0161\17+\0:\17,\16:\16-\0153\16.\0002\17\b\0007\18/\3;\18\1\0177\0180\3;\18\2\0177\0181\3;\18\3\0177\0182\3;\18\4\0177\0183\3;\18\5\0177\0184\3;\18\6\0177\0185\3;\18\a\17:\0176\16:\0167\0153\16:\0007\0178\0017\0179\17>\17\1\2:\17;\0167\0178\0017\17<\0173\18>\0007\19'\0017\19=\19:\19?\18>\17\2\2:\17@\0167\0178\0011\18A\0003\19B\0>\17\3\2:\17C\0167\0178\0011\18D\0003\19E\0>\17\3\2:\17F\16:\0168\0153\16H\0001\17G\0:\17I\16:\16J\0153\16K\0:\16L\0152\16\b\0003\17M\0;\17\1\0163\17N\0;\17\2\0163\17O\0;\17\3\0163\17P\0;\17\4\0163\17Q\0;\17\5\0163\17R\0;\17\6\0163\17S\0;\17\a\16:\16T\15>\14\2\0010\0\0�G\0\1\0G\0\1\0\fsources\1\0\1\tname\15treesitter\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\17experimental\1\0\1\15ghost_text\1\15formatting\vformat\1\0\0\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\fconfirm\14<C-Space>\1\0\0\rcomplete\fmapping\fsorting\16comparators\norder\vlength\14sort_text\tkind\nscore\nexact\voffset\1\0\1\20priority_weight\3\2\17confirmation\26get_commit_characters\0\21default_behavior\1\0\0\vInsert\20ConfirmBehavior\18documentation\14maxheight\nlines\rmaxwidth\fcolumns\6o\nfloor\tmath\vborder\1\0\1\17winhighlightDNormalFloat:CmpDocumentation,FloatBorder:CmpDocumentationBorder\1\t\0\0\5\5\5\6 \5\5\5\6 \14preselect\tItem\18PreselectMode\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\27get_trigger_characters\0\17autocomplete\1\0\3\20keyword_pattern/\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\w*\\%(-\\w*\\)*\\)\19keyword_length\3\1\16completeopt#menu,menuone,noselect,noinsert\16TextChanged\17TriggerEvent\nsetup\0\0\1\0\25\tText\b\vMethod\b\rOperator\b\14Interface\b\nColor\b\vModule\b\nEvent\b\rFunction\b\16Constructor\b\15EnumMember\b\rProperty\b\rConstant\b\vStruct\b\rVariable\b\fSnippet\b\vFolder\b\tUnit\b塞\nValue\b\18TypeParameter\b\tFile\b\nClass\b\nField\b\tEnum\b練\fKeyword\t \14Reference\b\afn\bapi\bvim\fluasnip\14cmp.types\23cmp.config.compare\bcmp\frequire\npcall\4 \18\0" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\2�\1\0\0\5\0\6\0\f4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\5\0>\2\3\1G\0\1\0\1\0\t\vhsl_fn\1\tmode\15background\nnames\1\bcss\2\vRRGGBB\2\vrgb_fn\1\rRRGGBBAA\1\vcss_fn\1\bRGB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\npcall\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\1\2�\1\0\0\4\0\5\0\v4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0>\2\2\1G\0\1\0\1\0\5\17line_mapping\15<leader>cl\20create_mappings\2\19marker_padding\2\21operator_mapping\14<leader>c\18comment_empty\1\nsetup\17nvim_comment\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim", "lspsaga.nvim" },
    loaded = true,
    only_config = true
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeOpen" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "playground" },
    loaded = true,
    only_config = true
  },
  ["nvim-web-devicons"] = {
    after = { "galaxyline.nvim", "bufferline.nvim", "nvim-tree.lua" },
    config = { "\27LJ\1\2�\t\0\0\n\0?\0p4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\2\0T\4\3�\14\0\0\0T\4\1�G\0\1\0007\4\4\0017\5\5\0033\6=\0003\a\t\0003\b\6\0007\t\a\4:\t\b\b:\b\n\a3\b\v\0007\t\a\4:\t\b\b:\b\f\a3\b\r\0007\t\14\4:\t\b\b:\b\15\a3\b\16\0007\t\14\4:\t\b\b:\b\17\a3\b\18\0007\t\19\4:\t\b\b:\b\20\a3\b\21\0007\t\22\4:\t\b\b:\b\23\a3\b\24\0007\t\22\4:\t\b\b:\b\25\a3\b\26\0007\t\19\4:\t\b\b:\b\27\a3\b\28\0007\t\29\4:\t\b\b:\b\30\a3\b\31\0007\t\19\4:\t\b\b:\b \a3\b!\0007\t\a\4:\t\b\b:\b\"\a3\b#\0007\t$\4:\t\b\b:\b%\a3\b&\0007\t$\4:\t\b\b:\b'\a3\b(\0007\t$\4:\t\b\b:\b)\a3\b*\0007\t\22\4:\t\b\b:\b+\a3\b,\0007\t\14\4:\t\b\b:\b-\a3\b.\0007\t\a\4:\t\b\b:\b/\a3\b0\0007\t1\4:\t\b\b:\b2\a3\b3\0007\t\19\4:\t\b\b:\b4\a3\b5\0007\t\29\4:\t\b\b:\b6\a3\b7\0007\t1\4:\t\b\b:\b8\a3\b9\0007\t\29\4:\t\b\b:\b:\a3\b;\0007\t\29\4:\t\b\b:\b<\a:\a>\6>\5\2\1G\0\1\0\roverride\1\0\0\bzip\1\0\2\ticon\b\tname\bzip\axz\1\0\2\ticon\b\tname\axz\bvue\1\0\2\ticon\b﵂\tname\bvue\brpm\1\0\2\ticon\b\tname\brpm\arb\1\0\2\ticon\b\tname\arb\ats\ngreen\1\0\2\ticon\b\tname\ats\ttoml\1\0\2\ticon\b\tname\ttoml\apy\1\0\2\ticon\b\tname\apy\bpng\1\0\2\ticon\b\tname\bpng\bout\1\0\2\ticon\b\tname\bout\bmp4\1\0\2\ticon\b\tname\bmp4\bmp3\afg\1\0\2\ticon\b\tname\bmp3\blua\1\0\2\ticon\b\tname\blua\tlock\1\0\2\ticon\b\tname\tlock\akt\vorange\1\0\2\ticon\t󱈙\tname\akt\ajs\1\0\2\ticon\b\tname\ajs\bjpg\1\0\2\ticon\b\tname\bjpg\tjpeg\fmagenta\1\0\2\ticon\b\tname\tjpeg\thtml\bred\1\0\2\ticon\b\tname\thtml\15Dockerfile\1\0\2\ticon\b\tname\15Dockerfile\bdeb\tcyan\1\0\2\ticon\b\tname\bdeb\bcss\1\0\2\ticon\b\tname\bcss\6c\1\0\0\ncolor\tblue\1\0\2\ticon\b\tname\6c\nsetup\vcolors\22nvim-web-devicons\22colors.highlights\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  playground = {
    commands = { "TSPlaygroundToggle" },
    load_after = {},
    loaded = false,
    needs_bufread = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\2�\b\0\0\14\0+\0F4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\3\14\0\0\0T\b\a�\14\0\2\0T\b\5�\14\0\4\0T\b\3�\14\0\6\0T\b\1�G\0\1\0007\b\6\0013\t)\0003\n\f\0003\v\n\0003\f\b\0007\r\a\3:\r\t\f:\f\v\v:\v\r\n3\v\14\0:\v\15\n3\v\16\0003\f\17\0:\f\18\v3\f\19\0:\f\20\v:\v\21\n7\v\22\5:\v\23\n2\v\0\0:\v\24\n7\v\25\5:\v\26\n2\v\0\0:\v\27\n3\v\28\0:\v\29\n2\v\0\0:\v\30\n3\v\31\0:\v \n7\v!\a7\v\"\v:\v#\n7\v$\a7\v\"\v:\v%\n7\v&\a7\v\"\v:\v'\n7\v(\a:\v(\n:\n*\t>\b\2\1G\0\1\0\rdefaults\1\0\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\fset_env\1\0\1\14COLORTERM\14truecolor\17path_display\16borderchars\1\t\0\0\b─\b│\b─\b│\b┌\b┐\b┘\b└\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fzy_sorter\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\1\vmirror\1\1\0\2\20prompt_position\btop\nwidth\4\0����\3\22vimgrep_arguments\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\rmappings\1\0\v\20layout_strategy\15horizontal\ruse_less\2\23selection_strategy\nreset\17entry_prefix\a  \21sorting_strategy\14ascending\18prompt_prefix\n  \17initial_mode\vinsert\rwinblend\3\n\19color_devicons\2\21disable_devicons\1\20selection_caret\n  \6n\1\0\0\6q\1\0\0\nclose\nsetup\25telescope.previewers\22telescope.sorters\22telescope.actions\14telescope\frequire\npcall\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    after = { "nvim-web-devicons" },
    loaded = true,
    only_config = true
  },
  ["vim-closetag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/vim-closetag"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "Gdiff", "Gdiffsplit", "Gvdiffsplit", "Gwrite", "Gw" },
    loaded = false,
    needs_bufread = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  },
  ["vim-multiple-cursors"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/vim-multiple-cursors"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
try_loadstring("\27LJ\1\2B\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\14telescope\21plugins.mappings\frequire\0", "setup", "telescope.nvim")
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: vim-closetag
time([[Setup for vim-closetag]], true)
try_loadstring("\27LJ\1\2�\1\0\0\2\0\a\0\t4\0\0\0007\0\1\0%\1\3\0:\1\2\0%\1\5\0:\1\4\0'\1\1\0:\1\6\0G\0\1\0%closetag_emptyTags_caseSensitive\31*.xhtml,*.jsx,*.tsx,*.vuex\29closetag_xhtml_filenames+*.html,*.xhtml,*.phtml,*.js,*.ts,*.vue\23closetag_filenames\6g\bvim\0", "setup", "vim-closetag")
time([[Setup for vim-closetag]], false)
-- Setup for: lspsaga.nvim
time([[Setup for lspsaga.nvim]], true)
try_loadstring("\27LJ\1\2=\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\tsaga\21plugins.mappings\frequire\0", "setup", "lspsaga.nvim")
time([[Setup for lspsaga.nvim]], false)
-- Setup for: bufferline.nvim
time([[Setup for bufferline.nvim]], true)
try_loadstring("\27LJ\1\2C\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\15bufferline\21plugins.mappings\frequire\0", "setup", "bufferline.nvim")
time([[Setup for bufferline.nvim]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\1\2@\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0%plugins.configs.indent_blankline\frequire\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2f\0\0\2\0\4\0\t4\0\0\0%\1\1\0>\0\2\0014\0\0\0%\1\2\0>\0\2\0027\0\3\0>\0\1\1G\0\1\0\rnvimtree\21plugins.mappings\29plugins.configs.nvimtree\frequire\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
-- Setup for: vim-multiple-cursors
time([[Setup for vim-multiple-cursors]], true)
try_loadstring("\27LJ\1\2�\2\0\0\2\0\14\0\0174\0\0\0007\0\1\0'\1\0\0:\1\2\0%\1\4\0:\1\3\0%\1\6\0:\1\5\0%\1\4\0:\1\a\0%\1\t\0:\1\b\0%\1\v\0:\1\n\0%\1\r\0:\1\f\0G\0\1\0\n<Esc>\26multi_cursor_quit_key\n<C-x>\26multi_cursor_skip_key\n<C-p>\26multi_cursor_prev_key\26multi_cursor_next_key\n<A-s>%multi_cursor_select_all_word_key\n<C-s> multi_cursor_start_word_key%multi_cursor_use_default_mapping\6g\bvim\0", "setup", "vim-multiple-cursors")
time([[Setup for vim-multiple-cursors]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\1\0023\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\tinit\vcolors\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\2�\4\0\0\6\0\19\0\0254\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\6\0003\5\5\0:\5\a\0043\5\b\0:\5\t\0043\5\n\0:\5\v\0043\5\f\0:\5\r\0043\5\14\0:\5\15\4:\4\16\0033\4\17\0:\4\18\3>\2\2\1G\0\1\0\16watch_index\1\0\2\rinterval\3�\a\17follow_files\2\nsigns\14topdelete\1\0\3\ttext\b‾\nnumhl\21GitSignsDeleteNr\ahl\15DiffDelete\vdelete\1\0\3\ttext\6_\nnumhl\21GitSignsDeleteNr\ahl\15DiffDelete\17changedelete\1\0\3\ttext\6~\nnumhl\21GitSignsChangeNr\ahl\15DiffChange\vchange\1\0\3\ttext\b│\nnumhl\21GitSignsChangeNr\ahl\15DiffChange\badd\1\0\0\1\0\3\ttext\b│\nnumhl\18GitSignsAddNr\ahl\fDiffAdd\1\0\a\20update_debounce\3d\15debug_mode\1\nnumhl\1\18sign_priority\3\6\15signcolumn\1\23current_line_blame\1\14word_diff\1\nsetup\rgitsigns\frequire\npcall\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\1\2�\1\0\0\5\0\6\0\f4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\5\0>\2\3\1G\0\1\0\1\0\t\vhsl_fn\1\tmode\15background\nnames\1\bcss\2\vRRGGBB\2\vrgb_fn\1\rRRGGBBAA\1\vcss_fn\1\bRGB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\npcall\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2�\b\0\0\14\0+\0F4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\3\14\0\0\0T\b\a�\14\0\2\0T\b\5�\14\0\4\0T\b\3�\14\0\6\0T\b\1�G\0\1\0007\b\6\0013\t)\0003\n\f\0003\v\n\0003\f\b\0007\r\a\3:\r\t\f:\f\v\v:\v\r\n3\v\14\0:\v\15\n3\v\16\0003\f\17\0:\f\18\v3\f\19\0:\f\20\v:\v\21\n7\v\22\5:\v\23\n2\v\0\0:\v\24\n7\v\25\5:\v\26\n2\v\0\0:\v\27\n3\v\28\0:\v\29\n2\v\0\0:\v\30\n3\v\31\0:\v \n7\v!\a7\v\"\v:\v#\n7\v$\a7\v\"\v:\v%\n7\v&\a7\v\"\v:\v'\n7\v(\a:\v(\n:\n*\t>\b\2\1G\0\1\0\rdefaults\1\0\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\fset_env\1\0\1\14COLORTERM\14truecolor\17path_display\16borderchars\1\t\0\0\b─\b│\b─\b│\b┌\b┐\b┘\b└\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fzy_sorter\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\1\vmirror\1\1\0\2\20prompt_position\btop\nwidth\4\0����\3\22vimgrep_arguments\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\rmappings\1\0\v\20layout_strategy\15horizontal\ruse_less\2\23selection_strategy\nreset\17entry_prefix\a  \21sorting_strategy\14ascending\18prompt_prefix\n  \17initial_mode\vinsert\rwinblend\3\n\19color_devicons\2\21disable_devicons\1\20selection_caret\n  \6n\1\0\0\6q\1\0\0\nclose\nsetup\25telescope.previewers\22telescope.sorters\22telescope.actions\14telescope\frequire\npcall\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\0027\2\0\3\2\1\0\6+\0\0\0007\0\0\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1�\24nvim_buf_set_keymap7\2\0\3\2\1\0\6+\0\0\0007\0\0\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1�\24nvim_buf_set_option�\2\1\2\n\1\14\0\0244\2\0\0%\3\1\0>\2\2\0027\2\2\0023\3\3\0003\4\4\0:\4\5\3\16\4\1\0>\2\3\0011\2\6\0001\3\a\0003\4\b\0\16\5\3\0%\6\t\0%\a\n\0>\5\3\1\16\5\2\0%\6\v\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\0010\0\0�G\0\1\0\5�*<cmd>lua vim.lsp.buf.definition()<cr>\15<leader>gd\6n\27v:lua.vim.lsp.omnifunc\romnifunc\1\0\2\vsilent\2\fnoremap\2\0\0\17handler_opts\1\0\3\16use_lspsaga\2\16hint_prefix\fU+1f608\vborder\vsingle\1\0\1\tbind\2\14on_attach\18lsp_signature\frequire�\1\0\1\5\1\6\0\0233\1\0\0+\2\0\0007\2\1\0024\3\2\0\16\4\1\0>\3\2\0=\2\0\2\16\3\0\0>\2\2\2\14\0\2\0T\3\v�+\2\0\0007\2\3\2\16\3\0\0>\2\2\2\14\0\2\0T\3\5�+\2\0\0007\2\4\0027\2\5\2\16\3\0\0>\2\2\2H\2\2\0\3�\fdirname\tpath\22find_git_ancestor\vunpack\17root_pattern\1\5\0\0\17package.json\18tsconfig.json\18jsconfig.json\t.git�\1\0\1\5\1\6\0\0233\1\0\0+\2\0\0007\2\1\0024\3\2\0\16\4\1\0>\3\2\0=\2\0\2\16\3\0\0>\2\2\2\14\0\2\0T\3\v�+\2\0\0007\2\3\2\16\3\0\0>\2\2\2\14\0\2\0T\3\5�+\2\0\0007\2\4\0027\2\5\2\16\3\0\0>\2\2\2H\2\2\0\3�\fdirname\tpath\22find_git_ancestor\vunpack\17root_pattern\1\a\0\0\19pyproject.toml\rsetup.py\14setup.cfg\21requirements.txt\fPipfile\23pyrightconfig.json�\1\0\1\5\1\6\0\0233\1\0\0+\2\0\0007\2\1\0024\3\2\0\16\4\1\0>\3\2\0=\2\0\2\16\3\0\0>\2\2\2\14\0\2\0T\3\v�+\2\0\0007\2\3\2\16\3\0\0>\2\2\2\14\0\2\0T\3\5�+\2\0\0007\2\4\0027\2\5\2\16\3\0\0>\2\2\2H\2\2\0\3�\fdirname\tpath\22find_git_ancestor\vunpack\17root_pattern\1\4\0\0\26compile_commands.json\22compile_flags.txt\t.git�\1\0\1\5\1\6\0\0233\1\0\0+\2\0\0007\2\1\0024\3\2\0\16\4\1\0>\3\2\0=\2\0\2\16\3\0\0>\2\2\2\14\0\2\0T\3\v�+\2\0\0007\2\3\2\16\3\0\0>\2\2\2\14\0\2\0T\3\5�+\2\0\0007\2\4\0027\2\5\2\16\3\0\0>\2\2\2H\2\2\0\3�\fdirname\tpath\22find_git_ancestor\vunpack\17root_pattern\1\6\0\0\14build.xml\fpom.xml\17build.gradle\20settings.gradle\24settings.gradle.kts�\1\0\1\3\1\5\0\20+\1\0\0007\1\0\1%\2\1\0>\1\2\2\16\2\0\0>\1\2\2\14\0\1\0T\2\v�+\1\0\0007\1\2\1\16\2\0\0>\1\2\2\14\0\1\0T\2\5�+\1\0\0007\1\3\0017\1\4\1\16\2\0\0>\1\2\2H\1\2\0\3�\fdirname\tpath\22find_git_ancestor\t.git\17root_pattern�\1\0\1\5\1\6\0\0233\1\0\0+\2\0\0007\2\1\0024\3\2\0\16\4\1\0>\3\2\0=\2\0\2\16\3\0\0>\2\2\2\14\0\2\0T\3\v�+\2\0\0007\2\3\2\16\3\0\0>\2\2\2\14\0\2\0T\3\5�+\2\0\0007\2\4\0027\2\5\2\16\3\0\0>\2\2\2H\2\2\0\3�\fdirname\tpath\22find_git_ancestor\vunpack\17root_pattern\1\5\0\0\17package.json\18tsconfig.json\18jsconfig.json\t.git�\1\0\1\5\1\6\0\0233\1\0\0+\2\0\0007\2\1\0024\3\2\0\16\4\1\0>\3\2\0=\2\0\2\16\3\0\0>\2\2\2\14\0\2\0T\3\v�+\2\0\0007\2\3\2\16\3\0\0>\2\2\2\14\0\2\0T\3\5�+\2\0\0007\2\4\0027\2\5\2\16\3\0\0>\2\2\2H\2\2\0\3�\fdirname\tpath\22find_git_ancestor\vunpack\17root_pattern\1\3\0\0\n*.yml\v*.yaml�\1\0\1\4\1\6\0\21+\1\0\0007\1\0\1%\2\1\0%\3\2\0>\1\3\2\16\2\0\0>\1\2\2\14\0\1\0T\2\v�+\1\0\0007\1\3\1\16\2\0\0>\1\2\2\14\0\1\0T\2\5�+\1\0\0007\1\4\0017\1\5\1\16\2\0\0>\1\2\2H\1\2\0\3�\fdirname\tpath\22find_git_ancestor\t.git\17package.json\17root_pattern�\1\0\1\4\1\6\0\21+\1\0\0007\1\0\1%\2\1\0%\3\2\0>\1\3\2\16\2\0\0>\1\2\2\14\0\1\0T\2\v�+\1\0\0007\1\3\1\16\2\0\0>\1\2\2\14\0\1\0T\2\5�+\1\0\0007\1\4\0017\1\5\1\16\2\0\0>\1\2\2H\1\2\0\3�\fdirname\tpath\22find_git_ancestor\t.git\17package.json\17root_pattern�\28\1\0\17\0�\1\0�\0024\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\0\0T\4\3�\14\0\2\0T\4\1�0\0004�4\4\4\0007\4\5\0044\5\4\0007\5\6\0057\6\a\0047\a\t\0047\b\n\0047\b\v\b3\t\f\0003\n\r\0:\n\14\t>\a\3\2:\a\b\0061\6\15\0007\a\16\0047\a\17\a>\a\1\0027\b\18\a7\b\19\b7\b\20\b3\t\23\0003\n\22\0:\n\24\t:\t\21\b7\b\18\a7\b\19\b7\b\20\b3\t\26\0:\t\25\b7\b\18\a7\b\19\b7\b\20\b)\t\2\0:\t\27\b7\b\18\a7\b\19\b7\b\20\b)\t\2\0:\t\28\b7\b\18\a7\b\19\b7\b\20\b)\t\2\0:\t\29\b7\b\18\a7\b\19\b7\b\20\b)\t\2\0:\t\30\b7\b\18\a7\b\19\b7\b\20\b)\t\2\0:\t\31\b7\b\18\a7\b\19\b7\b\20\b)\t\2\0:\t \b7\b\18\a7\b\19\b7\b\20\b3\t#\0003\n\"\0:\n$\t:\t!\b7\b\18\a7\b\19\b7\b\20\b3\t&\0003\n%\0:\n\24\t:\t\21\b3\b'\0003\t(\0:\t)\b7\t*\0017\t+\t3\n,\0:\6-\n:\a.\n3\v/\0:\v0\n3\v1\0:\v2\n1\v3\0:\v4\n3\v<\0003\f5\0002\r\3\0;\b\1\r:\r6\f2\r\3\0;\b\1\r:\r7\f2\r\3\0;\b\1\r:\r8\f2\r\3\0;\b\1\r:\r9\f2\r\3\0;\b\1\r:\r:\f2\r\3\0;\b\1\r:\r;\f:\f=\v:\v>\n3\v?\0:\v@\n>\t\2\0017\tA\0017\t+\t3\nB\0:\6-\n:\a.\n3\vC\0:\v0\n3\vD\0:\v@\n1\vE\0:\v4\n3\vI\0003\fG\0003\rF\0:\rH\f:\fJ\v:\v>\n>\t\2\0017\tK\0017\t+\t3\nL\0:\6-\n:\a.\n3\vM\0:\v0\n3\vN\0:\v@\n1\vO\0:\v4\n>\t\2\0017\tP\0017\t+\t3\nQ\0:\6-\n:\a.\n3\vR\0:\v0\n3\vS\0:\v@\n1\vT\0:\v4\n>\t\2\0017\tU\0017\t+\t3\n\\\0003\vZ\0004\f\4\0007\fV\f7\fW\f%\rX\0>\f\2\2%\rY\0$\f\r\f;\f\1\v4\f\4\0007\fV\f7\fW\f%\rX\0>\f\2\2%\r[\0$\f\r\f;\f\3\v:\v0\n3\vn\0003\fb\0003\r]\0004\14\4\0007\14^\0144\15_\0007\15`\15%\16a\0>\14\3\2:\14`\r:\rc\f3\rd\0003\14e\0:\14f\r:\rg\f3\rk\0002\14\0\0164\15\4\0007\15V\0157\15W\15%\16h\0>\15\2\2)\16\2\0009\16\15\0144\15\4\0007\15V\0157\15W\15%\16i\0>\15\2\2)\16\2\0009\16\15\0144\15\4\0007\15V\0157\15W\15%\16j\0>\15\2\2)\16\2\0009\16\15\14:\14l\r:\rm\f:\fo\v:\v>\n>\t\2\0017\tp\0017\t+\t3\nq\0:\6-\n:\a.\n3\vr\0:\v0\n3\vs\0:\vt\n3\vu\0:\v@\n1\vv\0:\v4\n>\t\2\0017\tw\0017\t+\t3\nx\0:\6-\n:\a.\n3\vy\0:\v0\n3\vz\0:\v@\n3\v{\0:\v2\n1\v|\0:\v4\n>\t\2\0017\t}\0017\t+\t3\n~\0:\6-\n:\a.\n3\v\0:\v0\n3\v�\0:\v@\n1\v�\0:\v4\n3\v�\0003\f�\0003\r�\0:\r�\f3\r�\0:\r�\f3\r�\0:\rJ\f:\f�\v:\v>\n>\t\2\0017\t�\0017\t+\t3\n�\0:\6-\n:\a.\n3\v�\0:\v0\n3\v�\0:\v@\n3\v�\0003\f�\0:\f�\v3\f�\0:\f�\v:\v2\n1\v�\0:\v4\n>\t\2\0017\t�\0017\t+\t3\n�\0:\6-\n:\a.\n3\v�\0:\v0\n3\v�\0:\v@\n1\v�\0:\v4\n3\v�\0003\f�\0:\f�\v3\f�\0:\f�\v3\f�\0:\f�\v:\v>\n>\t\2\0010\0\0�G\0\1\0G\0\1\0\tscss\1\0\1\rvalidate\2\tless\1\0\1\rvalidate\2\bcss\1\0\0\1\0\1\rvalidate\2\0\1\4\0\0\bcss\tscss\tless\1\3\0\0\31vscode-css-language-server\f--stdio\1\0\0\ncssls\0\22embeddedLanguages\1\0\2\15javascript\2\bcss\2\25configurationSection\1\0\0\1\4\0\0\thtml\bcss\15javascript\1\2\0\0\thtml\1\3\0\0 vscode-html-language-server\f--stdio\1\0\0\thtml\1\0\0\1\0\1\20interpreterPath\vpython\16ansibleLint\1\0\2\fenabled\1\tpath\17ansible-lint\fansible\1\0\0\1\0\1\tpath\fansible\0\1\2\0\0\tyaml\1\3\0\0\28ansible-language-server\f--stdio\1\0\0\14ansiblels\0\1\0\1\21provideFormatter\2\1\2\0\0\tjson\1\3\0\0 vscode-json-language-server\f--stdio\1\0\0\vjsonls\0\1\2\0\0\ash\fcmd_env\1\0\1\17GLOB_PATTERN *@(.sh|.inc|.bash|.command)\1\3\0\0\25bash-language-server\nstart\1\0\0\vbashls\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\24$VIMRUNTIME/lua/vim\20$VIMRUNTIME/lua\16diagnostics\fglobals\1\3\0\0\bvim\tnvim\1\0\1\venable\2\fruntime\1\0\0\6;\tpath\fpackage\nsplit\1\0\1\fversion\vLuaJIT\1\0\0\"/lua-language-server/main.lua\1\3\0\0\0\a-E7/lua-language-server/bin/Linux/lua-language-server\n$HOME\vexpand\afn\16sumneko_lua\0\1\2\0\0\tjava\1\2\0\0,/home/madlife/scripts/jdtls-launcher.sh\1\0\0\njdtls\0\1\5\0\0\6c\bcpp\tobjc\vobjcpp\1\3\0\0\vclangd\23--background-index\1\0\0\vclangd\vpython\1\0\0\ranalysis\1\0\0\1\0\3\27useLibraryCodeForTypes\2\20autoSearchPaths\2\19diagnosticMode\14workspace\0\1\2\0\0\vpython\1\3\0\0\23pyright-langserver\f--stdio\1\0\0\fpyright\14filetypes\1\a\0\0\15javascript\20javascriptreact\19javascript.jsx\15typescript\19typescript.tsx\20typescriptreact\rsettings\14languages\1\0\0\20typescriptreact\19typescript.tsx\15typescript\19javascript.jsx\20javascriptreact\15javascript\1\0\0\rroot_dir\0\17init_options\1\0\1\rhostInfo\vneovim\bcmd\1\3\0\0\31typescript-language-server\f--stdio\17capabilities\14on_attach\1\0\0\nsetup\rtsserver\16lintFormats\1\2\0\0\17%f:%l:%c: %m\1\0\5\18formatCommand?eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}\16lintCommand7eslint_d -f unix --stdin --stdin-filename ${INPUT}\16formatStdin\2\23lintIgnoreExitCode\2\14lintStdin\2\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\3\0\0\rmarkdown\14plaintext\24documentationFormat\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\0\17virtual_text\1\0\2\fspacing\3\0\vprefix\t😈\1\0\3\14underline\2\nsigns\2\18severity_sort\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\bapi\blsp\bvim\19lspconfig/util\14lspconfig\frequire\npcall\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2�\3\0\0\6\0\14\0\0254\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\6\0003\4\4\0002\5\0\0:\5\5\4:\4\a\0033\4\b\0002\5\0\0:\5\5\4:\4\t\0033\4\n\0002\5\0\0:\5\5\0043\5\v\0:\5\f\4:\4\r\3>\2\2\1G\0\1\0\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\1\14highlight\1\0\1\21ensure_installed\ball\fdisable\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\npcall\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\1\2}\0\0\5\1\5\0\0164\0\0\0007\0\1\0007\0\2\0+\1\0\0)\2\2\0)\3\1\0)\4\2\0>\0\5\0024\1\0\0007\1\1\0017\1\3\1\16\2\0\0%\3\4\0)\4\1\0>\1\4\1G\0\1\0\3�\vnormal\18nvim_feedkeys\27nvim_replace_termcodes\bapi\bvim�\2\1\3\a\0\16\0\28\16\4\0\0007\3\0\0%\5\1\0%\6\2\0>\3\4\2\16\4\3\0007\3\0\3%\5\3\0%\6\4\0>\3\4\0023\4\5\0:\1\6\4:\0\a\4\15\0\2\0T\5\6�3\5\t\0;\3\2\5;\2\3\0053\6\n\0;\6\4\5:\5\b\0043\5\v\0:\1\f\0051\6\r\0:\6\14\5:\4\15\0050\0\0�H\5\2\0\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\vsilent\2\fnoremap\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\6\rposition\vcenter\16hl_shortcut\fSpecial\ahl\31LspSagaSignatureHelpBorder\19align_shortcut\nright\nwidth\3\24\vcursor\3\5\r<leader>\bSPC\5\a%s\tgsub�\17\1\0\r\0006\1i4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�0\0a�3\2\3\0003\3\4\0:\3\5\0023\3\6\0:\3\a\0024\3\b\0007\3\t\3%\4\n\0>\3\2\2\16\5\3\0007\4\v\3%\6\f\0>\4\3\2\16\6\3\0007\5\r\3>\5\2\0013\5\14\0%\6\15\0\16\a\4\0%\b\16\0$\6\b\6:\6\5\0053\6\17\0:\6\a\0051\6\18\0003\a\19\0002\b\6\0\16\t\6\0%\n\20\0%\v\21\0%\f\22\0>\t\4\2;\t\1\b\16\t\6\0%\n\23\0%\v\24\0%\f\25\0>\t\4\2;\t\2\b\16\t\6\0%\n\26\0%\v\27\0%\f\28\0>\t\4\2;\t\3\b\16\t\6\0%\n\29\0%\v\30\0%\f\31\0>\t\4\2;\t\4\b\16\t\6\0%\n \0%\v!\0%\f\"\0>\t\4\0<\t\0\0:\b\5\a3\b#\0:\b\a\a3\b$\0003\t%\0:\t\a\b3\t&\0:\2'\t:\5(\t:\a)\t:\b*\t3\n/\0002\v\t\0003\f+\0;\f\1\v7\f'\t;\f\2\v3\f,\0;\f\3\v7\f(\t;\f\4\v3\f-\0;\f\5\v7\f)\t;\f\6\v3\f.\0;\f\a\v7\f*\t;\f\b\v:\v0\n3\v1\0:\v\a\n7\v2\1\16\f\n\0>\v\2\0014\v3\0007\v4\v%\f5\0>\v\2\1G\0\1\0G\0\1\0001autocmd FileType alpha setlocal nofoldenable\bcmd\bvim\nsetup\1\0\1\vmargin\3\5\vlayout\1\0\0\1\0\2\bval\3\1\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\1\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\vfooter\fbuttons\24plugins_total_stats\vheader\1\0\0\1\0\2\ahl!LspDiagnosticsDefaultWarning\rposition\vcenter\1\0\2\bvalCA clever person solves a problem.\n    A wise person AVOIDS it.\ttype\ttext\1\0\1\fspacing\3\1\f:qa<cr>\14  Quit\6q;:e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<cr>\18  Settings\6s\31:ene <BAR> startinsert<cr>\18  New File\6n\29:Telescope live_grep<cr>\19  Find Word\6f\30:Telescope find_files<cr>\19  Find File\6p\1\0\1\ttype\ngroup\0\1\0\2\ahl\29LspSagaCodeActionContent\rposition\vcenter\17 plugins \23Madvim has loaded \1\0\1\ttype\ttext\nclose\a*a\treadTfd -d 1 . $HOME\"/.local/share/nvim/site/pack/packer/start\" | wc -l | tr -d \"\n\" \npopen\aio\topts\1\0\2\ahl\fSpecial\rposition\vcenter\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\nalpha\frequire\npcall\v����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd lspsaga.nvim ]]

-- Config for: lspsaga.nvim
try_loadstring("\27LJ\1\2�\5\0\0\5\0\r\0\0194\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\5\0:\4\6\0033\4\a\0:\4\b\0033\4\t\0:\4\n\0033\4\v\0:\4\f\3>\2\2\1G\0\1\0\23rename_action_keys\1\0\2\tquit\n<C-c>\texec\t<cr>\21code_action_keys\1\0\2\tquit\6q\texec\t<cr>\23finder_action_keys\1\0\6\tquit\6q\16scroll_down\n<C-j>\vvsplit\n<C-v>\topen\t<cr>\14scroll_up\n<C-k>\nsplit\n<C-x>\23code_action_prompt\1\0\4\18sign_priority\3\20\17virtual_text\2\tsign\2\venable\2\1\0\r\14warn_sign\t \28definition_preview_icon\t \26finder_reference_icon\t \17border_style\vsingle\25rename_prompt_prefix\b➤\26dianostic_header_icon\t \14hint_sign\t \15error_sign\t \15infor_sign\t \29use_saga_diagnostic_sign\2\22max_preview_lines\3\n\21code_action_icon\t \27finder_definition_icon\t \18init_lsp_saga\flspsaga\frequire\npcall\0", "config", "lspsaga.nvim")

vim.cmd [[ packadd lsp_signature.nvim ]]
vim.cmd [[ packadd nvim-web-devicons ]]

-- Config for: nvim-web-devicons
try_loadstring("\27LJ\1\2�\t\0\0\n\0?\0p4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\2\0T\4\3�\14\0\0\0T\4\1�G\0\1\0007\4\4\0017\5\5\0033\6=\0003\a\t\0003\b\6\0007\t\a\4:\t\b\b:\b\n\a3\b\v\0007\t\a\4:\t\b\b:\b\f\a3\b\r\0007\t\14\4:\t\b\b:\b\15\a3\b\16\0007\t\14\4:\t\b\b:\b\17\a3\b\18\0007\t\19\4:\t\b\b:\b\20\a3\b\21\0007\t\22\4:\t\b\b:\b\23\a3\b\24\0007\t\22\4:\t\b\b:\b\25\a3\b\26\0007\t\19\4:\t\b\b:\b\27\a3\b\28\0007\t\29\4:\t\b\b:\b\30\a3\b\31\0007\t\19\4:\t\b\b:\b \a3\b!\0007\t\a\4:\t\b\b:\b\"\a3\b#\0007\t$\4:\t\b\b:\b%\a3\b&\0007\t$\4:\t\b\b:\b'\a3\b(\0007\t$\4:\t\b\b:\b)\a3\b*\0007\t\22\4:\t\b\b:\b+\a3\b,\0007\t\14\4:\t\b\b:\b-\a3\b.\0007\t\a\4:\t\b\b:\b/\a3\b0\0007\t1\4:\t\b\b:\b2\a3\b3\0007\t\19\4:\t\b\b:\b4\a3\b5\0007\t\29\4:\t\b\b:\b6\a3\b7\0007\t1\4:\t\b\b:\b8\a3\b9\0007\t\29\4:\t\b\b:\b:\a3\b;\0007\t\29\4:\t\b\b:\b<\a:\a>\6>\5\2\1G\0\1\0\roverride\1\0\0\bzip\1\0\2\ticon\b\tname\bzip\axz\1\0\2\ticon\b\tname\axz\bvue\1\0\2\ticon\b﵂\tname\bvue\brpm\1\0\2\ticon\b\tname\brpm\arb\1\0\2\ticon\b\tname\arb\ats\ngreen\1\0\2\ticon\b\tname\ats\ttoml\1\0\2\ticon\b\tname\ttoml\apy\1\0\2\ticon\b\tname\apy\bpng\1\0\2\ticon\b\tname\bpng\bout\1\0\2\ticon\b\tname\bout\bmp4\1\0\2\ticon\b\tname\bmp4\bmp3\afg\1\0\2\ticon\b\tname\bmp3\blua\1\0\2\ticon\b\tname\blua\tlock\1\0\2\ticon\b\tname\tlock\akt\vorange\1\0\2\ticon\t󱈙\tname\akt\ajs\1\0\2\ticon\b\tname\ajs\bjpg\1\0\2\ticon\b\tname\bjpg\tjpeg\fmagenta\1\0\2\ticon\b\tname\tjpeg\thtml\bred\1\0\2\ticon\b\tname\thtml\15Dockerfile\1\0\2\ticon\b\tname\15Dockerfile\bdeb\tcyan\1\0\2\ticon\b\tname\bdeb\bcss\1\0\2\ticon\b\tname\bcss\6c\1\0\0\ncolor\tblue\1\0\2\ticon\b\tname\6c\nsetup\vcolors\22nvim-web-devicons\22colors.highlights\frequire\npcall\0", "config", "nvim-web-devicons")

vim.cmd [[ packadd galaxyline.nvim ]]

-- Config for: galaxyline.nvim
try_loadstring("\27LJ\1\2'\0\0\1\2\0\0\a+\0\0\0>\0\1\2\15\0\0\0T\1\2�+\0\1\0>\0\1\2H\0\2\0\19�\20�;\0\0\2\1\2\0\n+\0\0\0007\0\0\0\15\0\0\0T\1\2�\a\0\1\0T\1\2�)\1\1\0H\1\2\0)\1\2\0H\1\2\0\r�\5\rfiletype�\2\0\0\t\0\v\00132\0\0\0004\1\0\0004\2\1\0007\2\2\0027\2\3\2'\3\1\0004\4\1\0007\4\2\0047\4\4\4%\5\5\0>\4\2\0=\2\1\0=\1\0\4T\4\19�4\6\1\0007\6\2\0067\6\6\6\16\a\5\0>\6\2\2\t\6\0\0T\6\f�4\6\1\0007\6\2\0067\6\a\6\16\a\5\0>\6\2\2\t\6\0\0T\6\5�4\6\b\0007\6\t\6\16\a\0\0\16\b\5\0>\6\3\1A\4\3\3N\4�4\1\0\0\16\2\0\0>\1\2\4T\4\t�4\6\1\0007\6\2\0067\6\4\6%\a\n\0>\6\2\2\5\5\6\0T\6\2�)\6\2\0H\6\2\0A\4\3\3N\4�G\0\1\0\5\vinsert\ntable\14buflisted\14bufexists\6$\nbufnr\nrange\afn\bvim\vipairs\2�\1\0\0\3\2\14\0\0313\0\1\0+\1\0\0007\1\0\1:\1\2\0+\1\0\0007\1\3\1:\1\4\0+\1\0\0007\1\5\1:\1\6\0+\1\0\0007\1\a\1:\1\b\0+\1\0\0007\1\a\1:\1\t\0+\1\0\0007\1\a\1:\1\n\0+\1\0\0007\1\v\1:\1\f\0+\1\1\0007\1\r\1>\1\1\0026\1\1\0\v\1\0\0T\2\2�+\2\0\0007\1\v\2H\1\2\0\24�\f�\tmode\6R\bred\6v\6\22\6V\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tblueH\0\0\3\2\2\0\b+\0\0\0%\1\0\0+\2\1\0>\2\1\2$\1\2\1>\0\2\1%\0\1\0H\0\2\0\14�\26�\b▊\29hi GalaxyEmptyBar guifg=�\2\0\0\6\3\5\0\0293\0\0\0003\1\1\0+\2\0\0%\3\2\0+\4\1\0>\4\1\2$\3\4\3>\2\2\1+\2\2\0007\2\3\2>\2\1\0026\2\2\0+\3\2\0007\3\3\3>\3\1\0026\3\3\1\14\0\2\0T\4\4�+\4\2\0007\4\3\4>\4\1\2\16\2\4\0\14\0\3\0T\4\1�%\3\4\0\16\4\3\0\16\5\2\0$\4\5\4H\4\2\0\14�\26�\f�\b\tmode\27hi GalaxyViMode guifg=\1\0\a\6\22\t﬏ \6c\tגּ \6V\t﬏ \6R\6 \6n\t \6v\t﬏ \6i\t \1\0\a\6\22\vVISUAL\6c\fCOMMAND\6V\vVISUAL\6R\fREPLACE\6n\vNORMAL\6v\vVISUAL\6i\vINSERT\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\b�\1\0\0\5\1\5\0\25+\0\0\0>\0\1\2\14\0\0\0T\1\2�%\1\0\0H\1\2\0\15\0\0\0T\1\16�4\1\1\0007\1\2\1\16\2\0\0>\1\2\2'\2\28\0\1\2\1\0T\1\t�4\1\1\0007\1\3\1\16\2\0\0'\3\1\0'\4\25\0>\1\4\2%\2\4\0$\1\2\1H\1\2\0H\0\2\0\16�\b...\bsub\blen\vstring\14Undefined\18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a| \30\0\0\1\1\1\0\3+\0\0\0007\0\0\0H\0\2\0\r�\rfiletype\31\0\0\2\1\1\0\5+\0\0\0>\0\1\2%\1\0\0$\0\1\0H\0\2\0\17�\6 �\23\1\0 \0x\0�\0034\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\0034\b\0\0004\t\1\0%\n\6\0>\b\3\0034\n\0\0004\v\1\0%\f\a\0>\n\3\3\14\0\0\0T\f\v�\14\0\2\0T\f\t�\14\0\4\0T\f\a�\14\0\6\0T\f\5�\14\0\b\0T\f\3�\14\0\n\0T\f\1�0\0m�4\f\b\0007\f\t\f4\r\b\0007\r\n\r4\14\b\0007\14\v\0147\15\f\0037\16\r\0057\17\14\a7\18\15\t7\19\16\t7\20\17\t7\21\18\v1\22\19\0001\23\20\0007\24\21\0011\25\22\0001\26\23\0003\27\25\0:\27\24\0037\27\26\0153\28\"\0003\29\28\0001\30\27\0:\30\29\0292\30\3\0007\31\30\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29#\28;\28\1\0277\27\26\0153\28&\0003\29%\0001\30$\0:\30\29\0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29'\28;\28\2\0277\27\26\0153\28*\0003\29(\0:\18)\0292\30\3\0;\21\1\0307\31\31\24;\31\2\30:\30 \29:\29+\28;\28\3\0277\27\26\0153\28.\0003\29,\0:\18)\0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29/\28;\28\4\0277\27\26\0153\0283\0003\0290\0:\22)\0291\0301\0:\30\29\0292\30\3\0007\0312\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\0294\28;\28\5\0277\27\26\0153\0287\0003\0295\0:\22)\0291\0306\0:\30\29\0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\0298\28;\28\6\0277\27\26\0153\28;\0003\0299\0:\22)\0292\30\3\0007\31:\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29<\28;\28\a\0277\27\26\0153\28>\0003\29=\0:\22)\0292\30\3\0007\0312\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29?\28;\28\b\0277\27\26\0153\28A\0003\29@\0:\22)\0292\30\3\0007\31\30\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29B\28;\28\t\0277\27\26\0153\28E\0003\29C\0:\22)\0292\30\3\0007\31D\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29F\28;\28\n\0277\27\26\0153\28H\0003\29G\0002\30\3\0007\31\30\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29I\28;\28\v\0277\27\26\0153\28K\0003\29J\0002\30\3\0007\0312\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29L\28;\28\f\0277\27\26\0153\28O\0003\29M\0002\30\3\0007\31N\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29P\28;\28\r\0277\27\26\0153\28S\0003\29Q\0002\30\3\0007\31R\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29T\28;\28\14\0277\27U\0153\28W\0003\29V\0:\19)\0292\30\3\0007\31:\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29X\28;\28\1\0277\27U\0153\28\\\0003\29Y\0:\25)\0291\30Z\0:\30\29\0292\30\3\0007\31[\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31\31\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29]\28;\28\2\0277\27U\0153\28`\0003\29^\0:\19)\0292\30\3\0007\31_\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29a\28;\28\3\0277\27U\0153\28d\0003\29b\0:\19)\0291\30c\0:\30\29\0292\30\3\0007\31R\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29e\28;\28\4\0277\27U\0153\28g\0003\29f\0:\19)\0292\30\3\0007\31N\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29h\28;\28\5\0277\27U\0153\28j\0003\29i\0:\19)\0292\30\3\0007\31\30\24;\31\1\0307\31\31\24;\31\2\30:\30 \0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30!\29:\29k\28;\28\6\0277\27U\0153\28n\0003\29l\0:\19)\0291\30m\0:\30\29\0292\30\3\0007\31\30\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29o\28;\28\a\0277\27p\0153\28r\0003\29q\0:\23)\0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29s\28;\28\1\0277\27t\0153\28v\0003\29u\0:\23)\0292\30\3\0007\31-\24;\31\1\0307\31\31\24;\31\2\30:\30 \29:\29w\28;\28\1\0270\0\0�G\0\1\0G\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\20short_line_left\14ScrollBar\1\0\0\0\1\0\0\fPerCent\1\0\0\1\0\3\14separator\b | \rprovider\16LinePercent\ticon\b\rLineInfo\1\0\0\1\0\3\14separator\b | \rprovider\15LineColumn\ticon\t \15FileFormat\1\0\0\0\1\0\2\14separator\b | \ticon\t \17GetLspClient\1\0\0\vyellow\1\0\2\ticon\t \rprovider\17GetLspClient\14Separator\1\0\0\nwhite\0\1\0\1\14separator\6 \17BufferNumber\1\0\0\1\0\2\ticon\t﬘ \rprovider\17BufferNumber\nright\19DiagnosticHint\1\0\0\tblue\1\0\2\ticon\t \rprovider\19DiagnosticHint\19DiagnosticInfo\1\0\0\fmagenta\1\0\2\ticon\t \rprovider\19DiagnosticInfo\19DiagnosticWarn\1\0\0\1\0\2\ticon\t \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\0\2\ticon\t \rprovider\20DiagnosticError\nSpace\1\0\0\tcyan\1\0\2\14separator\6 \rprovider\15WhiteSpace\15DiffRemove\1\0\0\1\0\2\ticon\n  \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\2\ticon\n  \rprovider\17DiffModified\fDiffAdd\1\0\0\ngreen\1\0\2\ticon\n  \rprovider\fDiffAdd\14GitBranch\1\0\0\0\1\0\1\14separator\6 \fGitIcon\1\0\0\vorange\0\1\0\1\14separator\6 \rFileName\1\0\0\afg\1\0\2\14separator\6 \rprovider\rFileName\rFileIcon\1\0\0\14condition\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\0\1\14separator\a  \0\rEmptyBar\1\0\0\24separator_highlight\14highlight\abg\bred\rprovider\1\0\1\14separator\6 \0\tleft\1\3\0\0\rNvimTree\vpacker\20short_line_list\0\0\vcolors\0\0\24get_file_icon_color\24check_git_workspace\18hide_in_width\21buffer_not_empty\23scrollbar_instance\19get_git_branch\fsection\bcmd\abo\afn\bvim!galaxyline.provider_fileinfo\25galaxyline.condition#galaxyline.provider_extensions\28galaxyline.provider_vcs\15galaxyline\22colors.highlights\frequire\npcall\0", "config", "galaxyline.nvim")

vim.cmd [[ packadd bufferline.nvim ]]

-- Config for: bufferline.nvim
try_loadstring("\27LJ\1\2^\0\1\4\0\6\0\r7\1\0\0\16\2\1\0007\1\1\1%\3\2\0>\1\3\2\15\0\1\0T\2\5�4\1\3\0007\1\4\0017\1\5\0017\2\0\0@\1\2\0G\0\1\0\16fnamemodify\afn\bvim\t%.md\nmatch\tname�\5\1\0\a\0\v\0\0204\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�0\0\f�7\2\3\0013\3\t\0003\4\4\0001\5\5\0:\5\6\0042\5\3\0003\6\a\0;\6\1\5:\5\b\4:\4\n\3>\2\2\1G\0\1\0G\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\19name_formatter\0\1\0\23\22left_trunc_marker\b\fsort_by\aid\28show_buffer_close_icons\1\16diagnostics\1\rtab_size\3\16\20separator_style\tthin\24show_tab_indicators\2\25enforce_regular_tabs\1\24right_mouse_command\16bdelete! %d\18close_command\16bdelete! %d\22buffer_close_icon\b\20max_name_length\3\14\15close_icon\b\22show_buffer_icons\2\fnumbers\tnone\24persist_buffer_sort\2\23right_trunc_marker\b\22max_prefix_length\3\n\23left_mouse_command\14buffer %d\27always_show_bufferline\1\20show_close_icon\1\19indicator_icon\b▎\18modified_icon\b●\nsetup\15bufferline\frequire\npcall\0", "config", "bufferline.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gdiff lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiff", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gwrite lua require("packer.load")({'vim-fugitive'}, { cmd = "Gwrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gvdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gvdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSPlaygroundToggle lua require("packer.load")({'playground'}, { cmd = "TSPlaygroundToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gw lua require("packer.load")({'vim-fugitive'}, { cmd = "Gw", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim', 'vim-closetag'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'emmet-vim'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'emmet-vim', 'vim-closetag'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'emmet-vim', 'vim-closetag'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'emmet-vim', 'vim-closetag'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'emmet-vim', 'vim-closetag'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'emmet-vim', 'vim-closetag'}, { ft = "javascript" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'emmet-vim', 'vim-closetag', 'vim-surround', 'LuaSnip'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'indent-blankline.nvim', 'vim-multiple-cursors', 'nvim-comment'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
