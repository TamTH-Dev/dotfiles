-- Fzf default command and opts
-- local $FZF_DEFAULT_OPTS = '--inline-info --bind=shift-tab:up,tab:down --no-multi --cycle'
-- local $FZF_DEFAULT_COMMAND = 'rg --files --smart-case --hidden -g \"!{node_modules,.git,.cache,cache,build,dist,.idea,package-lock.json}" || true'
local map = vim.api.nvim_set_keymap
local global = vim.g

local opts = { silent = true, nowait = true }

-- Fzf layout
global.fzf_layout = { down = '~40%' }

-- Disable preview window
global.fzf_preview_window = { right = 'hidden' }

-- Actions for fzf
global.fzf_action = {
  ['ctrl-t'] = 'tab split',
  ['ctrl-x'] = 'split',
  ['ctrl-v'] = 'vsplit'
}

-- Open search popup
map('n', '<C-p>', ':Files<cr>', opts)
map('n', '<C-f>', ':Rg<cr>', opts)
map('n', '<C-b>', ':Buffers<cr>', opts)

-- Files searching with preview window
-- command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)

-- Advanced file's content searching
-- command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)

-- Advanced ripgrep integration
-- function! RipgrepFzf(query, fullscreen)
--   let command_fmt = 'rg --line-number --smart-case -g \"!{node_modules,.git,.cache,cache,dist,build,.idea,package-lock.json}" -- %s || true'
--   let initial_command = printf(command_fmt, shellescape(a:query))
--   let reload_command = printf(command_fmt, '{q}')
--   let spec = {'opts': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
--   call fzf#vim#grep(initial_command, 1, a:fullscreen)
-- endfunction
