#! /bin/sh

# Script file to install the kitty terminal 
#
# Revision History
# 2025.01.12, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

# Copy and run the installer
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin launch=n

# Create symbolic links to add kitty and kitten to PATH
#ln -sf ~/.l
