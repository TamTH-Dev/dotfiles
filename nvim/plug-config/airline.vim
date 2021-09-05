" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1

" Path formatter
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Disable buffer rendering on tabline
let g:airline#extensions#tabline#show_buffers = 0

" Enable caching of the various syntax highlighting groups
let g:airline_highlighting_cache = 1

" Enable powerline fonts
let g:airline_powerline_fonts = 1
