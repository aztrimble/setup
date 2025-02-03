#! /bin/sh

# Script to set the recommended swap file size based on the amount of installed ram
#
# Revision History
# 2025.01.31, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## Determine the current amount of ram.
# Use free and awk to extract the amount of ram in Mb
totalmem=$(awk "/^Mem:/{print $2}" <<< free -m)
# Use bc to round up to nearest Gb.
totalmem=$(bc <<< "scale=0; ($totalmem+999)/1000")
# Print result to screen.
echo Installed Ram: $totalmem Mb
