#! /bin/sh

# Script to set the recommended swap file size based on the amount of installed ram
#
# Revision History
# 2025.01.31, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## INPUTS
totalm=$(free -m | awk '/^Mem:/{print $2}')
echo "scale=0; ($totalm)/1000" | bc
#totalm=$('scale=0; totalm/1000' | bc)
echo Installed Ram: $totalm Mb
