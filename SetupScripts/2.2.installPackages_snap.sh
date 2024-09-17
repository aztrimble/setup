#! /bin/sh

# Script file to install a list of snap packages
#
# Name of the file contaiing the list of snap packages to install (with modifiers):
# installedPackages_snap
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
  sudo snap install $package_name
done < installedPackages_snap
