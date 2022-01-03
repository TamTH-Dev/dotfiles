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
    config = { "\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\1\2o\0\0\5\2\3\0\14+\0\0\0007\0\0\0+\1\1\0)\2\2\0)\3\1\0)\4\2\0>\0\5\2+\1\0\0007\1\1\1\16\2\0\0%\3\2\0)\4\1\0>\1\4\1G\0\1\0\0\0\3�\vnormal\18nvim_feedkeys\27nvim_replace_termcodes�\2\1\3\a\1\16\0\28\16\4\0\0007\3\0\0%\5\1\0%\6\2\0>\3\4\2\16\4\3\0007\3\0\3%\5\3\0%\6\4\0>\3\4\0023\4\5\0:\1\6\4:\0\a\4\15\0\2\0T\5\6�3\5\t\0;\3\2\5;\2\3\0053\6\n\0;\6\4\5:\5\b\0043\5\v\0:\1\f\0051\6\r\0:\6\14\5:\4\15\0050\0\0�H\5\2\0\2�\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\fnoremap\2\vsilent\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\6\16hl_shortcut\fSpecial\vcursor\3\5\19align_shortcut\nright\rposition\vcenter\nwidth\3\24\ahl\31LspSagaSignatureHelpBorder\r<leader>\bSPC\5\a%s\tgsub�\16\1\0\15\0004\1g4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�0\0_�4\2\3\0007\2\4\0024\3\3\0007\3\5\0033\4\6\0003\5\a\0:\5\b\0043\5\t\0:\5\n\0044\5\v\0007\5\f\5%\6\r\0>\5\2\2\16\a\5\0007\6\14\5%\b\15\0>\6\3\2\16\b\5\0007\a\16\5>\a\2\0013\a\17\0%\b\18\0\16\t\6\0%\n\19\0$\b\n\b:\b\b\a3\b\20\0:\b\n\a1\b\21\0003\t\22\0002\n\5\0\16\v\b\0%\f\23\0%\r\24\0%\14\25\0>\v\4\2;\v\1\n\16\v\b\0%\f\26\0%\r\27\0%\14\28\0>\v\4\2;\v\2\n\16\v\b\0%\f\29\0%\r\30\0%\14\31\0>\v\4\2;\v\3\n\16\v\b\0%\f \0%\r!\0%\14\"\0>\v\4\0<\v\0\0:\n\b\t3\n#\0:\n\n\t3\n$\0003\v%\0:\v\n\n3\v&\0:\4'\v:\a(\v:\t)\v:\n*\v3\f/\0002\r\t\0003\14+\0;\14\1\r7\14'\v;\14\2\r3\14,\0;\14\3\r7\14(\v;\14\4\r3\14-\0;\14\5\r7\14)\v;\14\6\r3\14.\0;\14\a\r7\14*\v;\14\b\r:\r0\f3\r1\0:\r\n\f7\r2\1\16\14\f\0>\r\2\1\16\r\3\0%\0143\0>\r\2\0010\0\0�G\0\1\0G\0\1\0001autocmd FileType alpha setlocal nofoldenable\nsetup\1\0\1\vmargin\3\5\vlayout\1\0\0\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\vfooter\fbuttons\24plugins_total_stats\vheader\1\0\0\1\0\2\rposition\vcenter\ahl!LspDiagnosticsDefaultWarning\1\0\2\bval?A clever person solves a problem. A wise person avoids it.\ttype\ttext\1\0\2\fspacing\3\1\rposition\vcenter\f:qa<CR>\14  Quit\6q5:e $HOME/.config/nvim/lua/default_config.lua<CR>\18  Settings\6s\f:Rg<CR>\19  Find Word\6f\15:Files<CR>\19  Find File\6p\1\0\1\ttype\ngroup\0\1\0\2\rposition\vcenter\ahl\29LspSagaCodeActionContent\17 plugins \23Madvim has loaded \1\0\1\ttype\ttext\nclose\a*a\treadTfd -d 1 . $HOME\"/.local/share/nvim/site/pack/packer/start\" | wc -l | tr -d \"\n\" \npopen\aio\topts\1\0\2\rposition\vcenter\ahl\fSpecial\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\bcmd\bapi\bvim\nalpha\frequire\npcall\t����\4\0" },
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
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    load_after = {
      ["nvim-cmp"] = true,
      ["nvim-snippy"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    config = { "\27LJ\1\2�\r\0\0\t\0003\0I4\0\0\0007\0\1\0007\1\2\0004\2\0\0007\2\3\0023\3\4\0003\4\6\0:\4\5\0023\4\b\0:\4\a\2'\4\0\0:\4\t\2\16\4\1\0%\5\n\0%\6\v\0%\a\f\0\16\b\3\0>\4\5\1\16\4\1\0%\5\n\0%\6\r\0%\a\14\0\16\b\3\0>\4\5\1\16\4\1\0%\5\n\0%\6\15\0%\a\16\0\16\b\3\0>\4\5\0013\4\19\0003\5\18\0:\5\20\0043\5\21\0:\5\22\0043\5\23\0:\5\24\0043\5\25\0:\5\26\0043\5\27\0:\5\28\0043\5\29\0:\5\30\0043\5\31\0:\5 \0043\5!\0:\5\"\0043\5#\0:\5$\0043\5%\0:\5&\0043\5'\0:\5(\0043\5)\0:\5*\0043\5+\0:\5,\4:\4\17\0023\4.\0:\4-\0027\4/\0%\0050\0)\6\1\0>\4\3\0017\4/\0%\0051\0)\6\1\0>\4\3\0017\4/\0%\0052\0)\6\1\0>\4\3\1G\0\1\0�\4      function! RipgrepFzf(query, fullscreen)\n        let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s -g \"!{node_modules,.git,build,dist,.cache,cache,.idea}\" || true'\n        let initial_command = printf(command_fmt, shellescape(a:query))\n        let reload_command = printf(command_fmt, '{q}')\n        let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}\n        call fzf#vim#grep(initial_command, 1, a:fullscreen)\n      endfunction\n      command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)\n    Zcommand! -bang -nargs=? -complete=dir Buffers call fzf#vim#buffers(<q-args>, <bang>0)Vcommand! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)\14nvim_exec\1\0\3\vctrl-t\14tab split\vctrl-x\nsplit\vctrl-v\vvsplit\15fzf_action\vheader\1\3\0\0\afg\22TSVariableBuiltin\fspinner\1\3\0\0\afg\23NvimTreeRootFolder\vmarker\1\3\0\0\afg\23NvimTreeRootFolder\fpointer\1\3\0\0\afg\23NvimTreeRootFolder\vprompt\1\3\0\0\afg\14Statement\vborder\1\3\0\0\afg\23NvimTreeRootFolder\tinfo\1\3\0\0\afg\14Directory\bhl+\1\3\0\0\afg\24DiagnosticSignError\bbg+\1\3\0\0\abg\16EndOfBuffer\bfg+\1\3\0\0\afg\fSpecial\ahl\1\3\0\0\afg\24DiagnosticSignError\abg\1\3\0\0\abg\16EndOfBuffer\afg\1\0\0\1\3\0\0\afg\fNonText\15fzf_colors\17:Buffers<CR>\n<C-b>\f:Rg<CR>\n<C-f>\15:Files<CR>\n<C-p>\6n\24fzf_nvim_statusline\1\0\1\nright\vhidden\23fzf_preview_window\1\0\1\tdown\t~40%\15fzf_layout\1\0\2\fnoremap\2\vsilent\2\6g\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\1\2'\0\0\1\2\0\0\a+\0\0\0>\0\1\2\15\0\0\0T\1\2�+\0\1\0>\0\1\2H\0\2\0\19�\20�;\0\0\2\1\2\0\n+\0\0\0007\0\0\0\15\0\0\0T\1\2�\a\0\1\0T\1\2�)\1\1\0H\1\2\0)\1\2\0H\1\2\0\r�\5\rfiletype�\1\0\1\a\0\f\0)4\1\0\0007\1\1\0017\1\2\1\15\0\1\0T\2\b�7\2\3\1\15\0\2\0T\2\5�7\2\3\1\19\2\2\0'\3\0\0\3\2\3\0T\2\1�G\0\1\0002\2\3\b7\3\4\1\14\0\3\0T\4\1�'\3\0\0;\3\0\0027\3\5\1\14\0\3\0T\4\1�'\3\0\0;\3\1\0027\3\6\1\14\0\3\0T\4\1�'\3\0\0;\3\2\0027\3\a\0006\3\3\2\14\0\3\0T\4\2�%\4\b\0H\4\2\0004\4\t\0007\4\n\4%\5\v\0\16\6\3\0@\4\3\0\b%s \vformat\vstring\5\vstatus\fremoved\fchanged\nadded\thead\25gitsigns_status_dict\6b\bvim�\1\0\0\t\1\t\1.2\0\0\0004\1\0\0+\2\0\0007\2\1\2'\3\1\0+\4\0\0007\4\2\4%\5\3\0>\4\2\0=\2\1\0=\1\0\4T\4\17�+\6\0\0007\6\4\6\16\a\5\0>\6\2\2\t\6\0\0T\6\v�+\6\0\0007\6\5\6\16\a\5\0>\6\2\2\t\6\0\0T\6\5�4\6\6\0007\6\a\6\16\a\0\0\16\b\5\0>\6\3\1A\4\3\3N\4�4\1\0\0\16\2\0\0>\1\2\4T\4\b�+\6\0\0007\6\2\6%\a\b\0>\6\2\2\5\5\6\0T\6\2�)\6\2\0H\6\2\0A\4\3\3N\4�G\0\1\0\f�\5\vinsert\ntable\14buflisted\14bufexists\6$\nbufnr\nrange\vipairs\2�\1\0\0\3\2\14\0\0313\0\1\0+\1\0\0007\1\0\1:\1\2\0+\1\0\0007\1\3\1:\1\4\0+\1\0\0007\1\5\1:\1\6\0+\1\0\0007\1\a\1:\1\b\0+\1\0\0007\1\a\1:\1\t\0+\1\0\0007\1\a\1:\1\n\0+\1\0\0007\1\v\1:\1\f\0+\1\1\0007\1\r\1>\1\1\0026\1\1\0\v\1\0\0T\2\2�+\2\0\0007\1\v\2H\1\2\0\25�\f�\tmode\6R\bred\6v\6\22\6V\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tblueH\0\0\3\2\2\0\b+\0\0\0%\1\0\0+\2\1\0>\2\1\2$\1\2\1>\0\2\1%\0\1\0H\0\2\0\14�\27�\b▊\29hi GalaxyEmptyBar guifg=�\2\0\0\6\3\5\0\0293\0\0\0003\1\1\0+\2\0\0%\3\2\0+\4\1\0>\4\1\2$\3\4\3>\2\2\1+\2\2\0007\2\3\2>\2\1\0026\2\2\0+\3\2\0007\3\3\3>\3\1\0026\3\3\1\14\0\2\0T\4\4�+\4\2\0007\4\3\4>\4\1\2\16\2\4\0\14\0\3\0T\4\1�%\3\4\0\16\4\3\0\16\5\2\0$\4\5\4H\4\2\0\14�\27�\f�\t \tmode\27hi GalaxyViMode guifg=\1\0\b\6V\t﬏ \6c\tגּ \6\22\t﬏ \6R\t \6n\t \6s\t \6v\t﬏ \6i\t \1\0\b\6V\vVISUAL\6c\fCOMMAND\6\22\vVISUAL\6R\fREPLACE\6n\vNORMAL\6s\fSNIPPET\6v\vVISUAL\6i\vINSERT\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\b�\1\0\0\5\1\5\0\25+\0\0\0>\0\1\2\14\0\0\0T\1\2�%\1\0\0H\1\2\0\15\0\0\0T\1\16�4\1\1\0007\1\2\1\16\2\0\0>\1\2\2'\2\28\0\1\2\1\0T\1\t�4\1\1\0007\1\3\1\16\2\0\0'\3\1\0'\4\25\0>\1\4\2%\2\4\0$\1\2\1H\1\2\0H\0\2\0\16�\b...\bsub\blen\vstring\14Undefined!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\0!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\1!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\2\17\0\0\1\0\1\0\2%\0\0\0H\0\2\0\6 '\0\0\1\2\0\0\a+\0\0\0>\0\1\2\15\0\0\0T\1\2�+\0\1\0>\0\1\2H\0\2\0\19�\26�\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\t \20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\t Q\0\0\1\1\3\0\r+\0\0\0007\0\0\0\15\0\0\0T\0\4�+\0\0\0007\0\0\0\a\0\1\0T\0\2�%\0\2\0H\0\2\0+\0\0\0007\0\0\0H\0\2\0\r�\14undefined\5\rfiletype\31\0\0\2\1\1\0\5+\0\0\0>\0\1\2%\1\0\0$\0\1\0H\0\2\0\17�\6 �\23\1\0!\0\0�\0034\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\0034\b\0\0004\t\1\0%\n\6\0>\b\3\0034\n\0\0004\v\1\0%\f\a\0>\n\3\3\14\0\0\0T\f\v�\14\0\2\0T\f\t�\14\0\4\0T\f\a�\14\0\6\0T\f\5�\14\0\b\0T\f\3�\14\0\n\0T\f\1�0\0}�4\f\b\0007\f\t\f4\r\b\0007\r\n\r4\14\b\0007\14\v\0147\15\f\0037\16\r\0057\17\14\a7\18\15\t7\19\16\t7\20\17\t7\21\18\v1\22\19\0001\23\20\0001\24\21\0007\25\22\0011\26\23\0001\27\24\0003\28\26\0:\28\25\0037\28\27\0153\29#\0003\30\29\0001\31\28\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30$\29;\29\1\0287\28\27\0153\29'\0003\30&\0001\31%\0:\31\30\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30(\29;\29\2\0287\28\27\0153\29+\0003\30)\0:\18*\0302\31\3\0;\21\1\0317  \25; \2\31:\31!\30:\30,\29;\29\3\0287\28\27\0153\29/\0003\30-\0:\18*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0300\29;\29\4\0287\28\27\0153\0294\0003\0301\0:\22*\0301\0312\0:\31\30\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0305\29;\29\5\0287\28\27\0153\0298\0003\0306\0:\22*\0301\0317\0:\31\30\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0309\29;\29\6\0287\28\27\0153\29=\0003\30:\0:\22*\0301\31;\0:\31\30\0302\31\3\0007 <\25; \1\0317  \25; \2\31:\31!\30:\30>\29;\29\a\0287\28\27\0153\29A\0003\30?\0:\22*\0301\31@\0:\31\30\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30B\29;\29\b\0287\28\27\0153\29E\0003\30C\0:\22*\0301\31D\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30F\29;\29\t\0287\28\27\0153\29I\0003\30G\0:\22*\0301\31H\0:\31\30\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31!\30:\30J\29;\29\n\0287\28\27\0153\29L\0003\30K\0002\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30M\29;\29\v\0287\28\27\0153\29O\0003\30N\0002\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30P\29;\29\f\0287\28\27\0153\29S\0003\30Q\0002\31\3\0007 R\25; \1\0317  \25; \2\31:\31!\30:\30T\29;\29\r\0287\28\27\0153\29W\0003\30U\0002\31\3\0007 V\25; \1\0317  \25; \2\31:\31!\30:\30X\29;\29\14\0287\28Y\0153\29[\0003\30Z\0:\19*\0302\31\3\0007 <\25; \1\0317  \25; \2\31:\31!\30:\30\\\29;\29\1\0287\28Y\0153\29a\0003\30^\0001\31]\0:\31*\0301\31_\0:\31\30\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30b\29;\29\2\0287\28Y\0153\29d\0003\30c\0:\19*\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30e\29;\29\3\0287\28Y\0153\29h\0003\30f\0:\19*\0301\31g\0:\31\30\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30b\29;\29\4\0287\28Y\0153\29k\0003\30j\0001\31i\0:\31\30\0302\31\3\0007 V\25; \1\0317  \25; \2\31:\31!\30:\30l\29;\29\5\0287\28Y\0153\29n\0003\30m\0002\31\3\0007 R\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31\"\30:\30o\29;\29\6\0287\28Y\0153\29q\0003\30p\0:\19*\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31\"\30:\30r\29;\29\a\0287\28Y\0153\29u\0003\30s\0:\19*\0301\31t\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30v\29;\29\b\0287\28w\0153\29y\0003\30x\0:\23*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\30:\30z\29;\29\1\0287\28{\0153\29}\0003\30|\0:\23*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\30:\30~\29;\29\1\0280\0\0�G\0\1\0G\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\20short_line_left\14ScrollBar\1\0\0\0\1\0\0\fPerCent\1\0\0\1\0\3\rprovider\16LinePercent\ticon\b\14separator\n  \rLineInfo\1\0\0\1\0\3\rprovider\15LineColumn\ticon\t \14separator\n  \15FileFormat\1\0\0\1\0\1\ticon\t \0\1\0\0\0\1\0\1\14separator\6 \17GetLspClient\1\0\0\1\0\2\rprovider\17GetLspClient\ticon\t \14Separator\1\0\0\tgray\0\1\0\1\14separator\6 \0\17BufferNumber\1\0\0\1\0\2\rprovider\17BufferNumber\ticon\t﬘ \nright\19DiagnosticHint\1\0\0\tblue\1\0\2\rprovider\19DiagnosticHint\ticon\t \19DiagnosticInfo\1\0\0\fmagenta\1\0\2\rprovider\19DiagnosticInfo\ticon\t \19DiagnosticWarn\1\0\0\1\0\2\rprovider\19DiagnosticWarn\ticon\t \20DiagnosticError\1\0\0\1\0\2\rprovider\20DiagnosticError\ticon\t \nSpace\1\0\0\0\1\0\0\15DiffRemove\1\0\0\0\1\0\1\ticon\n  \17DiffModified\1\0\0\0\1\0\1\ticon\n  \fDiffAdd\1\0\0\ngreen\0\1\0\1\ticon\n  \14GitBranch\1\0\0\0\1\0\1\14separator\6 \fGitIcon\1\0\0\vorange\0\1\0\1\14separator\6 \rFileName\1\0\0\afg\1\0\2\rprovider\rFileName\14separator\6 \rFileIcon\1\0\0\14condition\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\0\1\14separator\a  \0\rEmptyBar\1\0\0\24separator_highlight\14highlight\abg\bred\rprovider\1\0\1\14separator\6 \0\tleft\1\4\0\0\rNvimTree\vpacker\bfzf\20short_line_list\0\0\vcolors\0\0\0\24get_file_icon_color\24check_git_workspace\18hide_in_width\21buffer_not_empty\23scrollbar_instance\19get_git_branch\fsection\bcmd\abo\afn\bvim!galaxyline.provider_fileinfo\25galaxyline.condition#galaxyline.provider_extensions\28galaxyline.provider_vcs\15galaxyline\22colors.highlights\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2�\4\0\0\6\0\19\0\0254\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\6\0003\5\5\0:\5\a\0043\5\b\0:\5\t\0043\5\n\0:\5\v\0043\5\f\0:\5\r\0043\5\14\0:\5\15\4:\4\16\0033\4\17\0:\4\18\3>\2\2\1G\0\1\0\16watch_index\1\0\2\rinterval\3�\a\17follow_files\2\nsigns\14topdelete\1\0\3\ttext\b‾\ahl\15DiffDelete\nnumhl\21GitSignsDeleteNr\vdelete\1\0\3\ttext\6_\ahl\15DiffDelete\nnumhl\21GitSignsDeleteNr\17changedelete\1\0\3\ttext\6~\ahl\15DiffChange\nnumhl\21GitSignsChangeNr\vchange\1\0\3\ttext\b│\ahl\15DiffChange\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\3\ttext\b│\ahl\fDiffAdd\nnumhl\18GitSignsAddNr\1\0\a\20update_debounce\3d\15signcolumn\1\18sign_priority\3\6\23current_line_blame\1\15debug_mode\1\14word_diff\1\nnumhl\1\nsetup\rgitsigns\frequire\npcall\0" },
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
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\1\2�\3\0\0\a\0\15\0\0314\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\0\0T\4\3�\14\0\2\0T\4\1�G\0\1\0007\4\4\0013\5\6\0003\6\5\0:\6\a\5>\4\2\0012\4\0\0003\5\t\0003\6\n\0;\6\2\5:\5\b\0043\5\f\0003\6\r\0;\6\2\5:\5\v\0047\5\14\3\16\6\4\0>\5\2\1G\0\1\0\17set_mappings\1\4\0\0\18vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\b100\1\2\0\0\vscroll\n<C-u>\rmappings\1\0\5\24use_local_scrolloff\1\rstop_eof\2\16hide_cursor\2\25cursor_scrolls_alone\2\22respect_scrolloff\1\1\3\0\0\n<C-u>\n<C-d>\nsetup\21neoscroll.config\14neoscroll\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { '\27LJ\1\2�\2\0\0\v\0\16\0 4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\0\0T\4\3�\14\0\2\0T\4\1�G\0\1\0007\4\4\0013\5\5\0003\6\6\0:\6\a\5>\4\2\0014\4\1\0%\5\b\0>\4\2\0027\5\t\3\16\6\5\0007\5\n\5%\a\v\0007\b\f\0043\t\14\0003\n\r\0:\n\15\t>\b\2\0=\5\2\1G\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent"nvim-autopairs.completion.cmp\21disable_filetype\1\2\0\0\20TelescopePrompt\1\0\2\21enable_moveright\2\vmap_bs\2\nsetup\bcmp\19nvim-autopairs\frequire\npcall\0' },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lsp", "nvim-autopairs", "cmp-nvim-lua", "cmp-buffer", "cmp-path", "cmp-treesitter", "cmp-emoji", "friendly-snippets", "cmp-calc" },
    config = { "\27LJ\1\2�\1\0\0\a\1\6\2\0314\0\0\0+\1\0\0007\1\1\1'\2\0\0>\1\2\0=\0\0\3\b\1\0\0T\2\19�+\2\0\0007\2\2\2'\3\0\0\21\4\1\0\16\5\0\0)\6\2\0>\2\5\0028\2\1\2\16\3\2\0007\2\3\2\16\4\1\0\16\5\1\0>\2\4\2\16\3\2\0007\2\4\2%\4\5\0>\2\3\2\n\2\0\0T\2\2�)\2\1\0T\3\1�)\2\2\0H\2\2\0\b�\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\vunpack\0\2b\0\2\b\1\2\0\r+\2\0\0007\2\0\2+\3\0\0007\3\1\3\16\4\0\0)\5\2\0)\6\2\0)\a\2\0>\3\5\2\16\4\1\0)\5\2\0>\2\4\1G\0\1\0\b�\27nvim_replace_termcodes\18nvim_feedkeys\v\0\1\1\0\0\0\1H\0\2\0001\0\1\3\1\2\0\5+\1\0\0007\1\0\0017\2\1\0>\1\2\1G\0\1\0\a�\tbody\19expand_snippet\v\0\1\1\0\0\0\1H\0\2\0�\1\0\1\4\4\6\0\30+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4�+\1\0\0007\1\1\1>\1\1\1T\1\20�+\1\1\0007\1\2\1>\1\1\2\15\0\1\0T\2\5�+\1\2\0%\2\3\0%\3\4\0>\1\3\1T\1\n�+\1\3\0>\1\1\2\15\0\1\0T\2\4�+\1\0\0007\1\5\1>\1\1\1T\1\2�\16\1\0\0>\1\1\1G\0\1\0\1�\n�\14�\r�\rcomplete\5\"<Plug>(snippy-expand-or-next)!snippy#can_expand_or_advance\21select_next_item\fvisible�\1\0\1\4\3\5\0\23+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4�+\1\0\0007\1\1\1>\1\1\1T\1\r�+\1\1\0007\1\2\1'\2��>\1\2\2\15\0\1\0T\2\5�+\1\2\0%\2\3\0%\3\4\0>\1\3\1T\1\2�\16\1\0\0>\1\1\1G\0\1\0\1�\n�\14�\5\28<Plug>(snippy-previous)\20snippy#can_jump\21select_prev_item\fvisible�\2\0\2\4\1\a\0\18+\2\0\0007\3\0\0016\2\3\2:\2\0\0013\2\2\0007\3\3\0007\3\4\0036\2\3\2:\2\1\0013\2\6\0007\3\3\0007\3\4\0036\2\3\2\14\0\2\0T\3\1�'\2\0\0:\2\5\1H\1\2\0\f�\1\0\3\vbuffer\3\1\rnvim_lsp\3\1\tpath\3\1\bdup\tname\vsource\1\0\a\16cmp_tabnine\14(Tabnine)\vsnippy\14(Snippet)\rnvim_lsp\n(LSP)\vbuffer\r(Buffer)\tcalc\v(Calc)\15treesitter\17(Treesitter)\tpath\v(Path)\tmenu\tkind�\15\1\0\22\0\\\3�\0014\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\3\14\0\0\0T\b\a�\14\0\2\0T\b\5�\14\0\4\0T\b\3�\14\0\6\0T\b\1�0\0��4\b\6\0007\b\a\b4\t\6\0007\t\b\t4\n\6\0007\n\t\n'\v(\0003\f\n\0001\r\v\0001\14\f\0007\15\r\0013\16\20\0003\17\16\0002\18\3\0007\19\2\0057\19\14\0197\19\15\19;\19\1\18:\18\17\0171\18\18\0:\18\19\17:\17\21\0163\17\23\0001\18\22\0:\18\24\17:\17\25\0167\17\2\0057\17\26\0177\17\27\17:\17\28\0163\17\30\0003\18\29\0:\18\31\0174\18 \0007\18!\18\22\19\0\v7\20\"\t\22\21\0\v\22\21\1\21\23\21\2\21!\20\21\20 \19\20\19>\18\2\2:\18#\0174\18 \0007\18!\0187\19$\t!\19\19\v \19\19\v>\18\2\2:\18%\17:\17&\0163\17)\0007\18\2\0057\18'\0187\18(\18:\18*\0171\18+\0:\18,\17:\17-\0163\17.\0002\18\b\0007\19/\3;\19\1\0187\0190\3;\19\2\0187\0191\3;\19\3\0187\0192\3;\19\4\0187\0193\3;\19\5\0187\0194\3;\19\6\0187\0195\3;\19\a\18:\0186\17:\0177\0163\17:\0007\0188\0017\0189\18'\19��>\18\2\2:\18;\0177\0188\0017\0189\18'\19\4\0>\18\2\2:\18<\0177\0188\0017\18=\18>\18\1\2:\18>\0177\0188\0017\18?\18>\18\1\2:\18@\0177\0188\0017\18A\0183\19C\0007\20'\0017\20B\20:\20D\19>\18\2\2:\18E\0177\0188\0011\19F\0003\20G\0>\18\3\2:\18H\0177\0188\0011\19I\0003\20J\0>\18\3\2:\18K\17:\0178\0163\17M\0001\18L\0:\18N\17:\17O\0163\17P\0:\17Q\0162\17\n\0003\18R\0;\18\1\0173\18S\0;\18\2\0173\18T\0;\18\3\0173\18U\0;\18\4\0173\18V\0;\18\5\0173\18W\0;\18\6\0173\18X\0;\18\a\0173\18Y\0;\18\b\0173\18Z\0;\18\t\17:\17[\16>\15\2\0010\0\0�G\0\1\0G\0\1\0\fsources\1\0\1\tname\nemoji\1\0\1\tname\15treesitter\1\0\1\tname\tcalc\1\0\1\tname\16cmp_tabnine\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\vsnippy\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\17experimental\1\0\1\15ghost_text\1\15formatting\vformat\1\0\0\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\t<Up>\v<Down>\1\0\0\16scroll_docs\fmapping\fsorting\16comparators\norder\vlength\14sort_text\tkind\nscore\nexact\voffset\1\0\1\20priority_weight\3\2\17confirmation\26get_commit_characters\0\21default_behavior\1\0\0\vInsert\20ConfirmBehavior\18documentation\14maxheight\nlines\rmaxwidth\fcolumns\nfloor\tmath\vborder\1\0\1\17winhighlight(Normal:MyNormal,NormalNC:MyNormalNC\1\t\0\0\b╭\b─\b╮\b│\b╯\b─\b╰\b│\14preselect\tItem\18PreselectMode\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\27get_trigger_characters\0\17autocomplete\1\0\3\19keyword_length\3\1\20keyword_pattern/\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\w*\\%(-\\w*\\)*\\)\16completeopt\26menu,menuone,noinsert\16TextChanged\17TriggerEvent\nsetup\0\0\1\0\25\tText\b\vMethod\b\rOperator\b\14Interface\b\nColor\b\vModule\b\nEvent\b\rFunction\b\rProperty\b\15EnumMember\b\rConstant\b\18TypeParameter\b\vStruct\b\rVariable\b\fSnippet\b\vFolder\b\nClass\b\nField\b\fKeyword\t \tFile\b\nValue\b\16Constructor\b\tEnum\b練\tUnit\b塞\14Reference\b\afn\6o\bapi\bvim\vsnippy\14cmp.types\23cmp.config.compare\bcmp\frequire\npcall\4 \18\0" },
    load_after = {
      ["nvim-snippy"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\2�\1\0\0\5\0\6\0\f4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\5\0>\2\3\1G\0\1\0\1\0\t\vrgb_fn\1\vcss_fn\1\nnames\1\bcss\2\vRRGGBB\2\tmode\15background\rRRGGBBAA\1\vhsl_fn\1\bRGB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\npcall\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\1\2J\2\3\b\2\1\0\14\14\0\2\0T\3\1�2\2\0\0007\3\0\2\14\0\3\0T\4\1�+\3\0\0:\3\0\2+\3\1\0\16\4\0\0\16\5\1\0\16\6\2\0C\a\3\0?\3\3\0\3�\4�\vborder�\5\1\0\f\1\30\0;+\0\0\0007\0\0\0004\1\1\0007\1\2\1+\2\0\0007\2\4\2+\3\0\0007\3\5\0037\3\6\0033\4\a\0003\5\b\0:\5\t\4>\2\3\2:\2\3\0003\2\n\0004\3\v\0\16\4\2\0>\3\2\4D\6\n�%\b\f\0\16\t\6\0$\b\t\b7\t\r\1\16\n\b\0003\v\14\0:\a\15\v:\b\16\v:\b\17\v>\t\3\1B\6\3\3N\6�2\3\t\0003\4\18\0;\4\1\0033\4\19\0;\4\2\0033\4\20\0;\4\3\0033\4\21\0;\4\4\0033\4\22\0;\4\5\0033\4\23\0;\4\6\0033\4\24\0;\4\a\0033\4\25\0;\4\b\0034\4\1\0007\4\26\0047\4\27\0047\4\28\0044\5\1\0007\5\26\0057\5\27\0051\6\29\0:\6\28\0050\0\0�G\0\1\0\6�\0\26open_floating_preview\tutil\blsp\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╰\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╯\16FloatBorder\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╮\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╭\16FloatBorder\nnumhl\vtexthl\ttext\1\0\0\16sign_define\19DiagnosticSign\npairs\1\0\4\tHint\t \tInfo\t \nError\t \tWarn\t \17virtual_text\1\0\2\fspacing\3\0\vprefix\t🧨\1\0\3\nsigns\2\14underline\2\18severity_sort\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\afn\bvim\rhandlers7\2\0\3\2\1\0\6+\0\0\0007\0\0\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1�\24nvim_buf_set_keymap7\2\0\3\2\1\0\6+\0\0\0007\0\0\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1�\24nvim_buf_set_option�\n\1\2\n\1 \0T1\2\0\0001\3\1\0003\4\2\0\16\5\3\0%\6\3\0%\a\4\0>\5\3\1\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\24\0%\b\25\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\26\0%\b\27\0\16\t\4\0>\5\5\0017\5\28\0007\5\29\5\15\0\5\0T\6\5�+\5\0\0007\5\30\5%\6\31\0)\a\1\0>\5\3\0010\0\0�G\0\1\0\4��\1          augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\23document_highlight\26resolved_capabilities<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\15<leader>gl*<cmd>lua vim.lsp.buf.references()<CR>\15<leader>gf+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ga0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\15<leader>gp0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\15<leader>gn&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>gr.<cmd>lua vim.lsp.buf.signature_help()<CR>\15<leader>gs%<cmd>lua vim.lsp.buf.hover()<CR>\15<leader>gk*<cmd>lua vim.lsp.buf.definition()<CR>\15<leader>gdF<cmd>lua vim.lsp.diagnostic.set_loclist({ workspace = true })<CR>\n<C-w>2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\n<C-e>\6n\27v:lua.vim.lsp.omnifunc\romnifunc\1\0\2\fnoremap\2\vsilent\2\0\0�\2\0\0\4\1\r\0\24+\0\0\0007\0\0\0007\0\1\0>\0\1\0027\1\2\0007\1\3\0017\1\4\1)\2\2\0:\2\5\0017\1\2\0007\1\3\0017\1\4\0013\2\b\0003\3\a\0:\3\t\2:\2\6\0014\1\n\0%\2\v\0>\1\2\0027\1\f\1\16\2\0\0>\1\2\2\16\0\1\0H\0\2\0\6�\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol�\2\0\1\6\4\n\0'3\1\0\0+\2\0\0:\2\1\1+\2\1\0>\2\1\2:\2\2\1+\2\2\0007\3\3\0006\2\3\2\15\0\2\0T\3\20�7\3\4\2\15\0\3\0T\4\2�7\3\4\2:\3\4\0017\3\5\2\15\0\3\0T\4\2�7\3\5\2:\3\5\0017\3\6\2\15\0\3\0T\4\2�7\3\6\2:\3\6\0017\3\a\2\15\0\3\0T\4\2�7\3\a\2:\3\a\1\16\4\0\0007\3\b\0\16\5\1\0>\3\3\1+\3\3\0%\4\t\0>\3\2\1G\0\1\0\b�\t�\3�\5�\31 do User LspAttachBuffers \nsetup\14filetypes\rroot_dir\rsettings\17init_options\tname\17capabilities\14on_attach\1\0\0�\3\1\0\14\0\21\0'4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\0\0T\4\3�\14\0\2\0T\4\1�0\0\25�4\4\4\0007\4\5\0044\5\4\0007\5\6\0054\6\4\0007\6\a\0061\a\b\0\16\b\a\0>\b\1\0011\b\t\0001\t\n\0007\n\v\0013\v\17\0003\f\r\0003\r\f\0:\r\14\f3\r\15\0:\r\16\f:\f\18\v>\n\2\0017\n\19\0011\v\20\0>\n\2\0010\0\0�G\0\1\0G\0\1\0\0\20on_server_ready\aui\1\0\0\fkeymaps\1\0\4\25toggle_server_expand\t<CR>\18update_server\6u\21uninstall_server\6X\19install_server\6i\nicons\1\0\0\1\0\3\23server_uninstalled\b✗\21server_installed\b✓\19server_pending\b➜\rsettings\0\0\0\blsp\bcmd\bapi\bvim\22plugins/languages\23nvim-lsp-installer\frequire\npcall\0" },
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-snippy"] = {
    after = { "nvim-cmp", "friendly-snippets" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-snippy",
    url = "https://github.com/dcampos/nvim-snippy"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeOpen" },
    config = { "\27LJ\1\2�\3\0\0\a\0\17\0\0274\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0002\4\0\0:\4\5\0033\4\6\0002\5\0\0:\5\a\4:\4\b\0033\4\t\0002\5\0\0:\5\n\4:\4\v\0033\4\f\0003\5\r\0002\6\0\0:\6\14\5:\5\15\4:\4\16\3>\2\2\1G\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\3\nwidth\3#\tside\tleft\16auto_resize\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\23ignore_ft_on_setup\1\0\b\16open_on_tab\1\18disable_netrw\2\30nvim_tree_lsp_diagnostics\1\18open_on_setup\1\15update_cwd\1\18hijack_cursor\1\25nvim_tree_auto_close\2\17hijack_netrw\2\nsetup\14nvim-tree\frequire\npcall\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "playground" },
    loaded = true,
    only_config = true
  },
  ["nvim-web-devicons"] = {
    after = { "galaxyline.nvim", "nvim-tree.lua", "barbar.nvim" },
    config = { "\27LJ\1\2�\n\0\0\n\0D\0|4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\2\0T\4\3�\14\0\0\0T\4\1�G\0\1\0007\4\4\0017\5\5\0033\6B\0003\a\t\0003\b\6\0007\t\a\4:\t\b\b:\b\n\a3\b\v\0007\t\a\4:\t\b\b:\b\f\a3\b\r\0007\t\a\4:\t\b\b:\b\14\a3\b\15\0007\t\a\4:\t\b\b:\b\16\a3\b\17\0007\t\18\4:\t\b\b:\b\19\a3\b\20\0007\t\a\4:\t\b\b:\b\21\a3\b\22\0007\t\23\4:\t\b\b:\b\24\a3\b\25\0007\t\18\4:\t\b\b:\b\26\a3\b\27\0007\t\28\4:\t\b\b:\b\29\a3\b\30\0007\t\28\4:\t\b\b:\b\31\a3\b \0007\t\23\4:\t\b\b:\b!\a3\b\"\0007\t\23\4:\t\b\b:\b#\a3\b$\0007\t\18\4:\t\b\b:\b%\a3\b&\0007\t\a\4:\t\b\b:\b'\a3\b(\0007\t\a\4:\t\b\b:\b)\a3\b*\0007\t\a\4:\t\b\b:\b+\a3\b,\0007\t\a\4:\t\b\b:\b-\a3\b.\0007\t\28\4:\t\b\b:\b/\a3\b0\0007\t1\4:\t\b\b:\b2\a3\b3\0007\t\a\4:\t\b\b:\b4\a3\b5\0007\t\a\4:\t\b\b:\b6\a3\b7\0007\t\18\4:\t\b\b:\b8\a3\b9\0007\t\23\4:\t\b\b:\b:\a3\b;\0007\t<\4:\t\b\b:\b=\a3\b>\0007\t\23\4:\t\b\b:\b?\a3\b@\0007\t\23\4:\t\b\b:\bA\a:\aC\6>\5\2\1G\0\1\0\roverride\1\0\0\bzip\1\0\2\tname\bzip\ticon\b\axz\1\0\2\tname\axz\ticon\b\bvue\ngreen\1\0\2\tname\bvue\ticon\b﵂\brpm\1\0\2\tname\brpm\ticon\b\arb\1\0\2\tname\arb\ticon\b\ats\1\0\2\tname\ats\ticon\b\ttoml\1\0\2\tname\ttoml\ticon\b\apy\vyellow\1\0\2\tname\apy\ticon\b\bpng\1\0\2\tname\bpng\ticon\b\bout\1\0\2\tname\bout\ticon\b\bmp4\1\0\2\tname\bmp4\ticon\b\bmp3\1\0\2\tname\bmp3\ticon\b\blua\1\0\2\tname\blua\ticon\b\tlock\1\0\2\tname\tlock\ticon\b\akt\1\0\2\tname\akt\ticon\t󱈙\ajs\1\0\2\tname\ajs\ticon\b\bjpg\1\0\2\tname\bjpg\ticon\b\tjpeg\fmagenta\1\0\2\tname\tjpeg\ticon\b\tjava\1\0\2\tname\tjava\ticon\b\thtml\vorange\1\0\2\tname\thtml\ticon\b\15Dockerfile\1\0\2\tname\15Dockerfile\ticon\b\bdeb\bred\1\0\2\tname\bdeb\ticon\b\bcss\1\0\2\tname\bcss\ticon\b\bcpp\1\0\2\tname\bcpp\ticon\b\acc\1\0\2\tname\acc\ticon\b\6c\1\0\0\ncolor\tblue\1\0\2\tname\6c\ticon\b\nsetup\vcolors\22nvim-web-devicons\22colors.highlights\frequire\npcall\0" },
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
  ["tokyonight.nvim"] = {
    after = { "nvim-web-devicons" },
    loaded = true,
    only_config = true
  },
  ["vim-closetag"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
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
  ["vim-multiple-cursors"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/opt/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/madlife/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
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
try_loadstring("\27LJ\1\2�\1\0\0\b\0\n\0\0154\0\0\0007\0\1\0004\1\0\0007\1\2\0017\1\3\0013\2\4\0003\3\6\0:\3\5\0\16\3\1\0%\4\a\0%\5\b\0%\6\t\0\16\a\2\0>\3\5\1G\0\1\0\23<cmd>Neoformat<CR>\14<leader>f\6n\1\4\0\0\tyapf\rautopep8\nblack\29neoformat_enabled_python\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\6g\bvim\0", "setup", "neoformat")
time([[Setup for neoformat]], false)
-- Setup for: vim-multiple-cursors
time([[Setup for vim-multiple-cursors]], true)
try_loadstring("\27LJ\1\2�\2\0\0\2\0\14\0\0174\0\0\0007\0\1\0'\1\0\0:\1\2\0%\1\4\0:\1\3\0%\1\6\0:\1\5\0%\1\4\0:\1\a\0%\1\t\0:\1\b\0%\1\v\0:\1\n\0%\1\r\0:\1\f\0G\0\1\0\n<Esc>\26multi_cursor_quit_key\n<C-x>\26multi_cursor_skip_key\n<C-p>\26multi_cursor_prev_key\26multi_cursor_next_key\n<A-s>%multi_cursor_select_all_word_key\n<C-s> multi_cursor_start_word_key%multi_cursor_use_default_mapping\6g\bvim\0", "setup", "vim-multiple-cursors")
time([[Setup for vim-multiple-cursors]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2�\5\0\0\b\0\26\0'4\0\0\0007\0\1\0007\0\2\0004\1\0\0007\1\3\0013\2\4\0\16\3\0\0%\4\5\0%\5\6\0%\6\a\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\b\0%\6\t\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\n\0%\6\v\0\16\a\2\0>\3\5\0013\3\r\0:\3\f\0013\3\15\0:\3\14\1%\3\17\0:\3\16\0013\3\19\0003\4\20\0:\4\21\0033\4\22\0:\4\23\0033\4\24\0:\4\25\3:\3\18\1G\0\1\0\blsp\1\0\4\thint\b\tinfo\b\nerror\b\fwarning\b\vfolder\1\0\b\topen\b\15empty_open\b\fdefault\b\15arrow_open\b\nempty\b\fsymlink\b\17arrow_closed\b\17symlink_open\b\bgit\1\0\a\runstaged\a±\fdeleted\b\14untracked\b\frenamed\b\runmerged\b\fignored\b\vstaged\b\1\0\2\fdefault\b\fsymlink\b\20nvim_tree_icons\a:~#nvim_tree_root_folder_modifier\1\0\3\rMakefile\3\1\rMAKEFILE\3\1\14README.md\3\1\27vim_tree_special_files\1\4\0\0\rstartify\14dashboard\nalpha\29nvim_tree_auto_ignore_ft\26:NvimTreeFindFile<CR>\15<leader>nf\25:NvimTreeRefresh<CR>\14<leader>r\24:NvimTreeToggle<CR>\n<C-n>\6n\1\0\2\fnoremap\2\vsilent\2\6g\20nvim_set_keymap\bapi\bvim\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
-- Setup for: barbar.nvim
time([[Setup for barbar.nvim]], true)
try_loadstring("\27LJ\1\2�\t\0\0\b\0000\0}4\0\0\0007\0\1\0007\0\2\0004\1\0\0007\1\3\0013\2\4\0\16\3\0\0%\4\5\0%\5\6\0%\6\a\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\b\0%\6\t\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\n\0%\6\v\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\f\0%\6\r\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\14\0%\6\15\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\16\0%\6\17\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\18\0%\6\19\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\20\0%\6\21\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\22\0%\6\23\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\24\0%\6\25\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\26\0%\6\27\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\28\0%\6\29\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\30\0%\6\31\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5 \0%\6!\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5\"\0%\6#\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5$\0%\6%\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5&\0%\6'\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5(\0%\6)\0\16\a\2\0>\3\5\1\16\3\0\0%\4\5\0%\5*\0%\6+\0\16\a\2\0>\3\5\0013\3-\0003\4.\0:\4/\3:\3,\1G\0\1\0\17exclude_name\1\3\0\0\bfzf\nalpha\1\0\1\rclosable\1\15bufferline\31:BufferOrderByLanguage<CR>\15<leader>bl :BufferOrderByDirectory<CR>\15<leader>bd#:BufferOrderByBufferNumber<CR>\15<leader>bb\":BufferCloseAllButCurrent<CR>\15<leader>cb\20:BufferLast<CR>\14<leader>0\23:BufferGoto 10<CR>\15<leader>10\22:BufferGoto 9<CR>\14<leader>9\22:BufferGoto 8<CR>\14<leader>8\22:BufferGoto 7<CR>\14<leader>7\22:BufferGoto 6<CR>\14<leader>6\22:BufferGoto 5<CR>\14<leader>5\22:BufferGoto 4<CR>\14<leader>4\22:BufferGoto 3<CR>\14<leader>3\22:BufferGoto 2<CR>\14<leader>2\22:BufferGoto 1<CR>\14<leader>1\25 :BufferMoveNext<CR>\14<leader>>\28:BufferMovePrevious<CR>\14<leader><\20:BufferNext<CR>\18<leader><Tab>\24:BufferPrevious<CR>\20<leader><S-Tab>\6n\1\0\2\fnoremap\2\vsilent\2\6g\20nvim_set_keymap\bapi\bvim\0", "setup", "barbar.nvim")
time([[Setup for barbar.nvim]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\1\2�\6\0\0\2\0\17\0\0234\0\0\0007\0\1\0003\1\3\0:\1\2\0003\1\5\0:\1\4\0003\1\a\0:\1\6\0)\1\1\0:\1\b\0)\1\1\0:\1\t\0003\1\v\0:\1\n\0003\1\r\0:\1\f\0)\1\2\0:\1\14\0)\1\2\0:\1\15\0)\1\2\0:\1\16\0G\0\1\0\29indent_blankline_enabled*indent_blankline_show_current_context$indent_blankline_use_treesitter\1\23\0\0\nclass\vreturn\rfunction\vmethod\b^if\aif\v^while\16jsx_element\t^for\bfor\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns\1\2\0\0\14README.md%indent_blankline_bufname_exclude-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\1\n\0\0\b\b┊\b┆\a¦\6|\a¦\b┆\b┊\b\31indent_blankline_char_list\1\a\0\0\thelp\rstartify\14dashboard\vpacker\nalpha\rNvimTree&indent_blankline_filetype_exclude\1\a\0\0\thelp\rstartify\14dashboard\vpacker\nalpha\rNvimTree%indent_blankline_buftype_exclude\6g\bvim\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Setup for: vim-closetag
time([[Setup for vim-closetag]], true)
try_loadstring("\27LJ\1\2�\2\0\0\2\0\v\0\r4\0\0\0007\0\1\0%\1\3\0:\1\2\0%\1\5\0:\1\4\0%\1\a\0:\1\6\0%\1\t\0:\1\b\0'\1\1\0:\1\n\0G\0\1\0%closetag_emptyTags_caseSensitive\23xhtml,jsx,tsx,vuex\29closetag_xhtml_filetypes,html,xhtml,phtml,js,ts,vue,jsx,tsx,vuex\23closetag_filetypes\31*.xhtml,*.jsx,*.tsx,*.vuex\29closetag_xhtml_filenames>*.html,*.xhtml,*.phtml,*.js,*.ts,*.vue,*.jsx,*.tsx,*.vuex\23closetag_filenames\6g\bvim\0", "setup", "vim-closetag")
time([[Setup for vim-closetag]], false)
-- Setup for: emmet-vim
time([[Setup for emmet-vim]], true)
try_loadstring("\27LJ\1\2=\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0\n<C-y>\26user_emmet_leader_key\6g\bvim\0", "setup", "emmet-vim")
time([[Setup for emmet-vim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2�\4\0\0\6\0\14\0\0254\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\6\0003\4\4\0002\5\0\0:\5\5\4:\4\a\0033\4\b\0002\5\0\0:\5\5\4:\4\t\0033\4\n\0002\5\0\0:\5\5\0043\5\v\0:\5\f\4:\4\r\3>\2\2\1G\0\1\0\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\30toggle_injected_languages\6t\28toggle_language_display\6I\14goto_node\t<CR>\19focus_language\6f\14show_help\6?\27toggle_anonymous_nodes\6a\21unfocus_language\6F\24toggle_query_editor\6o\1\0\3\15updatetime\3\25\20persist_queries\1\venable\2\vindent\1\0\1\venable\1\14highlight\1\0\1\21ensure_installed\ball\fdisable\1\0\2&additional_vim_regex_highlighting\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\npcall\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\1\0023\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\tinit\vcolors\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\1\2�\1\0\0\5\0\6\0\f4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�G\0\1\0007\2\3\0013\3\4\0003\4\5\0>\2\3\1G\0\1\0\1\0\t\vrgb_fn\1\vcss_fn\1\nnames\1\bcss\2\vRRGGBB\2\tmode\15background\rRRGGBBAA\1\vhsl_fn\1\bRGB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\npcall\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\1\2J\2\3\b\2\1\0\14\14\0\2\0T\3\1�2\2\0\0007\3\0\2\14\0\3\0T\4\1�+\3\0\0:\3\0\2+\3\1\0\16\4\0\0\16\5\1\0\16\6\2\0C\a\3\0?\3\3\0\3�\4�\vborder�\5\1\0\f\1\30\0;+\0\0\0007\0\0\0004\1\1\0007\1\2\1+\2\0\0007\2\4\2+\3\0\0007\3\5\0037\3\6\0033\4\a\0003\5\b\0:\5\t\4>\2\3\2:\2\3\0003\2\n\0004\3\v\0\16\4\2\0>\3\2\4D\6\n�%\b\f\0\16\t\6\0$\b\t\b7\t\r\1\16\n\b\0003\v\14\0:\a\15\v:\b\16\v:\b\17\v>\t\3\1B\6\3\3N\6�2\3\t\0003\4\18\0;\4\1\0033\4\19\0;\4\2\0033\4\20\0;\4\3\0033\4\21\0;\4\4\0033\4\22\0;\4\5\0033\4\23\0;\4\6\0033\4\24\0;\4\a\0033\4\25\0;\4\b\0034\4\1\0007\4\26\0047\4\27\0047\4\28\0044\5\1\0007\5\26\0057\5\27\0051\6\29\0:\6\28\0050\0\0�G\0\1\0\6�\0\26open_floating_preview\tutil\blsp\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╰\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╯\16FloatBorder\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╮\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╭\16FloatBorder\nnumhl\vtexthl\ttext\1\0\0\16sign_define\19DiagnosticSign\npairs\1\0\4\tHint\t \tInfo\t \nError\t \tWarn\t \17virtual_text\1\0\2\fspacing\3\0\vprefix\t🧨\1\0\3\nsigns\2\14underline\2\18severity_sort\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\afn\bvim\rhandlers7\2\0\3\2\1\0\6+\0\0\0007\0\0\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1�\24nvim_buf_set_keymap7\2\0\3\2\1\0\6+\0\0\0007\0\0\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1�\24nvim_buf_set_option�\n\1\2\n\1 \0T1\2\0\0001\3\1\0003\4\2\0\16\5\3\0%\6\3\0%\a\4\0>\5\3\1\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\24\0%\b\25\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\26\0%\b\27\0\16\t\4\0>\5\5\0017\5\28\0007\5\29\5\15\0\5\0T\6\5�+\5\0\0007\5\30\5%\6\31\0)\a\1\0>\5\3\0010\0\0�G\0\1\0\4��\1          augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\23document_highlight\26resolved_capabilities<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\15<leader>gl*<cmd>lua vim.lsp.buf.references()<CR>\15<leader>gf+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ga0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\15<leader>gp0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\15<leader>gn&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>gr.<cmd>lua vim.lsp.buf.signature_help()<CR>\15<leader>gs%<cmd>lua vim.lsp.buf.hover()<CR>\15<leader>gk*<cmd>lua vim.lsp.buf.definition()<CR>\15<leader>gdF<cmd>lua vim.lsp.diagnostic.set_loclist({ workspace = true })<CR>\n<C-w>2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\n<C-e>\6n\27v:lua.vim.lsp.omnifunc\romnifunc\1\0\2\fnoremap\2\vsilent\2\0\0�\2\0\0\4\1\r\0\24+\0\0\0007\0\0\0007\0\1\0>\0\1\0027\1\2\0007\1\3\0017\1\4\1)\2\2\0:\2\5\0017\1\2\0007\1\3\0017\1\4\0013\2\b\0003\3\a\0:\3\t\2:\2\6\0014\1\n\0%\2\v\0>\1\2\0027\1\f\1\16\2\0\0>\1\2\2\16\0\1\0H\0\2\0\6�\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol�\2\0\1\6\4\n\0'3\1\0\0+\2\0\0:\2\1\1+\2\1\0>\2\1\2:\2\2\1+\2\2\0007\3\3\0006\2\3\2\15\0\2\0T\3\20�7\3\4\2\15\0\3\0T\4\2�7\3\4\2:\3\4\0017\3\5\2\15\0\3\0T\4\2�7\3\5\2:\3\5\0017\3\6\2\15\0\3\0T\4\2�7\3\6\2:\3\6\0017\3\a\2\15\0\3\0T\4\2�7\3\a\2:\3\a\1\16\4\0\0007\3\b\0\16\5\1\0>\3\3\1+\3\3\0%\4\t\0>\3\2\1G\0\1\0\b�\t�\3�\5�\31 do User LspAttachBuffers \nsetup\14filetypes\rroot_dir\rsettings\17init_options\tname\17capabilities\14on_attach\1\0\0�\3\1\0\14\0\21\0'4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\0\0T\4\3�\14\0\2\0T\4\1�0\0\25�4\4\4\0007\4\5\0044\5\4\0007\5\6\0054\6\4\0007\6\a\0061\a\b\0\16\b\a\0>\b\1\0011\b\t\0001\t\n\0007\n\v\0013\v\17\0003\f\r\0003\r\f\0:\r\14\f3\r\15\0:\r\16\f:\f\18\v>\n\2\0017\n\19\0011\v\20\0>\n\2\0010\0\0�G\0\1\0G\0\1\0\0\20on_server_ready\aui\1\0\0\fkeymaps\1\0\4\25toggle_server_expand\t<CR>\18update_server\6u\21uninstall_server\6X\19install_server\6i\nicons\1\0\0\1\0\3\23server_uninstalled\b✗\21server_installed\b✓\19server_pending\b➜\rsettings\0\0\0\blsp\bcmd\bapi\bvim\22plugins/languages\23nvim-lsp-installer\frequire\npcall\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
try_loadstring("\27LJ\1\2�\r\0\0\t\0003\0I4\0\0\0007\0\1\0007\1\2\0004\2\0\0007\2\3\0023\3\4\0003\4\6\0:\4\5\0023\4\b\0:\4\a\2'\4\0\0:\4\t\2\16\4\1\0%\5\n\0%\6\v\0%\a\f\0\16\b\3\0>\4\5\1\16\4\1\0%\5\n\0%\6\r\0%\a\14\0\16\b\3\0>\4\5\1\16\4\1\0%\5\n\0%\6\15\0%\a\16\0\16\b\3\0>\4\5\0013\4\19\0003\5\18\0:\5\20\0043\5\21\0:\5\22\0043\5\23\0:\5\24\0043\5\25\0:\5\26\0043\5\27\0:\5\28\0043\5\29\0:\5\30\0043\5\31\0:\5 \0043\5!\0:\5\"\0043\5#\0:\5$\0043\5%\0:\5&\0043\5'\0:\5(\0043\5)\0:\5*\0043\5+\0:\5,\4:\4\17\0023\4.\0:\4-\0027\4/\0%\0050\0)\6\1\0>\4\3\0017\4/\0%\0051\0)\6\1\0>\4\3\0017\4/\0%\0052\0)\6\1\0>\4\3\1G\0\1\0�\4      function! RipgrepFzf(query, fullscreen)\n        let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s -g \"!{node_modules,.git,build,dist,.cache,cache,.idea}\" || true'\n        let initial_command = printf(command_fmt, shellescape(a:query))\n        let reload_command = printf(command_fmt, '{q}')\n        let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}\n        call fzf#vim#grep(initial_command, 1, a:fullscreen)\n      endfunction\n      command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)\n    Zcommand! -bang -nargs=? -complete=dir Buffers call fzf#vim#buffers(<q-args>, <bang>0)Vcommand! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)\14nvim_exec\1\0\3\vctrl-t\14tab split\vctrl-x\nsplit\vctrl-v\vvsplit\15fzf_action\vheader\1\3\0\0\afg\22TSVariableBuiltin\fspinner\1\3\0\0\afg\23NvimTreeRootFolder\vmarker\1\3\0\0\afg\23NvimTreeRootFolder\fpointer\1\3\0\0\afg\23NvimTreeRootFolder\vprompt\1\3\0\0\afg\14Statement\vborder\1\3\0\0\afg\23NvimTreeRootFolder\tinfo\1\3\0\0\afg\14Directory\bhl+\1\3\0\0\afg\24DiagnosticSignError\bbg+\1\3\0\0\abg\16EndOfBuffer\bfg+\1\3\0\0\afg\fSpecial\ahl\1\3\0\0\afg\24DiagnosticSignError\abg\1\3\0\0\abg\16EndOfBuffer\afg\1\0\0\1\3\0\0\afg\fNonText\15fzf_colors\17:Buffers<CR>\n<C-b>\f:Rg<CR>\n<C-f>\15:Files<CR>\n<C-p>\6n\24fzf_nvim_statusline\1\0\1\nright\vhidden\23fzf_preview_window\1\0\1\tdown\t~40%\15fzf_layout\1\0\2\fnoremap\2\vsilent\2\6g\20nvim_set_keymap\bapi\bvim\0", "config", "fzf.vim")
time([[Config for fzf.vim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\1\2o\0\0\5\2\3\0\14+\0\0\0007\0\0\0+\1\1\0)\2\2\0)\3\1\0)\4\2\0>\0\5\2+\1\0\0007\1\1\1\16\2\0\0%\3\2\0)\4\1\0>\1\4\1G\0\1\0\0\0\3�\vnormal\18nvim_feedkeys\27nvim_replace_termcodes�\2\1\3\a\1\16\0\28\16\4\0\0007\3\0\0%\5\1\0%\6\2\0>\3\4\2\16\4\3\0007\3\0\3%\5\3\0%\6\4\0>\3\4\0023\4\5\0:\1\6\4:\0\a\4\15\0\2\0T\5\6�3\5\t\0;\3\2\5;\2\3\0053\6\n\0;\6\4\5:\5\b\0043\5\v\0:\1\f\0051\6\r\0:\6\14\5:\4\15\0050\0\0�H\5\2\0\2�\topts\ron_press\0\bval\1\0\1\ttype\vbutton\1\0\2\fnoremap\2\vsilent\2\1\2\0\0\6n\vkeymap\rshortcut\ttext\1\0\6\16hl_shortcut\fSpecial\vcursor\3\5\19align_shortcut\nright\rposition\vcenter\nwidth\3\24\ahl\31LspSagaSignatureHelpBorder\r<leader>\bSPC\5\a%s\tgsub�\16\1\0\15\0004\1g4\0\0\0004\1\1\0%\2\2\0>\0\3\3\14\0\0\0T\2\1�0\0_�4\2\3\0007\2\4\0024\3\3\0007\3\5\0033\4\6\0003\5\a\0:\5\b\0043\5\t\0:\5\n\0044\5\v\0007\5\f\5%\6\r\0>\5\2\2\16\a\5\0007\6\14\5%\b\15\0>\6\3\2\16\b\5\0007\a\16\5>\a\2\0013\a\17\0%\b\18\0\16\t\6\0%\n\19\0$\b\n\b:\b\b\a3\b\20\0:\b\n\a1\b\21\0003\t\22\0002\n\5\0\16\v\b\0%\f\23\0%\r\24\0%\14\25\0>\v\4\2;\v\1\n\16\v\b\0%\f\26\0%\r\27\0%\14\28\0>\v\4\2;\v\2\n\16\v\b\0%\f\29\0%\r\30\0%\14\31\0>\v\4\2;\v\3\n\16\v\b\0%\f \0%\r!\0%\14\"\0>\v\4\0<\v\0\0:\n\b\t3\n#\0:\n\n\t3\n$\0003\v%\0:\v\n\n3\v&\0:\4'\v:\a(\v:\t)\v:\n*\v3\f/\0002\r\t\0003\14+\0;\14\1\r7\14'\v;\14\2\r3\14,\0;\14\3\r7\14(\v;\14\4\r3\14-\0;\14\5\r7\14)\v;\14\6\r3\14.\0;\14\a\r7\14*\v;\14\b\r:\r0\f3\r1\0:\r\n\f7\r2\1\16\14\f\0>\r\2\1\16\r\3\0%\0143\0>\r\2\0010\0\0�G\0\1\0G\0\1\0001autocmd FileType alpha setlocal nofoldenable\nsetup\1\0\1\vmargin\3\5\vlayout\1\0\0\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\1\0\2\bval\3\2\ttype\fpadding\vfooter\fbuttons\24plugins_total_stats\vheader\1\0\0\1\0\2\rposition\vcenter\ahl!LspDiagnosticsDefaultWarning\1\0\2\bval?A clever person solves a problem. A wise person avoids it.\ttype\ttext\1\0\2\fspacing\3\1\rposition\vcenter\f:qa<CR>\14  Quit\6q5:e $HOME/.config/nvim/lua/default_config.lua<CR>\18  Settings\6s\f:Rg<CR>\19  Find Word\6f\15:Files<CR>\19  Find File\6p\1\0\1\ttype\ngroup\0\1\0\2\rposition\vcenter\ahl\29LspSagaCodeActionContent\17 plugins \23Madvim has loaded \1\0\1\ttype\ttext\nclose\a*a\treadTfd -d 1 . $HOME\"/.local/share/nvim/site/pack/packer/start\" | wc -l | tr -d \"\n\" \npopen\aio\topts\1\0\2\rposition\vcenter\ahl\fSpecial\bval\1\f\0\0J   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          X    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       F          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     N           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    L          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ^   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  X  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   b ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  \\ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ P    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       V       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     \1\0\1\ttype\ttext\bcmd\bapi\bvim\nalpha\frequire\npcall\t����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]

-- Config for: nvim-web-devicons
try_loadstring("\27LJ\1\2�\n\0\0\n\0D\0|4\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\14\0\2\0T\4\3�\14\0\0\0T\4\1�G\0\1\0007\4\4\0017\5\5\0033\6B\0003\a\t\0003\b\6\0007\t\a\4:\t\b\b:\b\n\a3\b\v\0007\t\a\4:\t\b\b:\b\f\a3\b\r\0007\t\a\4:\t\b\b:\b\14\a3\b\15\0007\t\a\4:\t\b\b:\b\16\a3\b\17\0007\t\18\4:\t\b\b:\b\19\a3\b\20\0007\t\a\4:\t\b\b:\b\21\a3\b\22\0007\t\23\4:\t\b\b:\b\24\a3\b\25\0007\t\18\4:\t\b\b:\b\26\a3\b\27\0007\t\28\4:\t\b\b:\b\29\a3\b\30\0007\t\28\4:\t\b\b:\b\31\a3\b \0007\t\23\4:\t\b\b:\b!\a3\b\"\0007\t\23\4:\t\b\b:\b#\a3\b$\0007\t\18\4:\t\b\b:\b%\a3\b&\0007\t\a\4:\t\b\b:\b'\a3\b(\0007\t\a\4:\t\b\b:\b)\a3\b*\0007\t\a\4:\t\b\b:\b+\a3\b,\0007\t\a\4:\t\b\b:\b-\a3\b.\0007\t\28\4:\t\b\b:\b/\a3\b0\0007\t1\4:\t\b\b:\b2\a3\b3\0007\t\a\4:\t\b\b:\b4\a3\b5\0007\t\a\4:\t\b\b:\b6\a3\b7\0007\t\18\4:\t\b\b:\b8\a3\b9\0007\t\23\4:\t\b\b:\b:\a3\b;\0007\t<\4:\t\b\b:\b=\a3\b>\0007\t\23\4:\t\b\b:\b?\a3\b@\0007\t\23\4:\t\b\b:\bA\a:\aC\6>\5\2\1G\0\1\0\roverride\1\0\0\bzip\1\0\2\tname\bzip\ticon\b\axz\1\0\2\tname\axz\ticon\b\bvue\ngreen\1\0\2\tname\bvue\ticon\b﵂\brpm\1\0\2\tname\brpm\ticon\b\arb\1\0\2\tname\arb\ticon\b\ats\1\0\2\tname\ats\ticon\b\ttoml\1\0\2\tname\ttoml\ticon\b\apy\vyellow\1\0\2\tname\apy\ticon\b\bpng\1\0\2\tname\bpng\ticon\b\bout\1\0\2\tname\bout\ticon\b\bmp4\1\0\2\tname\bmp4\ticon\b\bmp3\1\0\2\tname\bmp3\ticon\b\blua\1\0\2\tname\blua\ticon\b\tlock\1\0\2\tname\tlock\ticon\b\akt\1\0\2\tname\akt\ticon\t󱈙\ajs\1\0\2\tname\ajs\ticon\b\bjpg\1\0\2\tname\bjpg\ticon\b\tjpeg\fmagenta\1\0\2\tname\tjpeg\ticon\b\tjava\1\0\2\tname\tjava\ticon\b\thtml\vorange\1\0\2\tname\thtml\ticon\b\15Dockerfile\1\0\2\tname\15Dockerfile\ticon\b\bdeb\bred\1\0\2\tname\bdeb\ticon\b\bcss\1\0\2\tname\bcss\ticon\b\bcpp\1\0\2\tname\bcpp\ticon\b\acc\1\0\2\tname\acc\ticon\b\6c\1\0\0\ncolor\tblue\1\0\2\tname\6c\ticon\b\nsetup\vcolors\22nvim-web-devicons\22colors.highlights\frequire\npcall\0", "config", "nvim-web-devicons")

vim.cmd [[ packadd galaxyline.nvim ]]

-- Config for: galaxyline.nvim
try_loadstring("\27LJ\1\2'\0\0\1\2\0\0\a+\0\0\0>\0\1\2\15\0\0\0T\1\2�+\0\1\0>\0\1\2H\0\2\0\19�\20�;\0\0\2\1\2\0\n+\0\0\0007\0\0\0\15\0\0\0T\1\2�\a\0\1\0T\1\2�)\1\1\0H\1\2\0)\1\2\0H\1\2\0\r�\5\rfiletype�\1\0\1\a\0\f\0)4\1\0\0007\1\1\0017\1\2\1\15\0\1\0T\2\b�7\2\3\1\15\0\2\0T\2\5�7\2\3\1\19\2\2\0'\3\0\0\3\2\3\0T\2\1�G\0\1\0002\2\3\b7\3\4\1\14\0\3\0T\4\1�'\3\0\0;\3\0\0027\3\5\1\14\0\3\0T\4\1�'\3\0\0;\3\1\0027\3\6\1\14\0\3\0T\4\1�'\3\0\0;\3\2\0027\3\a\0006\3\3\2\14\0\3\0T\4\2�%\4\b\0H\4\2\0004\4\t\0007\4\n\4%\5\v\0\16\6\3\0@\4\3\0\b%s \vformat\vstring\5\vstatus\fremoved\fchanged\nadded\thead\25gitsigns_status_dict\6b\bvim�\1\0\0\t\1\t\1.2\0\0\0004\1\0\0+\2\0\0007\2\1\2'\3\1\0+\4\0\0007\4\2\4%\5\3\0>\4\2\0=\2\1\0=\1\0\4T\4\17�+\6\0\0007\6\4\6\16\a\5\0>\6\2\2\t\6\0\0T\6\v�+\6\0\0007\6\5\6\16\a\5\0>\6\2\2\t\6\0\0T\6\5�4\6\6\0007\6\a\6\16\a\0\0\16\b\5\0>\6\3\1A\4\3\3N\4�4\1\0\0\16\2\0\0>\1\2\4T\4\b�+\6\0\0007\6\2\6%\a\b\0>\6\2\2\5\5\6\0T\6\2�)\6\2\0H\6\2\0A\4\3\3N\4�G\0\1\0\f�\5\vinsert\ntable\14buflisted\14bufexists\6$\nbufnr\nrange\vipairs\2�\1\0\0\3\2\14\0\0313\0\1\0+\1\0\0007\1\0\1:\1\2\0+\1\0\0007\1\3\1:\1\4\0+\1\0\0007\1\5\1:\1\6\0+\1\0\0007\1\a\1:\1\b\0+\1\0\0007\1\a\1:\1\t\0+\1\0\0007\1\a\1:\1\n\0+\1\0\0007\1\v\1:\1\f\0+\1\1\0007\1\r\1>\1\1\0026\1\1\0\v\1\0\0T\2\2�+\2\0\0007\1\v\2H\1\2\0\25�\f�\tmode\6R\bred\6v\6\22\6V\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tblueH\0\0\3\2\2\0\b+\0\0\0%\1\0\0+\2\1\0>\2\1\2$\1\2\1>\0\2\1%\0\1\0H\0\2\0\14�\27�\b▊\29hi GalaxyEmptyBar guifg=�\2\0\0\6\3\5\0\0293\0\0\0003\1\1\0+\2\0\0%\3\2\0+\4\1\0>\4\1\2$\3\4\3>\2\2\1+\2\2\0007\2\3\2>\2\1\0026\2\2\0+\3\2\0007\3\3\3>\3\1\0026\3\3\1\14\0\2\0T\4\4�+\4\2\0007\4\3\4>\4\1\2\16\2\4\0\14\0\3\0T\4\1�%\3\4\0\16\4\3\0\16\5\2\0$\4\5\4H\4\2\0\14�\27�\f�\t \tmode\27hi GalaxyViMode guifg=\1\0\b\6V\t﬏ \6c\tגּ \6\22\t﬏ \6R\t \6n\t \6s\t \6v\t﬏ \6i\t \1\0\b\6V\vVISUAL\6c\fCOMMAND\6\22\vVISUAL\6R\fREPLACE\6n\vNORMAL\6s\fSNIPPET\6v\vVISUAL\6i\vINSERT\19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\b�\1\0\0\5\1\5\0\25+\0\0\0>\0\1\2\14\0\0\0T\1\2�%\1\0\0H\1\2\0\15\0\0\0T\1\16�4\1\1\0007\1\2\1\16\2\0\0>\1\2\2'\2\28\0\1\2\1\0T\1\t�4\1\1\0007\1\3\1\16\2\0\0'\3\1\0'\4\25\0>\1\4\2%\2\4\0$\1\2\1H\1\2\0H\0\2\0\16�\b...\bsub\blen\vstring\14Undefined!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\0!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\1!\0\0\2\1\1\0\3+\0\0\0003\1\0\0@\0\2\0\24�\1\0\1\vstatus\3\2\17\0\0\1\0\1\0\2%\0\0\0H\0\2\0\6 '\0\0\1\2\0\0\a+\0\0\0>\0\1\2\15\0\0\0T\1\2�+\0\1\0>\0\1\2H\0\2\0\19�\26�\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\t \20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\t Q\0\0\1\1\3\0\r+\0\0\0007\0\0\0\15\0\0\0T\0\4�+\0\0\0007\0\0\0\a\0\1\0T\0\2�%\0\2\0H\0\2\0+\0\0\0007\0\0\0H\0\2\0\r�\14undefined\5\rfiletype\31\0\0\2\1\1\0\5+\0\0\0>\0\1\2%\1\0\0$\0\1\0H\0\2\0\17�\6 �\23\1\0!\0\0�\0034\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\0034\4\0\0004\5\1\0%\6\4\0>\4\3\0034\6\0\0004\a\1\0%\b\5\0>\6\3\0034\b\0\0004\t\1\0%\n\6\0>\b\3\0034\n\0\0004\v\1\0%\f\a\0>\n\3\3\14\0\0\0T\f\v�\14\0\2\0T\f\t�\14\0\4\0T\f\a�\14\0\6\0T\f\5�\14\0\b\0T\f\3�\14\0\n\0T\f\1�0\0}�4\f\b\0007\f\t\f4\r\b\0007\r\n\r4\14\b\0007\14\v\0147\15\f\0037\16\r\0057\17\14\a7\18\15\t7\19\16\t7\20\17\t7\21\18\v1\22\19\0001\23\20\0001\24\21\0007\25\22\0011\26\23\0001\27\24\0003\28\26\0:\28\25\0037\28\27\0153\29#\0003\30\29\0001\31\28\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30$\29;\29\1\0287\28\27\0153\29'\0003\30&\0001\31%\0:\31\30\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30(\29;\29\2\0287\28\27\0153\29+\0003\30)\0:\18*\0302\31\3\0;\21\1\0317  \25; \2\31:\31!\30:\30,\29;\29\3\0287\28\27\0153\29/\0003\30-\0:\18*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0300\29;\29\4\0287\28\27\0153\0294\0003\0301\0:\22*\0301\0312\0:\31\30\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0305\29;\29\5\0287\28\27\0153\0298\0003\0306\0:\22*\0301\0317\0:\31\30\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\0309\29;\29\6\0287\28\27\0153\29=\0003\30:\0:\22*\0301\31;\0:\31\30\0302\31\3\0007 <\25; \1\0317  \25; \2\31:\31!\30:\30>\29;\29\a\0287\28\27\0153\29A\0003\30?\0:\22*\0301\31@\0:\31\30\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30B\29;\29\b\0287\28\27\0153\29E\0003\30C\0:\22*\0301\31D\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30F\29;\29\t\0287\28\27\0153\29I\0003\30G\0:\22*\0301\31H\0:\31\30\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31!\30:\30J\29;\29\n\0287\28\27\0153\29L\0003\30K\0002\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30M\29;\29\v\0287\28\27\0153\29O\0003\30N\0002\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30P\29;\29\f\0287\28\27\0153\29S\0003\30Q\0002\31\3\0007 R\25; \1\0317  \25; \2\31:\31!\30:\30T\29;\29\r\0287\28\27\0153\29W\0003\30U\0002\31\3\0007 V\25; \1\0317  \25; \2\31:\31!\30:\30X\29;\29\14\0287\28Y\0153\29[\0003\30Z\0:\19*\0302\31\3\0007 <\25; \1\0317  \25; \2\31:\31!\30:\30\\\29;\29\1\0287\28Y\0153\29a\0003\30^\0001\31]\0:\31*\0301\31_\0:\31\30\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30b\29;\29\2\0287\28Y\0153\29d\0003\30c\0:\19*\0302\31\3\0007 3\25; \1\0317  \25; \2\31:\31!\30:\30e\29;\29\3\0287\28Y\0153\29h\0003\30f\0:\19*\0301\31g\0:\31\30\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007  \25; \1\0317  \25; \2\31:\31\"\30:\30b\29;\29\4\0287\28Y\0153\29k\0003\30j\0001\31i\0:\31\30\0302\31\3\0007 V\25; \1\0317  \25; \2\31:\31!\30:\30l\29;\29\5\0287\28Y\0153\29n\0003\30m\0002\31\3\0007 R\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31\"\30:\30o\29;\29\6\0287\28Y\0153\29q\0003\30p\0:\19*\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\0302\31\3\0007 `\25; \1\0317  \25; \2\31:\31\"\30:\30r\29;\29\a\0287\28Y\0153\29u\0003\30s\0:\19*\0301\31t\0:\31\30\0302\31\3\0007 \31\25; \1\0317  \25; \2\31:\31!\30:\30v\29;\29\b\0287\28w\0153\29y\0003\30x\0:\23*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\30:\30z\29;\29\1\0287\28{\0153\29}\0003\30|\0:\23*\0302\31\3\0007 .\25; \1\0317  \25; \2\31:\31!\30:\30~\29;\29\1\0280\0\0�G\0\1\0G\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\20short_line_left\14ScrollBar\1\0\0\0\1\0\0\fPerCent\1\0\0\1\0\3\rprovider\16LinePercent\ticon\b\14separator\n  \rLineInfo\1\0\0\1\0\3\rprovider\15LineColumn\ticon\t \14separator\n  \15FileFormat\1\0\0\1\0\1\ticon\t \0\1\0\0\0\1\0\1\14separator\6 \17GetLspClient\1\0\0\1\0\2\rprovider\17GetLspClient\ticon\t \14Separator\1\0\0\tgray\0\1\0\1\14separator\6 \0\17BufferNumber\1\0\0\1\0\2\rprovider\17BufferNumber\ticon\t﬘ \nright\19DiagnosticHint\1\0\0\tblue\1\0\2\rprovider\19DiagnosticHint\ticon\t \19DiagnosticInfo\1\0\0\fmagenta\1\0\2\rprovider\19DiagnosticInfo\ticon\t \19DiagnosticWarn\1\0\0\1\0\2\rprovider\19DiagnosticWarn\ticon\t \20DiagnosticError\1\0\0\1\0\2\rprovider\20DiagnosticError\ticon\t \nSpace\1\0\0\0\1\0\0\15DiffRemove\1\0\0\0\1\0\1\ticon\n  \17DiffModified\1\0\0\0\1\0\1\ticon\n  \fDiffAdd\1\0\0\ngreen\0\1\0\1\ticon\n  \14GitBranch\1\0\0\0\1\0\1\14separator\6 \fGitIcon\1\0\0\vorange\0\1\0\1\14separator\6 \rFileName\1\0\0\afg\1\0\2\rprovider\rFileName\14separator\6 \rFileIcon\1\0\0\14condition\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\0\1\14separator\a  \0\rEmptyBar\1\0\0\24separator_highlight\14highlight\abg\bred\rprovider\1\0\1\14separator\6 \0\tleft\1\4\0\0\rNvimTree\vpacker\bfzf\20short_line_list\0\0\vcolors\0\0\0\24get_file_icon_color\24check_git_workspace\18hide_in_width\21buffer_not_empty\23scrollbar_instance\19get_git_branch\fsection\bcmd\abo\afn\bvim!galaxyline.provider_fileinfo\25galaxyline.condition#galaxyline.provider_extensions\28galaxyline.provider_vcs\15galaxyline\22colors.highlights\frequire\npcall\0", "config", "galaxyline.nvim")

vim.cmd [[ packadd barbar.nvim ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gdiff lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiff", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gwrite lua require("packer.load")({'vim-fugitive'}, { cmd = "Gwrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gvdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gvdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSPlaygroundToggle lua require("packer.load")({'playground'}, { cmd = "TSPlaygroundToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gw lua require("packer.load")({'vim-fugitive'}, { cmd = "Gw", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-jsx-pretty', 'emmet-vim', 'vim-closetag'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-jsx-pretty', 'emmet-vim', 'vim-closetag'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'emmet-vim', 'vim-closetag'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'vim-jsx-pretty', 'emmet-vim', 'vim-closetag'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'emmet-vim'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'vim-jsx-pretty', 'emmet-vim', 'vim-closetag'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim', 'vim-closetag'}, { ft = "html" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'emmet-vim', 'vim-closetag', 'vim-surround'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'indent-blankline.nvim', 'vim-multiple-cursors', 'gitsigns.nvim', 'neoscroll.nvim', 'nvim-snippy'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
