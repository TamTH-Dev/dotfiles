syntax enable
filetype indent on

" Save neovim yank to clipboard
set clipboard+=unnamedplus

" Disable inserting comment on new line automatically
au BufEnter * set fo-=c fo-=r fo-=o

" Set tab/space for specific languages
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype c setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype java setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype sh setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype text setlocal tabstop=4 shiftwidth=4 softtabstop=4
