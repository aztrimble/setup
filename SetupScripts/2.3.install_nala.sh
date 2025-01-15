#! /bin/sh

# Script file to install nala
#
# Revision History
# 2025.01.15, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

# Install nala using apt if it isn't already installed.
if dpkg -s nala &>/dev/null; then
  echo 'nala already installed'
else
  echo 'Installing nala'
  sudo apt update
  sudo apt install nala -y
fi
