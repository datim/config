#!/bin/bash
# setup command line prompt
source /home/jroecks/scripts/git-prompt.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]$ '

# alias alias
source /home/jroecks/scripts/alias.sh
