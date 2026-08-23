local gp = vim.api.nvim_create_augroup('whiteSpaceTrimmer', {clear = true})

-- Remove trailing whitespaces
vim.api.nvim_create_autocmd({'BufWritePre'},
	{ callback = function()
      local save = vim.fn.winsaveview()
      vim.api.nvim_command([[keeppatterns silent %s/\\\@<!\s\+$//e]])
      vim.fn.winrestview(save)
	  end,
    group = gp})

-- Texclear
vim.api.nvim_create_autocmd({'BufDelete'},
	{ pattern = "*.tex",
    callback = function()
      print("aaaaaaaaaaaaaaaaaaaaaaa")
      local file_name = vim.api.nvim_buf_get_name(0)
      print(file_name)
      vim.cmd(":!texclear " .. file_name)
	  end,
    group = gp})
