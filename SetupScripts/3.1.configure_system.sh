#! /bin/sh

# Script file to make system level configuation changes. Things like keyboard bindings.
#
# Revision History
# 2025.01.12, A Trimble (atrimble@hawaii.edu)
#   - Initial creation
#   - ToDo
#       - Absolute and known file paths are assumed.

## Swap "Caps Lock" and "Ctrl" keys
# First create a backup of the original keyboard file if it doesn't exist
if [ -f "/etc/default/keyboard.original" ]; then
    echo "Backup version of keyboard file already exists"
else
    echo "Creating backup of keyboard file (keyboard.original)"
    sudo cp /etc/default/keyboard /etc/default/keyboard.original
    echo "Appending"
    cat ~/SetupFiles/ConfigFiles/custom_settings_tag | sudo tee -a /etc/default/keyboard
    echo "to the bottom of the keyboard file"
    echo "NOTE: This change won't take effect until you restart the computer."
    echo "If you want the changes to take effect immediately run:"
    echo "sudo dpkg-reconfigure keyboard-configuration"

fi
# Next append the contents of the keyboard_swapcaps file to the system keyboard file
if grep -q 'XKBOPTIONS="ctrl:swapcaps"' '/etc/default/keyboard'; then
    echo "The keyboard file already contains the swapcaps configuration"
else
    echo "Appending"
    cat ~/SetupFiles/ConfigFiles/swapcaps | sudo tee -a /etc/default/keyboard
    echo "to the bottom of the keyboard file"
fi
