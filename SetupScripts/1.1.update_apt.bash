#! /bin/bash

# Script file to update apt packages using nala.
#
# Revision History
# 2025.02.02, A Trimble (atrimble@hawaii.edu)
#   - Initial creation by splitting from 1.0.update_full.bash

## Update apt packages using nala
sudo nala upgrade -y
sudo nala clean
