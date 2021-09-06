-- Automatically displays all buffers when there's only one tab open
vim.g['airline#extensions#tabline#enabled'] = 1

-- Path formatter
vim.g['airline#extensions#tabline#formatter'] = 'unique_tail'

-- Disable buffer rendering on tabline
vim.g['airline#extensions#tabline#show_buffers'] = 0

-- Enable caching of the various syntax highlighting groups
vim.g['airline_highlighting_cache'] = 1

-- Enable powerline fonts
vim.g['airline_powerline_fonts'] = 1
