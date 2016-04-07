#!/bin/bash

# create script diretory
SCRIPT_PATH=~/scripts
echo "Creating script directory ${SCRIPT_PATH}"
mkdir -p ${SCRIPT_PATH}

# setup git repository prompt
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ${SCRIPT_PATH}/git-prompt.sh

# add commands to end of bash file
GIT_PROMPT="PS1='[\u@\h \W\$(__git_ps1 \" (%s)\")]\$ '" 

echo "source ${SCRIPT_PATH}/git-prompt.sh" >> ~/.bashrc
echo ${GIT_PROMPT} >> ~/.bashrc

# setup config
cp ./vimrc ~/.vimrc
cp ./screenrc ~/.screenrc

# setup alias
cp ./alias.sh ${SCRIPT_PATH}
echo "source ${SCRIPT_PATH}/alias.sh" >> ~/.bshrc

