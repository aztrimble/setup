#! /bin/sh

# Script file to fully update the current system.
#
# Revision History
# 2024.09.13, A Trimble (atrimble@hawaii.edu)
#   - Initial creation
# 2025.01.10, A Trimble (atrimble@hawaii.edu)
#   - Change from using apt to using nala
#     - From the nala man page:
#       - nala upgrade is the equivalent of apt update && apt full-upgrade --auto-remove
#     - Change from autoclean to clean since nala doesn't use autoclean
#       - previous command: sudo apt autoclean -y

## Insure nala is installed first
. ~/SetupFiles/SetupScripts/2.3.install_nala.sh

## Update apt packages using nala
sudo nala upgrade -y
sudo nala clean

## Update snap packages
sudo snap refresh
