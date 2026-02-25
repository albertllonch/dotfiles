# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

if [ -d "$HOME/.local/share/omarchy" ]; then
  source ~/.local/share/omarchy/default/bash/rc
fi

alias ll='ls -la --color=auto'
alias vim='nvim'

# Dotfiles git bare command
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# XDG Base Directory Specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# opencode
export PATH=/home/albert/.opencode/bin:$PATH
export PATH=/home/albertllonch/.opencode/bin:$PATH

export XCOMPOSEFILE="$XDG_CONFIG_HOME/x11/XCompose"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export CLICOLOR_FORCE=1

# Enable colors for WSL/Windows Terminal compatibility
force_color_prompt=yes

# Tmux config
if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
  tmux attach -t default 2>/dev/null || tmux new -s default
fi

export PATH="$HOME/.npm-global/bin:$PATH"
