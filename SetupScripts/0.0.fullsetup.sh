#! /bin/sh

# Script file to automate setting up a new installation of Ubuntu 24.04 (Note: this sh file is only tested on an Ubuntu 24.04 desktop). Following the strategy of building focused scripts that do one thing very well and then using those to build up an application, the script calls many smaller script files to do the specific tasks (this also makes testing easier).
# Goals
# 1) Update and upgrade
# 2) Install software
# 3) Configure and customize
#
# Revision History
# 2024.09.04, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## Step 1: fully update the system
. ~/SetupFiles/SetupScripts/1.0.fullupdate.sh

## Step 2: install packages
. ~/SetupFiles/SetupScripts/2.0.installPackages_all.sh

## Ensure tmux is installed
#sudo apt install tmux
#
## Ensure git is installed and set the editor and branch defaults
#sudo apt install git
#git config --global core.editor nvim
#git config --global init.defaultBranch main
#
#
## Swap the "Caps Lock" and "Ctrl" keys
#sudo echo "
####################
## Custom Settings #
####################
#
## Swap "Caps Lock" and "Ctrl" keys
#XKBOPTIONS=ctrl:swapcaps" >> /etc/default/keyboard
#
#
