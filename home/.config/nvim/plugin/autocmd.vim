" Remove spaces on the end of a line when saving
autocmd BufWritePre * %s/\s\+$//e

" Remove TeX build files
autocmd VimLeave *.tex !texclear %
