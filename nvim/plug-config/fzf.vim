" Fzf default command and options
let $FZF_DEFAULT_OPTS = '--inline-info --bind=shift-tab:up,tab:down --no-multi --cycle'
let $FZF_DEFAULT_COMMAND = 'rg --files --smart-case --hidden -g \"!{node_modules,.git,.cache,cache,build,dist,.idea,package-lock.json}" || true'

" " Fzf layout
let g:fzf_layout = {'down': '~40%'}

" " Disable preview window
let g:fzf_preview_window = ['right:hidden']

" let g:fzf_nvim_statusline = 0

" " Open search popup
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :Rg<CR>
nnoremap <silent> <C-b> :Buffers<CR>

" " Actions for fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" " Files searching with preview window
command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)

" " Advanced file's content searching
command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)

" " Advanced ripgrep integration
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --line-number --smart-case -g \"!{node_modules,.git,.cache,cache,dist,build,.idea,package-lock.json}" -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, a:fullscreen)
endfunction
