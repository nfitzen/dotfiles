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
path+=~/.npm-packages/bin/
fpath+=~/.dotfiles/functions
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
autoload -U $fpath[-1]/*(.:t)

export EDITOR=/usr/bin/vim

alias kssh-add="SSH_ASKPASS=/usr/bin/ksshaskpass ssh-add < /dev/null"
