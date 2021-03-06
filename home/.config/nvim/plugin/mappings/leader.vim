" FZF mappings
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :wq<CR>

" Enable and disable auto comment
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>

nnoremap <leader>so :so %<CR>

" Enable spell checking, s for spell check
map <leader>se :setlocal spell! spelllang=en_us<CR>
map <leader>sp :setlocal spell! spelllang=pt_br<CR>

" Git
nmap <leader>gs :G<CR>
nmap <leader>gm :Git commit<CR>

" Goyo & Limelight
nnoremap <leader>yo :Goyo<CR>

