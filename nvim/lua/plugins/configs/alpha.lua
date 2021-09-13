local is_alpha_loaded, alpha = pcall(require, 'alpha')
if not is_alpha_loaded then return end

local cmd = vim.cmd

local header = {
  type = 'text',
  val = {
    '   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ',
    '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
    '          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ',
    '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
    '          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
    '   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
    '  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
    ' ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
    ' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ',
    '    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       ',
    '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
  },
  opts = {
    position = 'center',
    hl = 'Special'
  }
}

local handler = io.popen('fd -d 2 . $HOME"/.local/share/nvim/site/pack/packer" | head -n -2 | wc -l | tr -d "\n" ')
local plugins_total = handler:read('*a')
handler:close()
local plugins_total_stats = {
  type = 'text',
  val = 'Madvim has loaded '..plugins_total..' plugins ',
  opts = {
    position = 'center',
    hl = 'DevIconSln',
  }
}

local function set_button(sc, text, keybind)
  local sc_ = sc:gsub('%s', ''):gsub('SPC', '<leader>')
  local opts = {
    position = 'center',
    text = text,
    shortcut = sc,
    cursor = 5,
    width = 24,
    align_shortcut = 'right',
    hl_shortcut = 'Special',
    hl = 'DevIconSass',
  }
  if keybind then
    opts.keymap = { 'n', sc_, keybind, { noremap = true, silent = true } }
  end
  return {
    type = 'button',
    val = text,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
      vim.api.nvim_feedkeys(key, 'normal', false)
    end,
    opts = opts,
  }
end

local buttons = {
  type = 'group',
  val = {
    set_button('p', '  Find File' , ':Telescope find_files<cr>'),
    set_button('f', '  Find Word' , ':Telescope live_grep<cr>'),
    set_button('n', '  New File' , ':ene <BAR> startinsert<cr>'),
    set_button('s', '  Settings' , ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<cr>'),
    set_button('q', '  Quit', ':qa<cr>'),
  },
  opts = {
    spacing = 1,
  }
}

local footer = {
  type = 'text',
  val = 'A clever person solves a problem.\n    A wise person AVOIDS it.',
  opts = {
    position = 'center',
    hl = 'Constant',
  }
}

local section = {
  header = header,
  plugins_total_stats = plugins_total_stats,
  buttons = buttons,
  footer = footer,
}

local opts = {
  layout = {
    { type = 'padding', val = 1 },
    section.header,
    { type = 'padding', val = 1 },
    section.plugins_total_stats,
    { type = 'padding', val = 2 },
    section.buttons,
    { type = 'padding', val = 1 },
    section.footer,
  },
  opts = {
    margin = 5
  },
}

-- Apply config to alpha
alpha.setup(opts)

-- -- Disable folding on alpha buffer
cmd('autocmd FileType alpha setlocal nofoldenable')
