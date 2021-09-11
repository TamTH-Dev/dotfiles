local is_autopairs_loaded, autopairs = pcall(require, 'nvim-autopairs')
local is_autopairs_completion_loaded, autopairs_completion = pcall(require, 'nvim-autopairs.completion.cmp')
if not (is_autopairs_loaded or is_autopairs_completion_loaded) then
  return
end

autopairs.setup()
autopairs_completion.setup {
  map_complete = true, -- insert () func completion
  map_cr = true, --  map <CR> on insert mode
  auto_select = true -- automatically select the first item
}
