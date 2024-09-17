#! /bin/sh

# Script file to install a list of apt packages
#
# Name of the file contaiing the list of apt packages to install (with modifiers):
# installedPackages_apt
#
# Revision History
# 2024.09.16, A Trimble (atrimble@hawaii.edu)
#   - Initial creation
#   - ToDO:
#     - Add user file input: objectives
#       - Default value hard coded
#       - Overwritten by user input
#       - Error checking


while read -r package_name; do
  sudo apt install $package_name
done < installedPackages_apt
