#! /bin/sh

# Script file to install a list of fonts system wide. The list of fonts is provided in the file 'installedFonts'
#
# Revision History
# 2025.01.15, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

while read -r font_url; do
  # Download the font to the Download directory
  # sudo wget -P ~/Downloads/Fonts $font_url
  filename = $(basename -- $font_url)
  echo $filename
done < ~/SetupFiles/SetupScripts/installedFonts
