#!/usr/bin/zsh
# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: (C) 2022 nfitzen <https://github.com/nfitzen>

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
    source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
    source /usr/share/zsh/manjaro-zsh-prompt
fi

source $HOME/.dotfiles/aliases.sh

path+=~/.emacs.d/bin
fpath+=~/.dotfiles/functions
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
autoload -U $fpath[-1]/*(.:t)

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" > /dev/null
fi

export EDITOR=/usr/bin/vim
