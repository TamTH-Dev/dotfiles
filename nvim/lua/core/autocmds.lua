local cmd = vim.cmd

-- Open nvim with a dir
-- cmd([[ autocmd BufEnter * if &buftype != 'terminal' | lcd %:p:h | endif ]])

-- auto close file explorer when quiting incase a single buffer is left
-- cmd([[ autocmd BufEnter * if (winnr('$') == 1 && &filetype == 'nvimtree') | q | endif ]])

-- Disable inserting comment on new line automatically
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- Set space for specific file types
local set_spaces = function(file_type, space)
  if not file_type then return end
  if not space then space = 4 end
  cmd(table.concat({
    'autocmd Filetype ',
    file_type,
    ' setlocal tabstop=',
    space,
    ' shiftwidth=',
    space,
    ' softtabstop=',
    space
  }))
end

set_spaces('python')
set_spaces('c')
set_spaces('cpp')
set_spaces('java')
set_spaces('php')
set_spaces('sh')
set_spaces('text')
