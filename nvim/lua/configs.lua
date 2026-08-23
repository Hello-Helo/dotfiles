-- Basic configuration

-- Global
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- TAB
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Line break
vim.opt.textwidth = 1000
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Autocomplete
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Scrolling
vim.opt.scrolloff = 5

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Split
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Sign columns
vim.opt.signcolumn = 'yes:1'

-- Folding
vim.opt.foldmethod = 'indent'
vim.opt.foldlevelstart = 99

-- Formatting
vim.opt.formatoptions:remove('c','r','o')

-- Plugin manager setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
