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
    config = { "\27LJ\1\2o\0\0\5\2\3\0\14+\0\0\0007\0\0\0+\1\1\0)\2\2\0)\3\1\0)\4\2\0>\0\5\2+\1\0\0007\1\1\1\16\2\0\0%\3\2\0)\4\1\0>\1\4\1G\0\1\0\0\0\3�\vnormal\18nvim_feedkeys\27nvim_replace_termcodes�\2\1\3\a\1\16\0\28\16\4\0\0007\3\0\0%\5\1\0%\6\2\0>\3\4\2\16\4\3\0007\3\0\3%\5\3\0%\6\4\0>\3\4\0023\4\5\0:\1\6\4:\0\a\4\15\0\2\0T\5\6�3\5\t\0;\3\2\5;\2\3\0053\6\n\0;\6\4\5:\5\b\0043\5\v\0:\1\f\0051\6\r\0:\6\14\5:\4\15\0050\0\0�H\5\2\0\2�\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\fnoremap\2\vsilent\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\6\16hl_shortcut\fSpecial\vcursor\3\5\19align_shortcut\nright\rposition\vcenter\nwidth\3\24\ahl\31LspSagaSignatureHelpBorder\r<leader>\bSPC\5\a%s\tgsub�\17\1\0\15\0007\1m4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�0\0e�4\2\3\0007\2\4\0024\3\3\0007\3\5\0033\4\6\0003\5\a\0:\5\b\0043\5\t\0:\5\n\0044\5\v\0007\5\f\5%\6\r\0>\5\2\2\16\a\5\0007\6\14\5%\b\15\0>\6\3\2\16\b\5\0007\a\16\5>\a\2\0013\a\17\0%\b\18\0\16\t\6\0%\n\19\0$\b\n\b:\b\b\a3\b\20\0:\b\n\a1\b\21\0003\t\22\0002\n\6\0\16\v\b\0%\f\23\0%\r\24\0%\14\25\0>\v\4\2;\v\1\n\16\v\b\0%\f\26\0%\r\27\0%\14\28\0>\v\4\2;\v\2\n\16\v\b\0%\f\29\0%\r\30\0%\14\31\0>\v\4\2;\v\3\n\16\v\b\0%\f \0%\r!\0%\14\"\0>\v\4\2;\v\4\n\16\v\b\0%\f#\0%\r$\0%\14%\0>\v\4\0<\v\0\0:\n\b\t3\n&\0:\n\n\t3\n'\0003\v(\0:\v\n\n3\v)\0:\4*\v:\a+\v:\t,\v:\n-\v3\f2\0002\r\t\0003\14.\0;\14\1\r7\14*\v;\14\2\r3\14/\0;\14\3\r7\14+\v;\14\4\r3\0140\0;\14\5\r7\14,\v;\14\6\r3\0141\0;\14\a\r7\14-\v;\14\b\r:\r3\f3\r4\0:\r\n\f7\r5\1\16\14\f\0>\r\2\1\16\r\3\0%\0146\0>\r\2\0010\0\0�G\0\1\0G\0\1\0001autocmd FileType alpha setlocal nofoldenable\nsetup\1\0\1\vmargin\3\5\vlayout\1\0\0\1\0\2\bval\3\1\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\1\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\vfooter\fbuttons\24plugins_total_stats\vheader\1\0\0\1\0\2\rposition\vcenter\ahl!LspDiagnosticsDefaultWarning\1\0\2\bvalCA clever person solves a problem.\n    A wise person AVOIDS it.\ttype\ttext\1\0\2\fspacing\3\1\rposition\vcenter\f:qa<cr>\14  Quit\6q5:e $HOME/.config/nvim/lua/default_config.lua<cr>\18  Settings\6s\28:Telescope oldfiles<cr>\22  Recent Files\6r\29:Telescope live_grep<cr>\19  Find Word\6f\30:Telescope find_files<cr>\19  Find File\6p\1\0\1\ttype\ngroup\0\1\0\2\rposition\vcenter\ahl\29LspSagaCodeActionContent\17 plugins \23Madvim has loaded \1\0\1\ttype\ttext\nclose\a*a\treadTfd -d 1 . $HOME\"/.local/share/nvim/site/pack/packer/start\" | wc -l | tr -d \"\n\" \npopen\aio\topts\1\0\2\rposition\vcenter\ahl\fSpecial\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\bcmd\bapi\bvim\nalpha\frequire\npcall\v����\4\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\1\2U\0\1\4\1\4\0\f7\1\0\0\16\2\1\0007\1\1\1%\3\2\0>\1\3\2\15\0\1\0T\2\4�+\1\0\0007\1\3\0017\2\0\0@\1\2\0G\0\1\0\2�\16fnamemodify\t%.md\nmatch\tname�\5\1\0\b\0\r\0\0234\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�0\0\15�4\2\3\0007\2\4\0027\3\5\0013\4\v\0003\5\6\0001\6\a\0:\6\b\0052\6\3\0003\a\t\0;\a\1\6:\6\n\5:\5\f\4>\3\2\0010\0\0�G\0\1\0G\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\19name_formatter\0\1\0\23\rtab_size\3\16\22left_trunc_marker\b\fsort_by\aid\24show_tab_indicators\2\16diagnostics\1\28show_buffer_close_icons\1\20separator_style\tthin\25enforce_regular_tabs\1\24right_mouse_command\16bdelete! %d\18close_command\16bdelete! %d\22buffer_close_icon\b\20max_name_length\3\14\15close_icon\b\22show_buffer_icons\2\fnumbers\tnone\24persist_buffer_sort\2\23right_trunc_marker\b\22max_prefix_length\3\n\23left_mouse_command\14buffer %d\27always_show_bufferline\1\20show_close_icon\1\19indicator_icon\b▎\18modified_icon\b●\nsetup\afn\bvim\15bufferline\frequire\npcall\0" },
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
    after_files = { "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true,
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/cmp_luasnip"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/emmet-vim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\1\2'\0\0\1\2\0\0\a+\0\0\0>\0\1\2\15\0\0\0T\1\2�+\0\1\0>\0\1\2H\0\2\0\19�\20�;\0\0\2\1\2\0\n+\0\0\0007\0\0\0\15\0\0\0T\1\2�\a\0\1\0T\1\2�)\1\1\0H\1\2\0)\1\2\0H\1\2\0\r�\5\rfiletype�\1\0\1\a\0\f\0)4\1\0\0007\1\1\0017\1\2\1\15\0\1\0T\2\b�7\2\3\1\15\0\2\0T\2\5�7\2\3\1\19\2\2\0'\3\0\0\3\2\3\0T\2\1�G\0\1\0002\2\3\b7\3\4\1\14\0\3\0T\4\1�'\3\0\0;\3\0\0027\3\5\1\14\0\3\0T\4\1�'\3\0\0;\3\1\0027\3\6\1\14\0\3\0T\4\1�'\3\0\0;\3\2\0027\3\a\0006\3\3\2\14\0\3\0T\4\2�%\4\b\0H\4\2\0004\4\t\0007\4\n\4%\5\v\0\16\6\3\0@\4\3\0\b%s \vformat\vstring\5\vstatus\fremoved\fchanged\nadded\thead\25gitsigns_status_dict\6b\bvim�\1\0\0\t\1\t\1.2\0\0\0004\1\0\0+\2\0\0007\2\1\2'\3\1\0+\4\0\0007\4\2\4%\5\3\0>\4\2\0=\2\1\0=\1\0\4T\4\17�+\6\0\0007\6\4\6\16\a\5\0>\6\2\2\t\6\0\0T\6\v�+\6\0\0007\6\5\6\16\a\5\0>\6\2\2\t\6\0\0T\6\5�4\6\6\0007\6\a\6\16\a\0\0\16\b\5\0>\6\3\1A\4\3\3N\4�4\1\0\0\16\2\0\0>\1\2\4T\4\b�+\6\0\0007\6\2\6%\a\b\0>\6\2\2\5\5\6\0T\6\2�)\6\2\0H\6\2\0A\4\3\3N\4�G\0\1\0\f�\5\vinsert\ntable\14buflisted\14bufexists\6$\nbufnr\nrange\vipairs\2�\1\0\0\3\2\14\0\0313\0\1\0+\1\0\0007\1\0\1:\1\2\0+\1\0\0007\1\3\1:\1\4\0+\1\0\0007\1\5\1:\1\6\0+\1\0\0007\1\a\1:\1\b\0+\1\0\0007\1\a\1:\1\t\0+\1\0\0007\1\a\1:\1\n\0+\1\0\0007\1\v\1:\1\f\0+\1\1\0007\1\r\1>\1\1\0026\1\1\0\v\1\0\0T\2\2�+\2\0\0007\1\v\2H\1\2\0\25�\f�\tmode\6R\bred\6v\6\22\6V\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tblueH\0\0\3\2\2\0\b+\0\0\0%\1\0\0+\2\1\0>\2\1\2$\1\2\1>\0\2\1%\0\1\0H\0\2\0\14�\27�\b▊\29hi GalaxyEmptyBar guifg=�\2\0\0\6\3\5\0\0293\0\0\0003\1\1\0+\2\0\0%\3\2\0+\4\1\0>\4\1\2$\3\4\3>\2\2\1+\2\2\0007\2\3\2>\2\1\0026\2\2\0+\3\2\0007\3\3\3>\3\1\0026\3\3\1\14\0\2\0T\4\4�+\4\2\0007\4\3\4>\4\1\2\16\2\4\0\14\0\3\0T\4\1�%\3\4\0\16\4\3\0\16\5\2\0$\4\5\4H\4\2\0\14�\27�\f�\b\tmode\27hi GalaxyViMode guifg=\1\0\a\6V\t﬏ \6c\tגּ \6\22\t﬏ \6R\6 \6n\t \6v\t﬏ \6i\t \1\0\a\6V\vVISUAL\6c\fCOMMAND\6\22\vVISUAL\6R\fREPLACE\6n\vNORMAL\6v\vVISUAL\6i\vINSERT\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\b�\1\0\0\5\1\5\0\25+\0\0\0>\0\1\2\14\0\0\0T\1\2�%\1\0\0H\1\2\0\15\0\0\0T\1\16�4\1\1\0007\1\2\1\16\2\0\0>\1\2\2'\2\28\0\1\2\1\0T\1\t�4\1\1\0007\1\3\1\16\2\0\0'\3\1\0'\4\25\0>\1\4\2%\2\4\0$\1\2\1H\1\2\0H\0\2\0\16�\b...\bsub\blen\vstring\14Undefined!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\0!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\1!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\2\17\0\0\1\0\1\0\2%\0\0\0H\0\2\0\6 '\0\0\1\2\0\0\a+\0\0\0>\0\1\2\15\0\0\0T\1\2�+\0\1\0>\0\1\2H\0\2\0\19�\26�\18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a| \18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a| Q\0\0\1\1\3\0\r+\0\0\0007\0\0\0\15\0\0\0T\0\4�+\0\0\0007\0\0\0\a\0\1\0T\0\2�%\0\2\0H\0\2\0+\0\0\0007\0\0\0H\0\2\0\r�\14undefined\5\rfiletype\31\0\0\2\1\1\0\5+\0\0\0>\0\1\2%\1\0\0$\0\1\0H\0\2\0\17�\6 �\23\1\0!\0\0�\0034\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\0034\b\0\0004\t\1\0%\n\6\0>\b\3\0034\n\0\0004\v\1\0%\f\a\0>\n\3\3\14\0\0\0T\f\v�\14\0\2\0T\f\t�\14\0\4\0T\f\a�\14\0\6\0T\f\5�\14\0\b\0T\f\3�\14\0\n\0T\f\1�0\0}�4\f\b\0007\f\t\f4\r\b\0007\r\n\r4\14\b\0007\14\v\0147\15\f\0037\16\r\0057\17\14\a7\18\15\t7\19\16\t7\20\17\t7\21\18\v1\22\19\0001\23\20\0001\24\21\0007\25\22\0011\26\23\0001\27\24\0003\28\26\0:\28\25\0037\28\27\0153\29#\0003\30\29\0001\31\28\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30$\29;\29\1\0287\28\27\0153\29'\0003\30&\0001\31%\0:\31\30\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30(\29;\29\2\0287\28\27\0153\29+\0003\30)\0:\18*\0302\31\3\0;\21\1\0317  \25; \2\31:\31!\30:\30,\29;\29\3\0287\28\27\0153\29/\0003\30-\0:\18*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0300\29;\29\4\0287\28\27\0153\0294\0003\0301\0:\22*\0301\0312\0:\31\30\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0305\29;\29\5\0287\28\27\0153\0298\0003\0306\0:\22*\0301\0317\0:\31\30\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0309\29;\29\6\0287\28\27\0153\29=\0003\30:\0:\22*\0301\31;\0:\31\30\0302\31\3\0007 <\25; \1\0317  \25; \2\31:\31!\30:\30>\29;\29\a\0287\28\27\0153\29A\0003\30?\0:\22*\0301\31@\0:\31\30\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30B\29;\29\b\0287\28\27\0153\29E\0003\30C\0:\22*\0301\31D\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30F\29;\29\t\0287\28\27\0153\29I\0003\30G\0:\22*\0301\31H\0:\31\30\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31!\30:\30J\29;\29\n\0287\28\27\0153\29L\0003\30K\0002\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30M\29;\29\v\0287\28\27\0153\29O\0003\30N\0002\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30P\29;\29\f\0287\28\27\0153\29S\0003\30Q\0002\31\3\0007 R\25; \1\0317  \25; \2\31:\31!\30:\30T\29;\29\r\0287\28\27\0153\29W\0003\30U\0002\31\3\0007 V\25; \1\0317  \25; \2\31:\31!\30:\30X\29;\29\14\0287\28Y\0153\29[\0003\30Z\0:\19*\0302\31\3\0007 <\25; \1\0317  \25; \2\31:\31!\30:\30\\\29;\29\1\0287\28Y\0153\29a\0003\30^\0001\31]\0:\31*\0301\31_\0:\31\30\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30b\29;\29\2\0287\28Y\0153\29d\0003\30c\0:\19*\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30e\29;\29\3\0287\28Y\0153\29h\0003\30f\0:\19*\0301\31g\0:\31\30\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30b\29;\29\4\0287\28Y\0153\29k\0003\30j\0001\31i\0:\31\30\0302\31\3\0007 V\25; \1\0317  \25; \2\31:\31!\30:\30l\29;\29\5\0287\28Y\0153\29n\0003\30m\0002\31\3\0007 R\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31\"\30:\30o\29;\29\6\0287\28Y\0153\29q\0003\30p\0:\19*\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31\"\30:\30r\29;\29\a\0287\28Y\0153\29u\0003\30s\0:\19*\0301\31t\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30v\29;\29\b\0287\28w\0153\29y\0003\30x\0:\23*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\30:\30z\29;\29\1\0287\28{\0153\29}\0003\30|\0:\23*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\30:\30~\29;\29\1\0280\0\0�G\0\1\0G\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\20short_line_left\14ScrollBar\1\0\0\0\1\0\0\fPerCent\1\0\0\1\0\3\rprovider\16LinePercent\ticon\b\14separator\b | \rLineInfo\1\0\0\1\0\3\rprovider\15LineColumn\ticon\t \14separator\b | \15FileFormat\1\0\0\1\0\1\ticon\t \0\1\0\0\0\1\0\1\14separator\6 \17GetLspClient\1\0\0\1\0\2\rprovider\17GetLspClient\ticon\t \14Separator\1\0\0\nwhite\0\1\0\1\14separator\6 \0\17BufferNumber\1\0\0\1\0\2\rprovider\17BufferNumber\ticon\t﬘ \nright\19DiagnosticHint\1\0\0\tblue\1\0\2\rprovider\19DiagnosticHint\ticon\t \19DiagnosticInfo\1\0\0\fmagenta\1\0\2\rprovider\19DiagnosticInfo\ticon\t \19DiagnosticWarn\1\0\0\1\0\2\rprovider\19DiagnosticWarn\ticon\t \20DiagnosticError\1\0\0\1\0\2\rprovider\20DiagnosticError\ticon\t \nSpace\1\0\0\0\1\0\0\15DiffRemove\1\0\0\0\1\0\1\ticon\n  \17DiffModified\1\0\0\0\1\0\1\ticon\n  \fDiffAdd\1\0\0\ngreen\0\1\0\1\ticon\n  \14GitBranch\1\0\0\0\1\0\1\14separator\6 \fGitIcon\1\0\0\vorange\0\1\0\1\14separator\6 \rFileName\1\0\0\afg\1\0\2\rprovider\rFileName\14separator\6 \rFileIcon\1\0\0\14condition\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\0\1\14separator\a  \0\rEmptyBar\1\0\0\24separator_highlight\14highlight\abg\bred\rprovider\1\0\1\14separator\6 \0\tleft\1\4\0\0\rNvimTree\vpacker\bfzf\20short_line_list\0\0\vcolors\0\0\0\24get_file_icon_color\24check_git_workspace\18hide_in_width\21buffer_not_empty\23scrollbar_instance\19get_git_branch\fsection\bcmd\abo\afn\bvim!galaxyline.provider_fileinfo\25galaxyline.condition#galaxyline.provider_extensions\28galaxyline.provider_vcs\15galaxyline\22colors.highlights\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2�\4\0\0\6\0\19\0\0254\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\6\0003\5\5\0:\5\a\0043\5\b\0:\5\t\0043\5\n\0:\5\v\0043\5\f\0:\5\r\0043\5\14\0:\5\15\4:\4\16\0033\4\17\0:\4\18\3>\2\2\1G\0\1\0\16watch_index\1\0\2\rinterval\3�\a\17follow_files\2\nsigns\14topdelete\1\0\3\ttext\b‾\ahl\15DiffDelete\nnumhl\21GitSignsDeleteNr\vdelete\1\0\3\ttext\6_\ahl\15DiffDelete\nnumhl\21GitSignsDeleteNr\17changedelete\1\0\3\ttext\6~\ahl\15DiffChange\nnumhl\21GitSignsChangeNr\vchange\1\0\3\ttext\b│\ahl\15DiffChange\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\3\ttext\b│\ahl\fDiffAdd\nnumhl\18GitSignsAddNr\1\0\a\20update_debounce\3d\15signcolumn\1\18sign_priority\3\6\23current_line_blame\1\15debug_mode\1\14word_diff\1\nnumhl\1\nsetup\rgitsigns\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
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
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/neoformat"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\1\2�\3\0\0\a\0\15\0\0314\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\0\0T\4\3�\14\0\2\0T\4\1�G\0\1\0007\4\4\0013\5\6\0003\6\5\0:\6\a\5>\4\2\0012\4\0\0003\5\t\0003\6\n\0;\6\2\5:\5\b\0043\5\f\0003\6\r\0;\6\2\5:\5\v\0047\5\14\3\16\6\4\0>\5\2\1G\0\1\0\17set_mappings\1\4\0\0\18vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-u>\rmappings\1\0\5\24use_local_scrolloff\1\rstop_eof\2\16hide_cursor\2\25cursor_scrolls_alone\2\22respect_scrolloff\1\1\3\0\0\n<C-u>\n<C-d>\nsetup\21neoscroll.config\14neoscroll\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim"
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
    config = { "\27LJ\1\2�\1\0\0\5\1\6\2\25+\0\0\0007\0\0\0%\1\1\0>\0\2\2\21\0\0\0\b\0\1\0T\1\16�+\1\0\0007\1\2\1%\2\1\0>\1\2\2\16\2\1\0007\1\3\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\4\1%\3\5\0>\1\3\2T\2\3�)\1\1\0T\2\1�)\1\2\0H\1\2\0\t�\a%s\nmatch\bsub\fgetline\6.\bcol\2\0<\0\1\6\1\1\0\a+\1\0\0007\1\0\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\b�\27nvim_replace_termcodes\v\0\1\1\0\0\0\1H\0\2\0-\0\1\3\1\2\0\5+\1\0\0007\1\0\0017\2\1\0>\1\2\1G\0\1\0\a�\tbody\15lsp_expand\v\0\1\1\0\0\0\1H\0\2\0�\2\0\1\4\4\b\1)+\1\0\0007\1\0\1>\1\1\2\t\1\0\0T\1\b�+\1\0\0007\1\1\1+\2\1\0%\3\2\0>\2\2\2%\3\3\0>\1\3\1T\1\27�+\1\2\0007\1\4\1>\1\1\2\15\0\1\0T\2\b�+\1\0\0007\1\1\1+\2\1\0%\3\5\0>\2\2\2%\3\6\0>\1\3\1T\1\14�+\1\3\0>\1\1\2\15\0\1\0T\2\b�+\1\0\0007\1\1\1+\2\1\0%\3\a\0>\2\2\2%\3\3\0>\1\3\1T\1\2�\16\1\0\0>\1\1\1G\0\1\0\t�\14�\a�\r�\n<Tab>\5!<Plug>luasnip-expand-or-jump\23expand_or_jumpable\6n\n<C-n>\rfeedkeys\15pumvisible\2�\1\0\1\4\3\a\1\30+\1\0\0007\1\0\1>\1\1\2\t\1\0\0T\1\b�+\1\0\0007\1\1\1+\2\1\0%\3\2\0>\2\2\2%\3\3\0>\1\3\1T\1\16�+\1\2\0007\1\4\1'\2��>\1\2\2\15\0\1\0T\2\b�+\1\0\0007\1\1\1+\2\1\0%\3\5\0>\2\2\2%\3\6\0>\1\3\1T\1\2�\16\1\0\0>\1\1\1G\0\1\0\t�\14�\a�\5\28<Plug>luasnip-jump-prev\rjumpable\6n\n<C-p>\rfeedkeys\15pumvisible\2�\2\0\2\4\1\a\0\18+\2\0\0007\3\0\0016\2\3\2:\2\0\0013\2\2\0007\3\3\0007\3\4\0036\2\3\2:\2\1\0013\2\6\0007\3\3\0007\3\4\0036\2\3\2\14\0\2\0T\3\1�'\2\0\0:\2\5\1H\1\2\0\f�\1\0\3\vbuffer\3\1\rnvim_lsp\3\0\tpath\3\1\bdup\tname\vsource\1\0\b\nemoji\f(Emoji)\tcalc\v(Calc)\rnvim_lsp\n(LSP)\vbuffer\r(Buffer)\nvsnip\14(Snippet)\16cmp_tabnine\14(Tabnine)\tpath\v(Path)\fluasnip\14(Snippet)\tmenu\tkind�\14\1\0\22\0U\3�\0014\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\3\14\0\0\0T\b\a�\14\0\6\0T\b\5�\14\0\2\0T\b\3�\14\0\4\0T\b\1�0\0�4\b\6\0007\b\a\b4\t\6\0007\t\b\t4\n\6\0007\n\t\n'\v(\0003\f\n\0001\r\v\0001\14\f\0007\15\r\0013\16\20\0003\17\16\0002\18\3\0007\19\2\0057\19\14\0197\19\15\19;\19\1\18:\18\17\0171\18\18\0:\18\19\17:\17\21\0163\17\23\0001\18\22\0:\18\24\17:\17\25\0167\17\2\0057\17\26\0177\17\27\17:\17\28\0163\17\30\0003\18\29\0:\18\31\0174\18 \0007\18!\18\22\19\0\v7\20\"\n\22\21\0\v\22\21\1\21\23\21\2\21!\20\21\20 \19\20\19>\18\2\2:\18#\0174\18 \0007\18!\0187\19$\n!\19\19\v \19\19\v>\18\2\2:\18%\17:\17&\0163\17)\0007\18\2\0057\18'\0187\18(\18:\18*\0171\18+\0:\18,\17:\17-\0163\17.\0002\18\b\0007\19/\3;\19\1\0187\0190\3;\19\2\0187\0191\3;\19\3\0187\0192\3;\19\4\0187\0193\3;\19\5\0187\0194\3;\19\6\0187\0195\3;\19\a\18:\0186\17:\0177\0163\17:\0007\0188\0017\0189\18>\18\1\2:\18;\0177\0188\0017\18<\0183\19>\0007\20'\0017\20=\20:\20?\19>\18\2\2:\18@\0177\0188\0011\19A\0003\20B\0>\18\3\2:\18C\0177\0188\0011\19D\0003\20E\0>\18\3\2:\18F\17:\0178\0163\17H\0001\18G\0:\18I\17:\17J\0163\17K\0:\17L\0162\17\b\0003\18M\0;\18\1\0173\18N\0;\18\2\0173\18O\0;\18\3\0173\18P\0;\18\4\0173\18Q\0;\18\5\0173\18R\0;\18\6\0173\18S\0;\18\a\17:\17T\16>\15\2\0010\0\0�G\0\1\0G\0\1\0\fsources\1\0\1\tname\15treesitter\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\17experimental\1\0\1\15ghost_text\1\15formatting\vformat\1\0\0\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\fconfirm\14<C-Space>\1\0\0\rcomplete\fmapping\fsorting\16comparators\norder\vlength\14sort_text\tkind\nscore\nexact\voffset\1\0\1\20priority_weight\3\2\17confirmation\26get_commit_characters\0\21default_behavior\1\0\0\vInsert\20ConfirmBehavior\18documentation\14maxheight\nlines\rmaxwidth\fcolumns\nfloor\tmath\vborder\1\0\1\17winhighlight(Normal:MyNormal,NormalNC:MyNormalNC\1\t\0\0\b╭\b─\b╮\b│\b╯\b─\b╰\b│\14preselect\tItem\18PreselectMode\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\27get_trigger_characters\0\17autocomplete\1\0\3\19keyword_length\3\1\20keyword_pattern/\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\w*\\%(-\\w*\\)*\\)\16completeopt#menu,menuone,noselect,noinsert\16TextChanged\17TriggerEvent\nsetup\0\0\1\0\25\tText\b\vMethod\b\rOperator\b\14Interface\b\nColor\b\vModule\b\nEvent\b\rFunction\b\rProperty\b\15EnumMember\b\rConstant\b\18TypeParameter\b\vStruct\b\rVariable\b\fSnippet\b\vFolder\b\nClass\b\nField\b\fKeyword\t \tFile\b\nValue\b\16Constructor\b\tEnum\b練\tUnit\b塞\14Reference\b\6o\afn\bapi\bvim\fluasnip\14cmp.types\23cmp.config.compare\bcmp\frequire\npcall\4 \18\0" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\2�\1\0\0\5\0\6\0\f4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\5\0>\2\3\1G\0\1\0\1\0\t\vrgb_fn\1\vcss_fn\1\nnames\1\bcss\2\vRRGGBB\2\tmode\15background\rRRGGBBAA\1\vhsl_fn\1\bRGB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\npcall\0" },
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
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\1\0027\2\0\3\2\1\0\6+\0\0\0007\0\0\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1�\24nvim_buf_set_keymap7\2\0\3\2\1\0\6+\0\0\0007\0\0\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1�\24nvim_buf_set_option�\t\1\2\n\1\28\0H1\2\0\0001\3\1\0003\4\2\0\16\5\3\0%\6\3\0%\a\4\0>\5\3\1\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\0017\5\24\0007\5\25\5\15\0\5\0T\6\5�+\5\0\0007\5\26\5%\6\27\0)\a\1\0>\5\3\0010\0\0�G\0\1\0\6��\1          augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\23document_highlight\26resolved_capabilitiesR<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = 'rounded' })<cr>\15<leader>gl*<cmd>lua vim.lsp.buf.references()<cr>\15<leader>gf+<cmd>lua vim.lsp.buf.code_action()<cr>\15<leader>gaW<cmd>lua vim.lsp.diagnostic.goto_prev({ popup_opts = { border = 'rounded' } })<cr>\15<leader>gpW<cmd>lua vim.lsp.diagnostic.goto_next({ popup_opts = { border = 'rounded' } })<cr>\15<leader>gn&<cmd>lua vim.lsp.buf.rename()<cr>\15<leader>gr.<cmd>lua vim.lsp.buf.signature_help()<cr>\15<leader>gs%<cmd>lua vim.lsp.buf.hover()<cr>\15<leader>gk*<cmd>lua vim.lsp.buf.definition()<cr>\15<leader>gd\6n\27v:lua.vim.lsp.omnifunc\romnifunc\1\0\2\fnoremap\2\vsilent\2\0\0�\2\0\0\4\2\r\0\21+\0\0\0007\0\0\0007\0\1\0>\0\1\0027\1\2\0007\1\3\0017\1\4\1)\2\2\0:\2\5\0017\1\2\0007\1\3\0017\1\4\0013\2\b\0003\3\a\0:\3\t\2:\2\6\0013\1\n\0:\0\v\1+\2\1\0:\2\f\1H\1\2\0\b�\n�\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol�\2\0\0\n\4\a\0,+\0\0\0007\0\0\0>\0\1\1+\0\0\0007\0\1\0>\0\1\0024\1\2\0\16\2\0\0>\1\2\4D\4\31�+\6\1\0>\6\1\2+\a\2\0006\a\5\a\15\0\a\0T\b\20�7\b\3\a\15\0\b\0T\t\2�7\b\3\a:\b\3\0067\b\4\a\15\0\b\0T\t\2�7\b\4\a:\b\4\0067\b\5\a\15\0\b\0T\t\2�7\b\5\a:\b\5\0067\b\6\a\15\0\b\0T\t\2�7\b\6\a:\b\6\6+\b\3\0006\b\5\b7\b\0\b\16\t\6\0>\b\2\1B\4\3\3N\4�G\0\1\0\1�\v�\5�\3�\14filetypes\rroot_dir\rsettings\17init_options\npairs\22installed_servers\nsetup+\0\0\2\2\1\0\6+\0\0\0>\0\1\1+\0\1\0%\1\0\0>\0\2\1G\0\1\0\f�\a�\fbufdo e�\a\1\0\17\0%\0O4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\3\14\0\0\0T\6\5�\14\0\2\0T\6\3�\14\0\4\0T\6\1�0\0;�4\6\5\0007\6\6\0064\a\5\0007\a\a\a4\b\5\0007\b\b\b7\t\t\b1\n\n\0001\v\v\0001\f\f\0\16\r\f\0>\r\1\0017\r\14\b7\14\15\b7\14\16\0143\15\17\0003\16\18\0:\16\19\15>\r\3\2:\r\r\t4\r\5\0007\r\20\r7\r\21\r%\14\22\0003\15\23\0>\r\3\0014\r\5\0007\r\20\r7\r\21\r%\14\24\0003\15\25\0>\r\3\0014\r\5\0007\r\20\r7\r\21\r%\14\26\0003\15\27\0>\r\3\0014\r\5\0007\r\20\r7\r\21\r%\14\28\0003\15\29\0>\r\3\0013\r\30\0007\14\14\b7\15 \t\16\16\r\0>\14\3\2:\14\31\t7\14\14\b7\15\"\t\16\16\r\0>\14\3\2:\14!\t1\14$\0:\14#\0010\0\0�G\0\1\0G\0\1\0\0\22post_install_hook\19signature_help\31textDocument/signatureHelp\nhover\23textDocument/hover\1\0\2\14max_width\3P\vborder\frounded\1\0\2\ttext\b\vtexthl\30LspDiagnosticsDefaultHint\27LspDiagnosticsSignHint\1\0\2\ttext\b\vtexthl%LspDiagnosticsDefaultInformation\"LspDiagnosticsSignInformation\1\0\2\ttext\b\vtexthl!LspDiagnosticsDefaultWarning\30LspDiagnosticsSignWarning\1\0\2\ttext\b\vtexthl\31LspDiagnosticsDefaultError\28LspDiagnosticsSignError\16sign_define\afn\17virtual_text\1\0\2\fspacing\3\0\vprefix\t🦊\1\0\3\nsigns\2\14underline\2\18severity_sort\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\0\0\0\rhandlers\blsp\bcmd\bapi\bvim\22plugins/languages\14lspconfig\15lspinstall\frequire\npcall\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeOpen" },
    config = { "\27LJ\1\2�\3\0\0\a\0\17\0\0274\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0002\4\0\0:\4\5\0033\4\6\0002\5\0\0:\5\a\4:\4\b\0033\4\t\0002\5\0\0:\5\n\4:\4\v\0033\4\f\0003\5\r\0002\6\0\0:\6\14\5:\5\15\4:\4\16\3>\2\2\1G\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\3\nwidth\3\30\tside\tleft\16auto_resize\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\23ignore_ft_on_setup\1\0\b\15update_cwd\1\16open_on_tab\1\15auto_close\2\18open_on_setup\1\18disable_netrw\2\18hijack_cursor\1\20lsp_diagnostics\1\17hijack_netrw\2\nsetup\14nvim-tree\frequire\npcall\0" },
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
    after = { "galaxyline.nvim", "nvim-tree.lua", "bufferline.nvim" },
    config = { "\27LJ\1\2�\n\0\0\n\0D\0|4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\2\0T\4\3�\14\0\0\0T\4\1�G\0\1\0007\4\4\0017\5\5\0033\6B\0003\a\t\0003\b\6\0007\t\a\4:\t\b\b:\b\n\a3\b\v\0007\t\a\4:\t\b\b:\b\f\a3\b\r\0007\t\a\4:\t\b\b:\b\14\a3\b\15\0007\t\a\4:\t\b\b:\b\16\a3\b\17\0007\t\18\4:\t\b\b:\b\19\a3\b\20\0007\t\a\4:\t\b\b:\b\21\a3\b\22\0007\t\23\4:\t\b\b:\b\24\a3\b\25\0007\t\18\4:\t\b\b:\b\26\a3\b\27\0007\t\28\4:\t\b\b:\b\29\a3\b\30\0007\t\28\4:\t\b\b:\b\31\a3\b \0007\t\23\4:\t\b\b:\b!\a3\b\"\0007\t\23\4:\t\b\b:\b#\a3\b$\0007\t\18\4:\t\b\b:\b%\a3\b&\0007\t\a\4:\t\b\b:\b'\a3\b(\0007\t\a\4:\t\b\b:\b)\a3\b*\0007\t\a\4:\t\b\b:\b+\a3\b,\0007\t\a\4:\t\b\b:\b-\a3\b.\0007\t\28\4:\t\b\b:\b/\a3\b0\0007\t1\4:\t\b\b:\b2\a3\b3\0007\t\a\4:\t\b\b:\b4\a3\b5\0007\t\a\4:\t\b\b:\b6\a3\b7\0007\t\18\4:\t\b\b:\b8\a3\b9\0007\t\23\4:\t\b\b:\b:\a3\b;\0007\t<\4:\t\b\b:\b=\a3\b>\0007\t\23\4:\t\b\b:\b?\a3\b@\0007\t\23\4:\t\b\b:\bA\a:\aC\6>\5\2\1G\0\1\0\roverride\1\0\0\bzip\1\0\2\tname\bzip\ticon\b\axz\1\0\2\tname\axz\ticon\b\bvue\ngreen\1\0\2\tname\bvue\ticon\b﵂\brpm\1\0\2\tname\brpm\ticon\b\arb\1\0\2\tname\arb\ticon\b\ats\1\0\2\tname\ats\ticon\b\ttoml\1\0\2\tname\ttoml\ticon\b\apy\vyellow\1\0\2\tname\apy\ticon\b\bpng\1\0\2\tname\bpng\ticon\b\bout\1\0\2\tname\bout\ticon\b\bmp4\1\0\2\tname\bmp4\ticon\b\bmp3\1\0\2\tname\bmp3\ticon\b\blua\1\0\2\tname\blua\ticon\b\tlock\1\0\2\tname\tlock\ticon\b\akt\1\0\2\tname\akt\ticon\t󱈙\ajs\1\0\2\tname\ajs\ticon\b\bjpg\1\0\2\tname\bjpg\ticon\b\tjpeg\fmagenta\1\0\2\tname\tjpeg\ticon\b\tjava\1\0\2\tname\tjava\ticon\b\thtml\vorange\1\0\2\tname\thtml\ticon\b\15Dockerfile\1\0\2\tname\15Dockerfile\ticon\b\bdeb\bred\1\0\2\tname\bdeb\ticon\b\bcss\1\0\2\tname\bcss\ticon\b\bcpp\1\0\2\tname\bcpp\ticon\b\acc\1\0\2\tname\acc\ticon\b\6c\1\0\0\ncolor\tblue\1\0\2\tname\6c\ticon\b\nsetup\vcolors\22nvim-web-devicons\22colors.highlights\frequire\npcall\0" },
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
    config = { "\27LJ\1\2�\n\0\0\15\0001\0P4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\3\14\0\0\0T\b\a�\14\0\2\0T\b\5�\14\0\4\0T\b\3�\14\0\6\0T\b\1�G\0\1\0007\b\6\0013\t/\0003\n\17\0003\v\r\0003\f\b\0007\r\a\3:\r\t\f7\r\n\0037\14\v\3\30\r\14\r:\r\f\f:\f\14\v3\f\15\0007\r\n\0037\14\v\3\30\r\14\r:\r\f\f:\f\16\v:\v\18\n3\v\19\0:\v\20\n3\v\21\0003\f\22\0:\f\23\v3\f\24\0:\f\25\v:\v\26\n7\v\27\5:\v\28\n3\v\29\0:\v\30\n7\v\31\5:\v \n2\v\0\0:\v!\n3\v\"\0:\v#\n2\v\0\0:\v$\n3\v%\0:\v&\n7\v'\a7\v(\v:\v)\n7\v*\a7\v(\v:\v+\n7\v,\a7\v(\v:\v-\n7\v.\a:\v.\n:\n0\t>\b\2\1G\0\1\0\rdefaults\1\0\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\fset_env\1\0\1\14COLORTERM\14truecolor\17path_display\16borderchars\1\t\0\0\b─\b│\b─\b│\b╭\b╮\b╯\b╰\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\6\0\0\15scratch/.*\20node_modules/.*\rbuild/.*\fdist/.*\f.git/.*\16file_sorter\19get_fzy_sorter\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\1\vmirror\1\1\0\2\nwidth\4\0����\3\20prompt_position\btop\22vimgrep_arguments\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\rmappings\1\0\v\23selection_strategy\nreset\17entry_prefix\a  \19color_devicons\2\20layout_strategy\15horizontal\ruse_less\2\21disable_devicons\1\21sorting_strategy\14ascending\18prompt_prefix\n  \17initial_mode\vinsert\rwinblend\3\0\20selection_caret\n  \6i\1\0\0\6n\1\0\0\15<leader>ga\16open_qflist\25smart_send_to_qflist\6q\1\0\0\nclose\nsetup\25telescope.previewers\22telescope.sorters\22telescope.actions\14telescope\frequire\npcall\0" },
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
  ["vim-jsx-pretty"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/vim-jsx-pretty"
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
-- Setup for: vim-multiple-cursors
time([[Setup for vim-multiple-cursors]], true)
try_loadstring("\27LJ\1\2�\2\0\0\2\0\14\0\0174\0\0\0007\0\1\0'\1\0\0:\1\2\0%\1\4\0:\1\3\0%\1\6\0:\1\5\0%\1\4\0:\1\a\0%\1\t\0:\1\b\0%\1\v\0:\1\n\0%\1\r\0:\1\f\0G\0\1\0\n<Esc>\26multi_cursor_quit_key\n<C-x>\26multi_cursor_skip_key\n<C-p>\26multi_cursor_prev_key\26multi_cursor_next_key\n<A-s>%multi_cursor_select_all_word_key\n<C-s> multi_cursor_start_word_key%multi_cursor_use_default_mapping\6g\bvim\0", "setup", "vim-multiple-cursors")
time([[Setup for vim-multiple-cursors]], false)
-- Setup for: neoformat
time([[Setup for neoformat]], true)
try_loadstring("\27LJ\1\2�\1\0\0\b\0\n\0\0154\0\0\0007\0\1\0004\1\0\0007\1\2\0017\1\3\0013\2\4\0003\3\6\0:\3\5\0\16\3\1\0%\4\a\0%\5\b\0%\6\t\0\16\a\2\0>\3\5\1G\0\1\0\23<cmd>Neoformat<cr>\14<leader>f\6n\1\4\0\0\tyapf\rautopep8\nblack\29neoformat_enabled_python\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\6g\bvim\0", "setup", "neoformat")
time([[Setup for neoformat]], false)
-- Setup for: emmet-vim
time([[Setup for emmet-vim]], true)
try_loadstring("\27LJ\1\2=\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0\n<C-y>\26user_emmet_leader_key\6g\bvim\0", "setup", "emmet-vim")
time([[Setup for emmet-vim]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2�\5\0\0\b\0\26\0%4\0\0\0007\0\1\0007\0\2\0004\1\0\0007\1\3\0013\2\4\0\16\3\0\0%\4\5\0%\5\6\0%\6\a\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\b\0%\6\t\0\16\a\2\0>\3\5\0013\3\v\0:\3\n\0013\3\r\0:\3\f\1'\3\1\0:\3\14\1%\3\16\0:\3\15\1'\3\0\0:\3\17\0013\3\19\0003\4\20\0:\4\21\0033\4\22\0:\4\23\0033\4\24\0:\4\25\3:\3\18\1G\0\1\0\blsp\1\0\4\thint\b\tinfo\b\nerror\b\fwarning\b\vfolder\1\0\b\topen\b\15empty_open\b\fdefault\b\15arrow_open\b\nempty\b\fsymlink\b\17arrow_closed\b\17symlink_open\b\bgit\1\0\a\runstaged\a±\fdeleted\b\14untracked\b\frenamed\b\runmerged\b\fignored\b\vstaged\b\1\0\2\fdefault\b\fsymlink\b\20nvim_tree_icons\30nvim_tree_lsp_diagnostics\a:~#nvim_tree_root_folder_modifier\25nvim_tree_auto_close\1\0\3\rMakefile\3\1\rMAKEFILE\3\1\14README.md\3\1\27vim_tree_special_files\1\4\0\0\rstartify\14dashboard\nalpha\29nvim_tree_auto_ignore_ft\25:NvimTreeRefresh<cr>\14<leader>r\24:NvimTreeToggle<cr>\n<C-n>\6n\1\0\2\fnoremap\2\vsilent\2\6g\20nvim_set_keymap\bapi\bvim\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
-- Setup for: bufferline.nvim
time([[Setup for bufferline.nvim]], true)
try_loadstring("\27LJ\1\2�\a\0\0\a\0!\0Y4\0\0\0007\0\1\0007\0\2\0003\1\3\0\16\2\0\0%\3\4\0%\4\5\0%\5\6\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\a\0%\5\b\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\t\0%\5\n\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\v\0%\5\f\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\r\0%\5\14\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\15\0%\5\16\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\17\0%\5\18\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\19\0%\5\20\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\21\0%\5\22\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\23\0%\5\24\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\25\0%\5\26\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\27\0%\5\28\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\29\0%\5\30\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\31\0%\5 \0\16\6\1\0>\2\5\1G\0\1\0!:BufferLineGoToBuffer 10<cr>\15<leader>10 :BufferLineGoToBuffer 9<cr>\14<leader>9 :BufferLineGoToBuffer 8<cr>\14<leader>8 :BufferLineGoToBuffer 7<cr>\14<leader>7 :BufferLineGoToBuffer 6<cr>\14<leader>6 :BufferLineGoToBuffer 5<cr>\14<leader>5 :BufferLineGoToBuffer 4<cr>\14<leader>4 :BufferLineGoToBuffer 3<cr>\14<leader>3 :BufferLineGoToBuffer 2<cr>\14<leader>2 :BufferLineGoToBuffer 1<cr>\14<leader>1\28:BufferLineMovePrev<cr>\14<leader><\29 :BufferLineMoveNext<cr>\14<leader>>\29:BufferLineCyclePrev<cr>\20<leader><S-Tab>\29:BufferLineCycleNext<cr>\18<leader><Tab>\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "setup", "bufferline.nvim")
time([[Setup for bufferline.nvim]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\1\2�\6\0\0\2\0\17\0\0234\0\0\0007\0\1\0003\1\3\0:\1\2\0003\1\5\0:\1\4\0003\1\a\0:\1\6\0)\1\1\0:\1\b\0)\1\1\0:\1\t\0003\1\v\0:\1\n\0003\1\r\0:\1\f\0)\1\2\0:\1\14\0)\1\2\0:\1\15\0)\1\2\0:\1\16\0G\0\1\0\29indent_blankline_enabled*indent_blankline_show_current_context$indent_blankline_use_treesitter\1\23\0\0\nclass\vreturn\rfunction\vmethod\b^if\aif\v^while\16jsx_element\t^for\bfor\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns\1\2\0\0\14README.md%indent_blankline_bufname_exclude-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\1\n\0\0\b\b┊\b┆\a¦\6|\a¦\b┆\b┊\b\31indent_blankline_char_list\1\a\0\0\thelp\rstartify\14dashboard\vpacker\nalpha\rNvimTree&indent_blankline_filetype_exclude\1\a\0\0\thelp\rstartify\14dashboard\vpacker\nalpha\rNvimTree%indent_blankline_buftype_exclude\6g\bvim\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
try_loadstring("\27LJ\1\2�\2\0\0\a\0\15\0#4\0\0\0007\0\1\0007\0\2\0003\1\3\0\16\2\0\0%\3\4\0%\4\5\0%\5\6\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\a\0%\5\b\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\t\0%\5\n\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\v\0%\5\f\0\16\6\1\0>\2\5\1\16\2\0\0%\3\4\0%\4\r\0%\5\14\0\16\6\1\0>\2\5\1G\0\1\0-:Telescope lsp_workspace_diagnostics<cr>\n<C-w>,:Telescope lsp_document_diagnostics<cr>\n<C-e>\27:Telescope buffers<cr>\n<C-b>\29:Telescope live_grep<cr>\n<C-f>\30:Telescope find_files<cr>\n<C-p>\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "setup", "telescope.nvim")
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: vim-closetag
time([[Setup for vim-closetag]], true)
try_loadstring("\27LJ\1\2�\1\0\0\2\0\a\0\t4\0\0\0007\0\1\0%\1\3\0:\1\2\0%\1\5\0:\1\4\0'\1\1\0:\1\6\0G\0\1\0%closetag_emptyTags_caseSensitive\31*.xhtml,*.jsx,*.tsx,*.vuex\29closetag_xhtml_filenames+*.html,*.xhtml,*.phtml,*.js,*.ts,*.vue\23closetag_filenames\6g\bvim\0", "setup", "vim-closetag")
time([[Setup for vim-closetag]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2�\n\0\0\15\0001\0P4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\3\14\0\0\0T\b\a�\14\0\2\0T\b\5�\14\0\4\0T\b\3�\14\0\6\0T\b\1�G\0\1\0007\b\6\0013\t/\0003\n\17\0003\v\r\0003\f\b\0007\r\a\3:\r\t\f7\r\n\0037\14\v\3\30\r\14\r:\r\f\f:\f\14\v3\f\15\0007\r\n\0037\14\v\3\30\r\14\r:\r\f\f:\f\16\v:\v\18\n3\v\19\0:\v\20\n3\v\21\0003\f\22\0:\f\23\v3\f\24\0:\f\25\v:\v\26\n7\v\27\5:\v\28\n3\v\29\0:\v\30\n7\v\31\5:\v \n2\v\0\0:\v!\n3\v\"\0:\v#\n2\v\0\0:\v$\n3\v%\0:\v&\n7\v'\a7\v(\v:\v)\n7\v*\a7\v(\v:\v+\n7\v,\a7\v(\v:\v-\n7\v.\a:\v.\n:\n0\t>\b\2\1G\0\1\0\rdefaults\1\0\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\fset_env\1\0\1\14COLORTERM\14truecolor\17path_display\16borderchars\1\t\0\0\b─\b│\b─\b│\b╭\b╮\b╯\b╰\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\6\0\0\15scratch/.*\20node_modules/.*\rbuild/.*\fdist/.*\f.git/.*\16file_sorter\19get_fzy_sorter\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\1\vmirror\1\1\0\2\nwidth\4\0����\3\20prompt_position\btop\22vimgrep_arguments\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\rmappings\1\0\v\23selection_strategy\nreset\17entry_prefix\a  \19color_devicons\2\20layout_strategy\15horizontal\ruse_less\2\21disable_devicons\1\21sorting_strategy\14ascending\18prompt_prefix\n  \17initial_mode\vinsert\rwinblend\3\0\20selection_caret\n  \6i\1\0\0\6n\1\0\0\15<leader>ga\16open_qflist\25smart_send_to_qflist\6q\1\0\0\nclose\nsetup\25telescope.previewers\22telescope.sorters\22telescope.actions\14telescope\frequire\npcall\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\1\2�\1\0\0\5\0\6\0\f4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\5\0>\2\3\1G\0\1\0\1\0\t\vrgb_fn\1\vcss_fn\1\nnames\1\bcss\2\vRRGGBB\2\tmode\15background\rRRGGBBAA\1\vhsl_fn\1\bRGB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\npcall\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-lspinstall
time([[Config for nvim-lspinstall]], true)
try_loadstring("\27LJ\1\0027\2\0\3\2\1\0\6+\0\0\0007\0\0\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1�\24nvim_buf_set_keymap7\2\0\3\2\1\0\6+\0\0\0007\0\0\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1�\24nvim_buf_set_option�\t\1\2\n\1\28\0H1\2\0\0001\3\1\0003\4\2\0\16\5\3\0%\6\3\0%\a\4\0>\5\3\1\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\0017\5\24\0007\5\25\5\15\0\5\0T\6\5�+\5\0\0007\5\26\5%\6\27\0)\a\1\0>\5\3\0010\0\0�G\0\1\0\6��\1          augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\23document_highlight\26resolved_capabilitiesR<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = 'rounded' })<cr>\15<leader>gl*<cmd>lua vim.lsp.buf.references()<cr>\15<leader>gf+<cmd>lua vim.lsp.buf.code_action()<cr>\15<leader>gaW<cmd>lua vim.lsp.diagnostic.goto_prev({ popup_opts = { border = 'rounded' } })<cr>\15<leader>gpW<cmd>lua vim.lsp.diagnostic.goto_next({ popup_opts = { border = 'rounded' } })<cr>\15<leader>gn&<cmd>lua vim.lsp.buf.rename()<cr>\15<leader>gr.<cmd>lua vim.lsp.buf.signature_help()<cr>\15<leader>gs%<cmd>lua vim.lsp.buf.hover()<cr>\15<leader>gk*<cmd>lua vim.lsp.buf.definition()<cr>\15<leader>gd\6n\27v:lua.vim.lsp.omnifunc\romnifunc\1\0\2\fnoremap\2\vsilent\2\0\0�\2\0\0\4\2\r\0\21+\0\0\0007\0\0\0007\0\1\0>\0\1\0027\1\2\0007\1\3\0017\1\4\1)\2\2\0:\2\5\0017\1\2\0007\1\3\0017\1\4\0013\2\b\0003\3\a\0:\3\t\2:\2\6\0013\1\n\0:\0\v\1+\2\1\0:\2\f\1H\1\2\0\b�\n�\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol�\2\0\0\n\4\a\0,+\0\0\0007\0\0\0>\0\1\1+\0\0\0007\0\1\0>\0\1\0024\1\2\0\16\2\0\0>\1\2\4D\4\31�+\6\1\0>\6\1\2+\a\2\0006\a\5\a\15\0\a\0T\b\20�7\b\3\a\15\0\b\0T\t\2�7\b\3\a:\b\3\0067\b\4\a\15\0\b\0T\t\2�7\b\4\a:\b\4\0067\b\5\a\15\0\b\0T\t\2�7\b\5\a:\b\5\0067\b\6\a\15\0\b\0T\t\2�7\b\6\a:\b\6\6+\b\3\0006\b\5\b7\b\0\b\16\t\6\0>\b\2\1B\4\3\3N\4�G\0\1\0\1�\v�\5�\3�\14filetypes\rroot_dir\rsettings\17init_options\npairs\22installed_servers\nsetup+\0\0\2\2\1\0\6+\0\0\0>\0\1\1+\0\1\0%\1\0\0>\0\2\1G\0\1\0\f�\a�\fbufdo e�\a\1\0\17\0%\0O4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\3\14\0\0\0T\6\5�\14\0\2\0T\6\3�\14\0\4\0T\6\1�0\0;�4\6\5\0007\6\6\0064\a\5\0007\a\a\a4\b\5\0007\b\b\b7\t\t\b1\n\n\0001\v\v\0001\f\f\0\16\r\f\0>\r\1\0017\r\14\b7\14\15\b7\14\16\0143\15\17\0003\16\18\0:\16\19\15>\r\3\2:\r\r\t4\r\5\0007\r\20\r7\r\21\r%\14\22\0003\15\23\0>\r\3\0014\r\5\0007\r\20\r7\r\21\r%\14\24\0003\15\25\0>\r\3\0014\r\5\0007\r\20\r7\r\21\r%\14\26\0003\15\27\0>\r\3\0014\r\5\0007\r\20\r7\r\21\r%\14\28\0003\15\29\0>\r\3\0013\r\30\0007\14\14\b7\15 \t\16\16\r\0>\14\3\2:\14\31\t7\14\14\b7\15\"\t\16\16\r\0>\14\3\2:\14!\t1\14$\0:\14#\0010\0\0�G\0\1\0G\0\1\0\0\22post_install_hook\19signature_help\31textDocument/signatureHelp\nhover\23textDocument/hover\1\0\2\14max_width\3P\vborder\frounded\1\0\2\ttext\b\vtexthl\30LspDiagnosticsDefaultHint\27LspDiagnosticsSignHint\1\0\2\ttext\b\vtexthl%LspDiagnosticsDefaultInformation\"LspDiagnosticsSignInformation\1\0\2\ttext\b\vtexthl!LspDiagnosticsDefaultWarning\30LspDiagnosticsSignWarning\1\0\2\ttext\b\vtexthl\31LspDiagnosticsDefaultError\28LspDiagnosticsSignError\16sign_define\afn\17virtual_text\1\0\2\fspacing\3\0\vprefix\t🦊\1\0\3\nsigns\2\14underline\2\18severity_sort\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\0\0\0\rhandlers\blsp\bcmd\bapi\bvim\22plugins/languages\14lspconfig\15lspinstall\frequire\npcall\0", "config", "nvim-lspinstall")
time([[Config for nvim-lspinstall]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2�\4\0\0\6\0\14\0\0254\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\6\0003\4\4\0002\5\0\0:\5\5\4:\4\a\0033\4\b\0002\5\0\0:\5\5\4:\4\t\0033\4\n\0002\5\0\0:\5\5\0043\5\v\0:\5\f\4:\4\r\3>\2\2\1G\0\1\0\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\30toggle_injected_languages\6t\28toggle_language_display\6I\14goto_node\t<cr>\19focus_language\6f\14show_help\6?\27toggle_anonymous_nodes\6a\21unfocus_language\6F\24toggle_query_editor\6o\1\0\3\15updatetime\3\25\20persist_queries\1\venable\2\vindent\1\0\1\venable\1\14highlight\1\0\1\21ensure_installed\ball\fdisable\1\0\2&additional_vim_regex_highlighting\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\npcall\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\1\0023\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\tinit\vcolors\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\1\2o\0\0\5\2\3\0\14+\0\0\0007\0\0\0+\1\1\0)\2\2\0)\3\1\0)\4\2\0>\0\5\2+\1\0\0007\1\1\1\16\2\0\0%\3\2\0)\4\1\0>\1\4\1G\0\1\0\0\0\3�\vnormal\18nvim_feedkeys\27nvim_replace_termcodes�\2\1\3\a\1\16\0\28\16\4\0\0007\3\0\0%\5\1\0%\6\2\0>\3\4\2\16\4\3\0007\3\0\3%\5\3\0%\6\4\0>\3\4\0023\4\5\0:\1\6\4:\0\a\4\15\0\2\0T\5\6�3\5\t\0;\3\2\5;\2\3\0053\6\n\0;\6\4\5:\5\b\0043\5\v\0:\1\f\0051\6\r\0:\6\14\5:\4\15\0050\0\0�H\5\2\0\2�\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\fnoremap\2\vsilent\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\6\16hl_shortcut\fSpecial\vcursor\3\5\19align_shortcut\nright\rposition\vcenter\nwidth\3\24\ahl\31LspSagaSignatureHelpBorder\r<leader>\bSPC\5\a%s\tgsub�\17\1\0\15\0007\1m4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�0\0e�4\2\3\0007\2\4\0024\3\3\0007\3\5\0033\4\6\0003\5\a\0:\5\b\0043\5\t\0:\5\n\0044\5\v\0007\5\f\5%\6\r\0>\5\2\2\16\a\5\0007\6\14\5%\b\15\0>\6\3\2\16\b\5\0007\a\16\5>\a\2\0013\a\17\0%\b\18\0\16\t\6\0%\n\19\0$\b\n\b:\b\b\a3\b\20\0:\b\n\a1\b\21\0003\t\22\0002\n\6\0\16\v\b\0%\f\23\0%\r\24\0%\14\25\0>\v\4\2;\v\1\n\16\v\b\0%\f\26\0%\r\27\0%\14\28\0>\v\4\2;\v\2\n\16\v\b\0%\f\29\0%\r\30\0%\14\31\0>\v\4\2;\v\3\n\16\v\b\0%\f \0%\r!\0%\14\"\0>\v\4\2;\v\4\n\16\v\b\0%\f#\0%\r$\0%\14%\0>\v\4\0<\v\0\0:\n\b\t3\n&\0:\n\n\t3\n'\0003\v(\0:\v\n\n3\v)\0:\4*\v:\a+\v:\t,\v:\n-\v3\f2\0002\r\t\0003\14.\0;\14\1\r7\14*\v;\14\2\r3\14/\0;\14\3\r7\14+\v;\14\4\r3\0140\0;\14\5\r7\14,\v;\14\6\r3\0141\0;\14\a\r7\14-\v;\14\b\r:\r3\f3\r4\0:\r\n\f7\r5\1\16\14\f\0>\r\2\1\16\r\3\0%\0146\0>\r\2\0010\0\0�G\0\1\0G\0\1\0001autocmd FileType alpha setlocal nofoldenable\nsetup\1\0\1\vmargin\3\5\vlayout\1\0\0\1\0\2\bval\3\1\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\1\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\vfooter\fbuttons\24plugins_total_stats\vheader\1\0\0\1\0\2\rposition\vcenter\ahl!LspDiagnosticsDefaultWarning\1\0\2\bvalCA clever person solves a problem.\n    A wise person AVOIDS it.\ttype\ttext\1\0\2\fspacing\3\1\rposition\vcenter\f:qa<cr>\14  Quit\6q5:e $HOME/.config/nvim/lua/default_config.lua<cr>\18  Settings\6s\28:Telescope oldfiles<cr>\22  Recent Files\6r\29:Telescope live_grep<cr>\19  Find Word\6f\30:Telescope find_files<cr>\19  Find File\6p\1\0\1\ttype\ngroup\0\1\0\2\rposition\vcenter\ahl\29LspSagaCodeActionContent\17 plugins \23Madvim has loaded \1\0\1\ttype\ttext\nclose\a*a\treadTfd -d 1 . $HOME\"/.local/share/nvim/site/pack/packer/start\" | wc -l | tr -d \"\n\" \npopen\aio\topts\1\0\2\rposition\vcenter\ahl\fSpecial\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\bcmd\bapi\bvim\nalpha\frequire\npcall\v����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]

-- Config for: nvim-web-devicons
try_loadstring("\27LJ\1\2�\n\0\0\n\0D\0|4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\2\0T\4\3�\14\0\0\0T\4\1�G\0\1\0007\4\4\0017\5\5\0033\6B\0003\a\t\0003\b\6\0007\t\a\4:\t\b\b:\b\n\a3\b\v\0007\t\a\4:\t\b\b:\b\f\a3\b\r\0007\t\a\4:\t\b\b:\b\14\a3\b\15\0007\t\a\4:\t\b\b:\b\16\a3\b\17\0007\t\18\4:\t\b\b:\b\19\a3\b\20\0007\t\a\4:\t\b\b:\b\21\a3\b\22\0007\t\23\4:\t\b\b:\b\24\a3\b\25\0007\t\18\4:\t\b\b:\b\26\a3\b\27\0007\t\28\4:\t\b\b:\b\29\a3\b\30\0007\t\28\4:\t\b\b:\b\31\a3\b \0007\t\23\4:\t\b\b:\b!\a3\b\"\0007\t\23\4:\t\b\b:\b#\a3\b$\0007\t\18\4:\t\b\b:\b%\a3\b&\0007\t\a\4:\t\b\b:\b'\a3\b(\0007\t\a\4:\t\b\b:\b)\a3\b*\0007\t\a\4:\t\b\b:\b+\a3\b,\0007\t\a\4:\t\b\b:\b-\a3\b.\0007\t\28\4:\t\b\b:\b/\a3\b0\0007\t1\4:\t\b\b:\b2\a3\b3\0007\t\a\4:\t\b\b:\b4\a3\b5\0007\t\a\4:\t\b\b:\b6\a3\b7\0007\t\18\4:\t\b\b:\b8\a3\b9\0007\t\23\4:\t\b\b:\b:\a3\b;\0007\t<\4:\t\b\b:\b=\a3\b>\0007\t\23\4:\t\b\b:\b?\a3\b@\0007\t\23\4:\t\b\b:\bA\a:\aC\6>\5\2\1G\0\1\0\roverride\1\0\0\bzip\1\0\2\tname\bzip\ticon\b\axz\1\0\2\tname\axz\ticon\b\bvue\ngreen\1\0\2\tname\bvue\ticon\b﵂\brpm\1\0\2\tname\brpm\ticon\b\arb\1\0\2\tname\arb\ticon\b\ats\1\0\2\tname\ats\ticon\b\ttoml\1\0\2\tname\ttoml\ticon\b\apy\vyellow\1\0\2\tname\apy\ticon\b\bpng\1\0\2\tname\bpng\ticon\b\bout\1\0\2\tname\bout\ticon\b\bmp4\1\0\2\tname\bmp4\ticon\b\bmp3\1\0\2\tname\bmp3\ticon\b\blua\1\0\2\tname\blua\ticon\b\tlock\1\0\2\tname\tlock\ticon\b\akt\1\0\2\tname\akt\ticon\t󱈙\ajs\1\0\2\tname\ajs\ticon\b\bjpg\1\0\2\tname\bjpg\ticon\b\tjpeg\fmagenta\1\0\2\tname\tjpeg\ticon\b\tjava\1\0\2\tname\tjava\ticon\b\thtml\vorange\1\0\2\tname\thtml\ticon\b\15Dockerfile\1\0\2\tname\15Dockerfile\ticon\b\bdeb\bred\1\0\2\tname\bdeb\ticon\b\bcss\1\0\2\tname\bcss\ticon\b\bcpp\1\0\2\tname\bcpp\ticon\b\acc\1\0\2\tname\acc\ticon\b\6c\1\0\0\ncolor\tblue\1\0\2\tname\6c\ticon\b\nsetup\vcolors\22nvim-web-devicons\22colors.highlights\frequire\npcall\0", "config", "nvim-web-devicons")

vim.cmd [[ packadd galaxyline.nvim ]]

-- Config for: galaxyline.nvim
try_loadstring("\27LJ\1\2'\0\0\1\2\0\0\a+\0\0\0>\0\1\2\15\0\0\0T\1\2�+\0\1\0>\0\1\2H\0\2\0\19�\20�;\0\0\2\1\2\0\n+\0\0\0007\0\0\0\15\0\0\0T\1\2�\a\0\1\0T\1\2�)\1\1\0H\1\2\0)\1\2\0H\1\2\0\r�\5\rfiletype�\1\0\1\a\0\f\0)4\1\0\0007\1\1\0017\1\2\1\15\0\1\0T\2\b�7\2\3\1\15\0\2\0T\2\5�7\2\3\1\19\2\2\0'\3\0\0\3\2\3\0T\2\1�G\0\1\0002\2\3\b7\3\4\1\14\0\3\0T\4\1�'\3\0\0;\3\0\0027\3\5\1\14\0\3\0T\4\1�'\3\0\0;\3\1\0027\3\6\1\14\0\3\0T\4\1�'\3\0\0;\3\2\0027\3\a\0006\3\3\2\14\0\3\0T\4\2�%\4\b\0H\4\2\0004\4\t\0007\4\n\4%\5\v\0\16\6\3\0@\4\3\0\b%s \vformat\vstring\5\vstatus\fremoved\fchanged\nadded\thead\25gitsigns_status_dict\6b\bvim�\1\0\0\t\1\t\1.2\0\0\0004\1\0\0+\2\0\0007\2\1\2'\3\1\0+\4\0\0007\4\2\4%\5\3\0>\4\2\0=\2\1\0=\1\0\4T\4\17�+\6\0\0007\6\4\6\16\a\5\0>\6\2\2\t\6\0\0T\6\v�+\6\0\0007\6\5\6\16\a\5\0>\6\2\2\t\6\0\0T\6\5�4\6\6\0007\6\a\6\16\a\0\0\16\b\5\0>\6\3\1A\4\3\3N\4�4\1\0\0\16\2\0\0>\1\2\4T\4\b�+\6\0\0007\6\2\6%\a\b\0>\6\2\2\5\5\6\0T\6\2�)\6\2\0H\6\2\0A\4\3\3N\4�G\0\1\0\f�\5\vinsert\ntable\14buflisted\14bufexists\6$\nbufnr\nrange\vipairs\2�\1\0\0\3\2\14\0\0313\0\1\0+\1\0\0007\1\0\1:\1\2\0+\1\0\0007\1\3\1:\1\4\0+\1\0\0007\1\5\1:\1\6\0+\1\0\0007\1\a\1:\1\b\0+\1\0\0007\1\a\1:\1\t\0+\1\0\0007\1\a\1:\1\n\0+\1\0\0007\1\v\1:\1\f\0+\1\1\0007\1\r\1>\1\1\0026\1\1\0\v\1\0\0T\2\2�+\2\0\0007\1\v\2H\1\2\0\25�\f�\tmode\6R\bred\6v\6\22\6V\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tblueH\0\0\3\2\2\0\b+\0\0\0%\1\0\0+\2\1\0>\2\1\2$\1\2\1>\0\2\1%\0\1\0H\0\2\0\14�\27�\b▊\29hi GalaxyEmptyBar guifg=�\2\0\0\6\3\5\0\0293\0\0\0003\1\1\0+\2\0\0%\3\2\0+\4\1\0>\4\1\2$\3\4\3>\2\2\1+\2\2\0007\2\3\2>\2\1\0026\2\2\0+\3\2\0007\3\3\3>\3\1\0026\3\3\1\14\0\2\0T\4\4�+\4\2\0007\4\3\4>\4\1\2\16\2\4\0\14\0\3\0T\4\1�%\3\4\0\16\4\3\0\16\5\2\0$\4\5\4H\4\2\0\14�\27�\f�\b\tmode\27hi GalaxyViMode guifg=\1\0\a\6V\t﬏ \6c\tגּ \6\22\t﬏ \6R\6 \6n\t \6v\t﬏ \6i\t \1\0\a\6V\vVISUAL\6c\fCOMMAND\6\22\vVISUAL\6R\fREPLACE\6n\vNORMAL\6v\vVISUAL\6i\vINSERT\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\b�\1\0\0\5\1\5\0\25+\0\0\0>\0\1\2\14\0\0\0T\1\2�%\1\0\0H\1\2\0\15\0\0\0T\1\16�4\1\1\0007\1\2\1\16\2\0\0>\1\2\2'\2\28\0\1\2\1\0T\1\t�4\1\1\0007\1\3\1\16\2\0\0'\3\1\0'\4\25\0>\1\4\2%\2\4\0$\1\2\1H\1\2\0H\0\2\0\16�\b...\bsub\blen\vstring\14Undefined!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\0!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\1!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\2\17\0\0\1\0\1\0\2%\0\0\0H\0\2\0\6 '\0\0\1\2\0\0\a+\0\0\0>\0\1\2\15\0\0\0T\1\2�+\0\1\0>\0\1\2H\0\2\0\19�\26�\18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a| \18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a| Q\0\0\1\1\3\0\r+\0\0\0007\0\0\0\15\0\0\0T\0\4�+\0\0\0007\0\0\0\a\0\1\0T\0\2�%\0\2\0H\0\2\0+\0\0\0007\0\0\0H\0\2\0\r�\14undefined\5\rfiletype\31\0\0\2\1\1\0\5+\0\0\0>\0\1\2%\1\0\0$\0\1\0H\0\2\0\17�\6 �\23\1\0!\0\0�\0034\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\0034\b\0\0004\t\1\0%\n\6\0>\b\3\0034\n\0\0004\v\1\0%\f\a\0>\n\3\3\14\0\0\0T\f\v�\14\0\2\0T\f\t�\14\0\4\0T\f\a�\14\0\6\0T\f\5�\14\0\b\0T\f\3�\14\0\n\0T\f\1�0\0}�4\f\b\0007\f\t\f4\r\b\0007\r\n\r4\14\b\0007\14\v\0147\15\f\0037\16\r\0057\17\14\a7\18\15\t7\19\16\t7\20\17\t7\21\18\v1\22\19\0001\23\20\0001\24\21\0007\25\22\0011\26\23\0001\27\24\0003\28\26\0:\28\25\0037\28\27\0153\29#\0003\30\29\0001\31\28\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30$\29;\29\1\0287\28\27\0153\29'\0003\30&\0001\31%\0:\31\30\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30(\29;\29\2\0287\28\27\0153\29+\0003\30)\0:\18*\0302\31\3\0;\21\1\0317  \25; \2\31:\31!\30:\30,\29;\29\3\0287\28\27\0153\29/\0003\30-\0:\18*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0300\29;\29\4\0287\28\27\0153\0294\0003\0301\0:\22*\0301\0312\0:\31\30\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0305\29;\29\5\0287\28\27\0153\0298\0003\0306\0:\22*\0301\0317\0:\31\30\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0309\29;\29\6\0287\28\27\0153\29=\0003\30:\0:\22*\0301\31;\0:\31\30\0302\31\3\0007 <\25; \1\0317  \25; \2\31:\31!\30:\30>\29;\29\a\0287\28\27\0153\29A\0003\30?\0:\22*\0301\31@\0:\31\30\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30B\29;\29\b\0287\28\27\0153\29E\0003\30C\0:\22*\0301\31D\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30F\29;\29\t\0287\28\27\0153\29I\0003\30G\0:\22*\0301\31H\0:\31\30\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31!\30:\30J\29;\29\n\0287\28\27\0153\29L\0003\30K\0002\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30M\29;\29\v\0287\28\27\0153\29O\0003\30N\0002\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30P\29;\29\f\0287\28\27\0153\29S\0003\30Q\0002\31\3\0007 R\25; \1\0317  \25; \2\31:\31!\30:\30T\29;\29\r\0287\28\27\0153\29W\0003\30U\0002\31\3\0007 V\25; \1\0317  \25; \2\31:\31!\30:\30X\29;\29\14\0287\28Y\0153\29[\0003\30Z\0:\19*\0302\31\3\0007 <\25; \1\0317  \25; \2\31:\31!\30:\30\\\29;\29\1\0287\28Y\0153\29a\0003\30^\0001\31]\0:\31*\0301\31_\0:\31\30\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30b\29;\29\2\0287\28Y\0153\29d\0003\30c\0:\19*\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30e\29;\29\3\0287\28Y\0153\29h\0003\30f\0:\19*\0301\31g\0:\31\30\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30b\29;\29\4\0287\28Y\0153\29k\0003\30j\0001\31i\0:\31\30\0302\31\3\0007 V\25; \1\0317  \25; \2\31:\31!\30:\30l\29;\29\5\0287\28Y\0153\29n\0003\30m\0002\31\3\0007 R\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31\"\30:\30o\29;\29\6\0287\28Y\0153\29q\0003\30p\0:\19*\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31\"\30:\30r\29;\29\a\0287\28Y\0153\29u\0003\30s\0:\19*\0301\31t\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30v\29;\29\b\0287\28w\0153\29y\0003\30x\0:\23*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\30:\30z\29;\29\1\0287\28{\0153\29}\0003\30|\0:\23*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\30:\30~\29;\29\1\0280\0\0�G\0\1\0G\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\20short_line_left\14ScrollBar\1\0\0\0\1\0\0\fPerCent\1\0\0\1\0\3\rprovider\16LinePercent\ticon\b\14separator\b | \rLineInfo\1\0\0\1\0\3\rprovider\15LineColumn\ticon\t \14separator\b | \15FileFormat\1\0\0\1\0\1\ticon\t \0\1\0\0\0\1\0\1\14separator\6 \17GetLspClient\1\0\0\1\0\2\rprovider\17GetLspClient\ticon\t \14Separator\1\0\0\nwhite\0\1\0\1\14separator\6 \0\17BufferNumber\1\0\0\1\0\2\rprovider\17BufferNumber\ticon\t﬘ \nright\19DiagnosticHint\1\0\0\tblue\1\0\2\rprovider\19DiagnosticHint\ticon\t \19DiagnosticInfo\1\0\0\fmagenta\1\0\2\rprovider\19DiagnosticInfo\ticon\t \19DiagnosticWarn\1\0\0\1\0\2\rprovider\19DiagnosticWarn\ticon\t \20DiagnosticError\1\0\0\1\0\2\rprovider\20DiagnosticError\ticon\t \nSpace\1\0\0\0\1\0\0\15DiffRemove\1\0\0\0\1\0\1\ticon\n  \17DiffModified\1\0\0\0\1\0\1\ticon\n  \fDiffAdd\1\0\0\ngreen\0\1\0\1\ticon\n  \14GitBranch\1\0\0\0\1\0\1\14separator\6 \fGitIcon\1\0\0\vorange\0\1\0\1\14separator\6 \rFileName\1\0\0\afg\1\0\2\rprovider\rFileName\14separator\6 \rFileIcon\1\0\0\14condition\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\0\1\14separator\a  \0\rEmptyBar\1\0\0\24separator_highlight\14highlight\abg\bred\rprovider\1\0\1\14separator\6 \0\tleft\1\4\0\0\rNvimTree\vpacker\bfzf\20short_line_list\0\0\vcolors\0\0\0\24get_file_icon_color\24check_git_workspace\18hide_in_width\21buffer_not_empty\23scrollbar_instance\19get_git_branch\fsection\bcmd\abo\afn\bvim!galaxyline.provider_fileinfo\25galaxyline.condition#galaxyline.provider_extensions\28galaxyline.provider_vcs\15galaxyline\22colors.highlights\frequire\npcall\0", "config", "galaxyline.nvim")

vim.cmd [[ packadd bufferline.nvim ]]

-- Config for: bufferline.nvim
try_loadstring("\27LJ\1\2U\0\1\4\1\4\0\f7\1\0\0\16\2\1\0007\1\1\1%\3\2\0>\1\3\2\15\0\1\0T\2\4�+\1\0\0007\1\3\0017\2\0\0@\1\2\0G\0\1\0\2�\16fnamemodify\t%.md\nmatch\tname�\5\1\0\b\0\r\0\0234\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�0\0\15�4\2\3\0007\2\4\0027\3\5\0013\4\v\0003\5\6\0001\6\a\0:\6\b\0052\6\3\0003\a\t\0;\a\1\6:\6\n\5:\5\f\4>\3\2\0010\0\0�G\0\1\0G\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\19name_formatter\0\1\0\23\rtab_size\3\16\22left_trunc_marker\b\fsort_by\aid\24show_tab_indicators\2\16diagnostics\1\28show_buffer_close_icons\1\20separator_style\tthin\25enforce_regular_tabs\1\24right_mouse_command\16bdelete! %d\18close_command\16bdelete! %d\22buffer_close_icon\b\20max_name_length\3\14\15close_icon\b\22show_buffer_icons\2\fnumbers\tnone\24persist_buffer_sort\2\23right_trunc_marker\b\22max_prefix_length\3\n\23left_mouse_command\14buffer %d\27always_show_bufferline\1\20show_close_icon\1\19indicator_icon\b▎\18modified_icon\b●\nsetup\afn\bvim\15bufferline\frequire\npcall\0", "config", "bufferline.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gdiff lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiff", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gvdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gvdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSPlaygroundToggle lua require("packer.load")({'playground'}, { cmd = "TSPlaygroundToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gw lua require("packer.load")({'vim-fugitive'}, { cmd = "Gw", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gwrite lua require("packer.load")({'vim-fugitive'}, { cmd = "Gwrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim', 'vim-closetag'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'emmet-vim'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'emmet-vim', 'vim-closetag', 'vim-jsx-pretty'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'emmet-vim', 'vim-closetag', 'vim-jsx-pretty'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'emmet-vim', 'vim-closetag'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'emmet-vim', 'vim-closetag', 'vim-jsx-pretty'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'emmet-vim', 'vim-closetag', 'vim-jsx-pretty'}, { ft = "javascript" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'emmet-vim', 'vim-closetag', 'vim-surround', 'LuaSnip'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'indent-blankline.nvim', 'gitsigns.nvim', 'nvim-comment', 'neoscroll.nvim', 'vim-multiple-cursors'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
