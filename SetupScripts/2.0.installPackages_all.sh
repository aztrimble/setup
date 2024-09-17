#! /bin/sh

# Script file to install all packages
#
# Revision History
# 2024.09.16, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## Install apt packages
. ~/SetupFiles/SetupScripts/2.1.installPackages_apt.sh

## Install snap packages
. ~/SetupFiles/SetupScripts/2.2.installPackages_snap.sh
