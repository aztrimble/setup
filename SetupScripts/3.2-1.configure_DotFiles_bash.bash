#! /bin/bash

# Script file that:
#   - appends to the .bashrc file 
#   - uses stow to add an aliases file to the ~ directory
#
# Revision History
# 2025.02.27, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## Announce intentions
echo "Configuring bash"

## First check to make sure the bashrc hasn't already been appended.
if grep -q 'CUSTOM SETTINGS' ~/.bashrc; then
    echo "CUSTOM SETTINGS already exist in the bashrc file."
    echo "Not making any changes you'll have to investigate manually."
else
    echo "Adding custom settings to the bashrc file."
    cat ~/SetupFiles/ConfigFiles/custom_settings_tag | tee -a ~/.bashrc
    cat ~/SetupFiles/DotFiles/bash/bashrc_additions | tee -a ~/.bashrc
fi

## Check if the aliases files already exists
if [ -h ~/.aliases ]; then
    echo "Aliases already linked"
else
    echo "Linking the aliases file"
    ln -s ~/SetupFiles/DotFiles/bash/aliases ~/.aliases
fi

## Source the new bashrc file
source ~/.bashrc
