#!/usr/bin/env bash

# Adjust the VIM installation
sudo apt purge vim
sudo apt install vim-gtk3
sudo apt install neovim
sudo apt install xclip

# Ensure tmux is installed
sudo apt install tmux

# Ensure git is installed and set the editor and branch defaults
sudo apt install git
git config --global core.editor nvim
git config --global init.defaultBranch main


# Swap the "Caps Lock" and "Ctrl" keys
sudo echo "
###################
# Custom Settings #
###################

# Swap "Caps Lock" and "Ctrl" keys
XKBOPTIONS=ctrl:swapcaps" >> /etc/default/keyboard


