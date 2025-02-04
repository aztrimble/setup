#! /bin/bash

# Script file to install a list of snap packages
#
# Name of the file containing the list of snap packages to install (with modifiers):
# installedPackages_snap
#
# Revision History
# 2024.09.16, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

# Use snap to install each package in the file named below. One package per line.
while read -r package_name; do
  if [ "${package_name:0:1}" == "#" ]; then 
    echo "${package_name:1} commented out"
  else
    sudo snap install $package_name
  fi
done < ~/SetupFiles/SetupScripts/installedPackages_snap
