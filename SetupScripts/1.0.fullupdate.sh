#! /bin/sh

# Script file to fully update the current system.
#
# Revision History
# 2024.09.13, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## Update apt packages
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove --purge -y
sudo apt autoclean -y

## Update snap packages
sudo snap refresh
