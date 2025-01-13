#! /bin/sh

# Script file to install a list of apt packages
#
# Name of the file containing the list of apt packages to install (with modifiers):
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
# 2025.01.10, A Trimble (atrimble@hawaii.edu)
#   - Change to using nala for a prettier experience
#   - Note: ToDO from initial creation should still be completed

while read -r package_name; do
  sudo nala install -y $package_name
done < ~/SetupFiles/SetupScripts/installedPackages_apt
