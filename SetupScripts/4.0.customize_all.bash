#! /bin/bash

# Script file to run all customization scripts (and thus apply all customizations). Most scripts use stow to add symlinks to the dotfiles
#
# Revision History
# 2025.04.01, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## INPUTS
scriptfiledir=~/SetupFiles/SetupScripts  # Location of the setup scripts
dotfilesdir=~/SetupFiles/DotFiles  # Location of the dotfiles source files
targetdir=~/.config  # Location to create most symlinks
stowdirs=(git tmux nvim)  # List of directories in the dotfiles directory to apply the stow procss to

## Add customizations to the bashrc file and symlink the aliases file (used by both bash and zsh)
. $scriptfiledir/4.1.customize_bashrc.bash

## Stow dotfiles for git
for item in ${stowdirs[*]}
do
  . $scriptfiledir/4.2.customize_applyStow.bash $dotfilesdir $targetdir $item
done

## Adjust swapfile size
# . ~/SetupFiles/SetupScripts/3.2.configure_adjustSwap.bash
#
## Use zsh as system default (instead of bash)
#. ~/SetupFiles/SetupScripts/3.3.configure_zsh.bash
