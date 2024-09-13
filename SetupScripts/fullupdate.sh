#! /bin/bash

# Script file to fully update the current system.
#
# Revision History
# 2024.09.13, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

apt update
apt upgrade -y
apt dist-upgrade -y
apt autoremove -y
apt autoclean -y
