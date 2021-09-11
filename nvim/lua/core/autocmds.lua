local cmd = vim.cmd

-- Open nvim with a dir
-- vim.cmd [[ autocmd BufEnter * if &buftype != 'terminal' | lcd %:p:h | endif ]]

-- Don't show status line on certain windows
cmd([[ autocmd BufEnter,BufWinEnter,FileType,WinEnter * lua require('core.utils').hide_statusline() ]])

-- auto close file exploer when quiting incase a single buffer is left
cmd([[ autocmd BufEnter * if (winnr('$') == 1 && &filetype == 'nvimtree') | q | endif ]])

-- File extension specific tabbing
-- vim.cmd [[ autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]

cmd('au BufEnter * set fo-=c fo-=r fo-=o')
cmd('noswapfile')
cmd('syntax enable')

local set_4_spaces_for_specific_file_type = function(file_type)
	if not file_type then return nil end
	local command = 'autocmd Filetype '
	command = command..file_type
	command = command..' setlocal tabstop=4 shiftwidth=4 softtabstop=4'
	cmd(command)
end

set_4_spaces_for_specific_file_type('python')
set_4_spaces_for_specific_file_type('c')
set_4_spaces_for_specific_file_type('cpp')
set_4_spaces_for_specific_file_type('java')
set_4_spaces_for_specific_file_type('php')
set_4_spaces_for_specific_file_type('sh')
set_4_spaces_for_specific_file_type('text')
