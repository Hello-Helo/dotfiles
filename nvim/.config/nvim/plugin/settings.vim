filetype plugin on

" Syntax colors
syntax on
colorscheme nord

" Numbers
set relativenumber number

set shiftwidth=2 tabstop=2 softtabstop=2 
set expandtab autoindent smartindent
set colorcolumn=80

set scrolloff=5

" Folding config
if has('folding')
  if has('windows')
    set fillchars=vert:┃
  endif
  set foldmethod=indent
  set foldlevelstart=99
endif

" Backup files - None for sudo user
if exists('$SUDO_USER')
  set nobackup
  set nowritebackup
else
  set backupdir=$XDG_DATA_HOME/nvim/backup
  set backupdir+=$XDG_DATA_HOME/nvim/tmp/backup
  set backupdir+=.
endif

" Swap files - None for sudo user
if exists('$SUDO_USER')
  set noswapfile
else
  set directory=$XDG_DATA_HOME/nvim/swap//
  set directory+=$XDG_DATA_HOME/nvim/tmp/swap//
  set directory+=.
endif

" Undo files - None for sudo user
if has('persistent_undo')
  if exists('$SUDO_USER')
    set noundofile
  else
    set undodir=$XDG_DATA_HOME/nvim/undo
    set undodir+=$XDG_DATA_HOME/nvim/tmp/undo
    set undodir+=.
    set undofile
  endif
endif
