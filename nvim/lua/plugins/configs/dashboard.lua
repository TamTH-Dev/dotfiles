local global = vim.g
local api = vim.api
local cmd = vim.cmd

global.dashboard_disable_at_vimenter = 0
global.dashboard_disable_statusline = 1
global.dashboard_default_executive = 'telescope'
global.dashboard_custom_header = {
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
   '                                   ',
}

global.dashboard_custom_section = {
   a = { description = { '  Find File                 SPC f f' }, command = 'Telescope find_files' },
   b = { description = { '  Recents                   SPC f o' }, command = 'Telescope oldfiles' },
   c = { description = { '  Find Word                 SPC f w' }, command = 'Telescope live_grep' },
   d = { description = { '洛 New File                  SPC f n' }, command = 'DashboardNewFile' },
   e = { description = { '  Bookmarks                 SPC b m' }, command = 'Telescope marks' },
}

cmd([[ let packages = len(globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1)) ]])

api.nvim_exec(
  [[
    let g:dashboard_custom_footer = [ 'Madvim has loaded '..packages..' plugins ', '', '  Stay Hungry. Stay Foolish' ]
  ]],
  false
)
