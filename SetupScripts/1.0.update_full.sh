#! /bin/sh

# Script file to fully update and upgrade the current system.
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

## Update and upgrade apt packages 
. ~/SetupFiles/SetupScripts/1.1.update_apt.sh

## Update and upgrade snap packages
. ~/SetupFiles/SetupScripts/1.2.update_snap.sh
