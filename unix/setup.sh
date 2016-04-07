#!/bin/bash

# create script diretory
SCRIPT_PATH=~/scripts
echo "Creating script directory ${SCRIPT_PATH}"
mkdir -p ${SCRIPT_PATH}

# setup git repository prompt
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ${SCRIPT_PATH}/git-prompt.sh

# add commands to end of bash file
GIT_PROMPT="PS1='[\u@\h \W\$(__git_ps1 \" (%s)\")]\$ '" 
BASH_FILE=~/.bashrc

echo "" >> ${BASH_FILE}
echo "#For command line prompt display of a git branch" >> ${BASH_FILE}
echo "source ${SCRIPT_PATH}/git-prompt.sh" >> ${BASH_FILE}
echo ${GIT_PROMPT} >> ${BASH_FILE}

