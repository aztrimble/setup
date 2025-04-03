#! /bin/bash

# Script file to install ROS2 jazzy. 
#   - Many assumptions are made, mostly assuming previous scripts in this repository have already been run.
#   Assumptions:
#     - locale is already set correctly.
#     - curl and other similar programs are already installed.
#     - bashrc has already been customized
#   - ROS is only sourced in bash not in zsh
#
# Revision History
# 2024.04.02 A Trimble (atrimble@hawaii.edu)
#   - Initial creation

# Ensure the unviverse repository is enabled
echo Adding the universe repository.
sudo apt-add-repository universe
sudo nala update

# Add the ROS2 GPG key.
if [ -f /usr/share/keyrings/ros-archive-keyring.gpg ]; then
  echo "The keyring seems to already contain a ros gpg key."
  echo "Not making and changes, you'll hae to investigate manually."
else
  echo "Adding the ROS2 GPG key."
  sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
fi

# Add the ROS2 repository to the sources list
if [ -f /etc/apt/sources.list.d/ros2.list ]; then
  echo "The ROS2 repository seems to already be added to the sources list."
  echo "Not making and changes, you'll hae to investigate manually."
else
  echo Adding the ROS2 repository to the soures list.
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
fi
sudo nala update

# Install stuff
sudo nala install ros-dev-tools -y
sudo nala install ros-jazzy-ros-base -y
sudo nala install python3-colcon-common-extensions -y

# Create ROS directory and add sourceros file
if [ -d ~/ROS ]; then
  echo "~/ROS directory already exists."
else
  echo "Creating ~/ROS directory."
  mkdir ~/ROS
fi
if [ -f ~/ROS/sourceros ]; then
  echo "sourceros file already exists."
else
  echo "Copying generic sourceros file to ~/ROS directory."
  cp ~/SetupFiles/ConfigFiles/sourceros ~/ROS/
fi

# Add sourcing of sourceros file to the .bashrc file
if grep -q 'ROS' ~/.bashrc; then
  echo ".bashrc already contains the string ROS."
  echo "Not making any changes, you'll have to investigate manually."
else
  echo "Adding customization to .bashrc file."
  cat ~/SetupFiles/ConfigFiles/rosbashrc | tee -a ~/.bashrc
fi
