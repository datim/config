#!/bin/bash

# profile for bash configuration. Place in root directory

# setup command line prompt
# Git-prompt.sh located @ https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source ~/scripts/git-prompt.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]$ '

# alias alias
source ~/scripts/alias.sh
