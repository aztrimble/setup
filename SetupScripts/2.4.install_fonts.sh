#! /bin/sh

# Script file to install a list of fonts system wide. 
#   - INPUTS
#     -installedFonts: a file with a list of urls where each font can be downloaded from, one per line
#
# Revision History
# 2025.01.15, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

# Iterate through each line of the installedFonts file
while read -r font_url; do
  # Determine the filename and fontname
  filename=$(basename "$font_url")
  fontname=${filename%.*}
  if [ -f ~/Downloads/Fonts/$filename ]; then
    echo $filename 'is already downloaded, skipping this font.'
    echo 'If you meant to update this font:'
    echo '  1) Manually delete ~/Downloads/Fonts/'$filename
    echo '  2) Rerun the script'
  else
    # Download each font to the ~/Downloads/Fonts directory
    wget -P ~/Downloads/Fonts $font_url
    # Unzip file to the system font folder
    sudo unzip ~/Downloads/Fonts/$filename -d /usr/share/fonts/$fontname
  fi
done < ~/SetupFiles/SetupScripts/installedFonts

# Update the font cache to recoginze the new fonts
sudo fc-cache -f -v
