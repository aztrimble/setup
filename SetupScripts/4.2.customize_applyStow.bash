#! /bin/bash

# Script file that utilizes the stow package to create symlinks to all the configuration dotfiles. 
#
# Revision History
# 2025.01.26, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## PARSE INPUTS
dotfilesdir=$1
targetdir=$2
item=$3

## Create a directory. 
# Explanation: This is so any packages or other downloads don't get replicated in the dotfilesdir. Otherwise stow creates a symlink to the directory and any files added to the symlink directory are also added to the dotfilesdir. A good example is tmux and nvim, which both use package managers to add capabilities. The package managers download content from the internet into the approriate location in the ~/.config directory. I don't want those files to also be added to my repository. There may be some argument to have the items duplicated. If they are duplicated, then I have the files I need even if the package disappears from the internet. However, for now I'm willing to risk it.
mkdir -p $targetdir/$item

## Use stow to create symlinks
stow --verbose --dir $dotfilesdir --target $targetdir $item
