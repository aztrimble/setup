#! /bin/sh

# Script file to fully update the current system.
#
# Revision History
# 2024.09.13, A Trimble (atrimble@hawaii.edu)
#   - Initial creation
# 2025.01.10, A Trimble (atrimble@hawaii.edu)
#   - Change from using apt to using nala
#   - Change from autoclean to clean since nala doesn't use autoclean
#     previous command: sudo apt autoclean -y

## Update apt packages using nala
sudo nala update
sudo nala upgrade -y
sudo nala dist-upgrade -y
sudo nala autoremove --purge -y
sudo nala clean 

## Update snap packages
sudo snap refresh
