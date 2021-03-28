let mapleader="\<Space>"
let maplocalleader="\\"

call plug#begin('~/.config/nvim/plugged')

"Fuzzy Finder
Plug 'junegunn/fzf.vim'

" Code completion
Plug 'Shougo/deoplete.nvim'
Plug 'SirVer/ultisnips'

" Language support
Plug 'dense-analysis/ale'
Plug 'lervag/vimtex'
Plug 'kovetskiy/sxhkd-vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Statusline
Plug 'bluz71/vim-moonfly-statusline'

" Movements
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Distraction-free writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()
