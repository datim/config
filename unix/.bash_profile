#!/bin/bash

# profile for bash configuration. Place in root directory

# interactive shell commands. Disabled during remote operations (scp)
if [ -n "$PS1" ]; then
	# Git-prompt.sh located @ https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
	source ~/scripts/git-prompt.sh
	PS1='[\u@\h \W$(__git_ps1 " (%s)")]$ '
fi

# alias alias
source ~/scripts/alias.sh
