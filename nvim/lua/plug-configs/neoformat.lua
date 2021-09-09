local global = vim.g
local api = vim.api

-- Enable basic formatting when a filetype is not found
-- Enable alignment
-- vim.g.neoformat_basic_format_align = 1
-- Enable tab to spaces conversion
-- vim.g.neoformat_basic_format_retab = 1
-- Enable trimmming of trailing whitespace
-- vim.g.neoformat_basic_format_trim = 1

-- Enable formatters for python
global.neoformat_enabled_python = { 'yapf', 'autopep8', 'black' }

-- Format on save
-- api.nvim_exec([[
--   augroup fmt
--     autocmd!
--     autocmd BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
--   augroup END
-- ]], false)
