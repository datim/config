#!/bin/bash

# create script diretory
SCRIPT_PATH=~/scripts
echo "Creating script directory ${SCRIPT_PATH}"
mkdir -p ${SCRIPT_PATH}

# setup git repository prompt
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ${SCRIPT_PATH}/git-prompt.sh

# setup alias
cp ./alias.sh ${SCRIPT_PATH}

# add commands to end of bash file
BASH_FILE=~/.bashrc

# setup config
cp ./.vimrc ~/.vimrc
cp ./.screenrc ~/.screenrc

# copy profile, which has additional configuration
cp ./.profile ~/.profile
