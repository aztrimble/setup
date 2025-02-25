#! /bin/bash

# Script file to make system level configuation changes. Things like keyboard bindings, swap file, etc.
#   Note: uses absolute file paths
#
# Revision History
# 2025.01.12, A Trimble (atrimble@hawaii.edu)
#   - Initial creation
# 2025.02.03, A Trimble (atrimble@hawaii.edu)
#   - Convert to individual files that are called by a single script.
#   - Add script to adjust swap file size

## Swap "Caps Lock" and "Ctrl" keys
. ~/SetupFiles/SetupScripts/3.1-1.configure_swapCaps.bash

## Adjust swapfile size
. ~/SetupFiles/SetupScripts/3.1-2.configure_adjustSwap.bash
