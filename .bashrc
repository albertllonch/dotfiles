# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

alias ll='ls -a'
alias vim='nvim'

# Dotfiles git bare command
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# XDG Base Directory Specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# opencode
export PATH=/home/albert/.opencode/bin:$PATH
export XCOMPOSEFILE="$XDG_CONFIG_HOME/x11/XCompose"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
