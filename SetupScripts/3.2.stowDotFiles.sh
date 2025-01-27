#! /bin/sh

# Script file that utilizes the stow package to create symlinks to all the configuration dotfiles. 
#
# Revision History
# 2025.01.26, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## INPUTS
dotfilesdir=~/SetupFiles/DotFiles  # Location of the dotfiles source files
targetdir=~  # Location to create the symlinks

## Run stow on the full dotfilesdir
#stow --verbose --dir $dotfilesdir --target $targetdir .
stow --verbose --dir $dotfilesdir --target $targetdir tmux
