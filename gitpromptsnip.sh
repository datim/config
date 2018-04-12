# Git prompt snippit for bash. Color codes git branch and status
# Source: http://www.opinionatedprogrammer.com/2011/01/colorful-bash-prompt-reflecting-git-status/

function _git_prompt() {
    # http://www.opinionatedprogrammer.com/2011/01/colorful-bash-prompt-reflecting-git-status/
    local git_status="`git status -unormal 2>&1`"
    if ! [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
        if [[ "$git_status" =~ nothing\ to\ commit ]]; then
            local ansi=42
        elif [[ "$git_status" =~ nothing\ added\ to\ commit\ but\ untracked\ files\ present ]]; then
            local ansi=43
        else
            local ansi=45
        fi
        if [[ "$git_status" =~ On\ branch\ ([^[:space:]]+) ]]; then
            branch=${BASH_REMATCH[1]}
            test "$branch" != master || branch=' '
        else
            # Detached HEAD.  (branch=HEAD is a faster alternative.)
            branch="(`git describe --all --contains --abbrev=4 HEAD 2> /dev/null ||
                echo HEAD`)"
        fi
        echo -n '\[\e[0;37;'"$ansi"';1m\]'"$branch"'\[\e[0m\] '
    fi
}
function _prompt_command() {
    #PS1="`_git_prompt`"'... your usual prompt goes here, e.g. \[\e[1;34m\]\w \$\[\e[0m\] '
    CURRENT_DIR=`basename $(pwd)`
    PS1="`_git_prompt`"'[$(whoami)@$(hostname) ${CURRENT_DIR}]# '
}


# interactive shell commands. Disabled during remote operations (scp)
if [ -n "$PS1" ]; then
	# set git prompt
	#PS1='[\u@\h \W$(__git_ps1 " (%s)")]$ '
    PROMPT_COMMAND=_prompt_command
fi
