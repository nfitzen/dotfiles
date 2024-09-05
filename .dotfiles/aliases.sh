#!/bin/zsh
# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: (C) 2022-2024 nfitzen <https://github.com/nfitzen>

alias \
    pt4="ping -c4 1.1.1.1" \
    pt6="ping -c4 2606:4700:4700::1111" \
    pt=pt4

alias pcc="gcc -g -Og -Wall -Wconversion"
alias occ="gcc -O2 -Wall -Wconversion"
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias gdbd="gdb -ex 'set debuginfod enabled off'"

[ -f $HOME/.dotfiles/private_aliases.sh ] && source $HOME/.dotfiles/private_aliases.sh
