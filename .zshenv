# PATH
export PATH="$HOME/.local/bin:$HOME/.local/bin/university-setup:$PATH"

# Aplications
export EDITOR=nvim
export BROWSER=qutebrowser

# XDG files
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# TaskWarrior & TimeWarrior
export TASKRC="$XDG_CONFIG_HOME"/taskwarrior/taskrc
export TASKDATA="$XDG_DATA_HOME"/taskwarrior/
export TIMEWARRIORDB="$XDG_CONFIG_HOME"/timewarrior/

# Clean home directory
export GOPATH="$XDG_DATA_HOME"/go
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CONAN_USER_HOME="$XDG_CONFIG_HOME"/conan
export R_ENVIRON_USER="$XDG_CONFIG_HOME"/r
export R_LIBS_USER="$XDG_CONFIG_HOME"/r/packages
export LEIN_HOME="$XDG_DATA_HOME"/lein
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

# Latex
export TEXMFHOME="$XDG_DATA_HOME"/texmf
export TEXMFVAR="$XDG_DATA_HOME"/texlive/texmf-var
export TEXMFCONFIG="$XDG_DATA_HOME"/texlive/texmf-config

# Fix font scaling between monitors
export WINIT_x11_SCALE_FACTOR=1
