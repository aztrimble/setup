#! /bin/bash

# Script file to run all configuration scripts (and thus apply all configurations).
#
# Revision History
# 2025.01.12, A Trimble (atrimble@hawaii.edu)
#   - Initial creation
# 2025.04.01, A Trimble (atrimble@hawaii.edu)
#   - Reoganize to have less sub-setup files. All files called by this script make direct changes.

## Swap "Caps Lock" and "Ctrl" keys
. ~/SetupFiles/SetupScripts/3.1.configure_swapCaps.bash

## Adjust swapfile size
. ~/SetupFiles/SetupScripts/3.2.configure_adjustSwap.bash

## Use zsh as system default (instead of bash)
#. ~/SetupFiles/SetupScripts/3.3.configure_zsh.bash
