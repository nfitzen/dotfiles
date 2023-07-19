#!/bin/sh
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2023 nfitzen <https://github.com/nfitzen>

[ -z "$SSH_AGENT_PID" ] && eval `ssh-agent -s`

# export SSH_ASKPASS=/usr/bin/ksshaskpass
