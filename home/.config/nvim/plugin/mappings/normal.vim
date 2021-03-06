" Splits navegation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Alias replace all to
nnoremap <A-s> :%s//gIc<Left><Left><Left>

lua << EOF
vim.api.nvim_set_keymap("i", "<A-Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<A-Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
EOF

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
