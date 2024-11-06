#!/usr/bin/zsh
# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: (C) 2022, 2024 nfitzen <https://github.com/nfitzen>

# The following is by the Manjaro team, (C) 2017,
# from https://github.com/Chrysostomus/manjaro-zsh-config:
# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
    source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
    source /usr/share/zsh/manjaro-zsh-prompt
fi
# The rest is by me:

source $HOME/.dotfiles/aliases.sh

path+=~/.emacs.d/bin # my beloved
path+=~/.npm-packages/bin/
path+=(~/.cabal/bin ~/.ghcup/bin) # Haskell
fpath+=~/.dotfiles/functions
# Used to manage these dotfiles:
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

autoload -U $fpath[-1]/*(.:t)

export EDITOR=/usr/bin/vim

alias kssh-add="SSH_ASKPASS=/usr/bin/ksshaskpass ssh-add < /dev/null"
