# Lines configured by zsh-newuser-install
HISTFILE=~/.local/share/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# qq
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hellohelo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Set the prompt
fpath+=$HOME/.zsh/typewritten
autoload -U promptinit; promptinit
prompt typewritten

# Syntax highlight
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Alias
alias ls='ls --color=auto'
alias tsh='trash-put'
alias untar='tar -xzvf'
alias wm='xsetwacom set "Wacom One by Wacom S Pen stylus" MapToOutput'
