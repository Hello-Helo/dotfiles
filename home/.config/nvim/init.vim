let mapleader="\<Space>"
let maplocalleader="\\"

call plug#begin('~/.config/nvim/plugged')

"Fuzzy Finder
Plug 'junegunn/fzf.vim'

Plug 'SirVer/ultisnips'
Plug 'Shougo/deoplete.nvim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'bluz71/vim-moonfly-statusline'
Plug 'kovetskiy/sxhkd-vim'
Plug 'dense-analysis/ale'

" Movements
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Distraction-free writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()
