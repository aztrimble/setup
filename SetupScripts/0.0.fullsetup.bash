#! /bin/bash

# Script file to automate setting up a new installation of Ubuntu 24.04 (Note: this sh file is only tested on an Ubuntu 24.04 desktop). Following the strategy of building focused scripts that do one thing very well and then using those to build up an application, the script calls many smaller script files to do the specific tasks (this also makes testing easier).
# Goals
# 1) Update and upgrade
# 2) Install software
# 3) Configure and customize
#
# Revision History
# 2024.09.04, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## Step 1: use the upgrade_full script to update and upgrade everything.
. ~/SetupFiles/SetupScripts/1.0.update_full.bash

## Step 2: use the install_all script to install everything
. ~/SetupFiles/SetupScripts/2.0.install_all.bash

## Step 3: use the configure_all script to configure everything
. ~/SetupFiles/SetupScripts/3.0.configure_all.bash

## Step 4: use the customize_all script to apply all customizations
. ~/SetupFiles/SetupScripts/4.0.customize_all.bash
