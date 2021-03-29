let mapleader="\<Space>"
let maplocalleader="\\"

call plug#begin('~/.config/nvim/plugged')

"Fuzzy Finder
Plug 'junegunn/fzf.vim'

" Code completion
Plug 'neovim/nvim-lspconfig'
Plug 'SirVer/ultisnips'
Plug 'hrsh7th/nvim-compe'

" Language support
Plug 'lervag/vimtex'
Plug 'kovetskiy/sxhkd-vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Statusline
Plug 'hoob3rt/lualine.nvim'

" Movements
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'rstacruz/vim-closer'

" Distraction-free writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Startuptime
Plug 'dstein64/vim-startuptime'

call plug#end()
