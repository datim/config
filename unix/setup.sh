#!/bin/bash

# create script diretory
declare -r SCRIPT_PATH=~/scripts
echo "Creating script directory ${SCRIPT_PATH}"
mkdir -p ${SCRIPT_PATH}

# setup git repository prompt
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ${SCRIPT_PATH}/git-prompt.sh

# setup alias
cp ./alias.sh ${SCRIPT_PATH}

# add commands to end of bash file
declare -r BASH_FILE=~/.bashrc

# setup config
cp ./.vimrc ~/.vimrc
cp ./.screenrc ~/.screenrc

# add the profile
declare -r PROFILE_SCRIPT=bash_profile
cp ./${PROFILE_SCRIPT} ${SCRIPT_PATH}

echo "" >> ~/.bashrc
echo "# custom configuration" >> ~/.bashrc
echo "source ${SCRIPT_PATH}/${PROFILE_SCRIPT}" >> ~/.bashrc
