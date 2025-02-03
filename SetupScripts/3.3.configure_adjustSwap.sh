#! /bin/bash

# Script to set the recommended swap file size based on the amount of installed ram
#
# Revision History
# 2025.01.31, A Trimble (atrimble@hawaii.edu)
#   - Initial creation

## Determine the currently installed amount of memory
totalmem=$(free -m | awk '/^Mem:/{print $2}')
totalmem=$(bc <<< "scale=0; ($totalmem + 999) / 1000")
echo "Installed Ram: $totalmem Gb"

## Determine the amount of swap space to create
if [ $totalmem -le 2 ]; then
  swapsize=$(bc <<< "scale=0; ($totalmem * 3)")
  echo "swapsize: $swapsize Gb"
elif [ $totalmem -le 8 ]; then
  swapsize=$(bc <<< "scale=0; ($totalmem * 2)")
  echo "swapsize: $swapsize Gb"
elif [ $totalmem -le 64 ]; then
  swapsize=$(bc <<< "scale=0; (($totalmem * 3)+1)/2")
  echo "swapsize: $swapsize Gb"
else
  echo "ERROR: Indicating installed ram > 64 Gb"
fi

swapsize=10

## Turn off all swap before creating new swap
sudo swapoff -a


## Allocate a block of disk memory for swap space
sudo fallocate --length ${swapsize}G /swapfile

## Set permissions to only the current user
sudo chmod 600 /swapfile

## Mark the file as swapspace
sudo mkswap /swapfile

## Enable swap
sudo swapon /swapfile

## Write the change to the fstab file so the change persists.
if grep -q '/swapfile' '/etc/fstab'; then
  echo "fstab already contains a /swapfile line...removing the line to add the new custom line."
else
  echo "Adding:"
  echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
  echo "to the fstab file."
fi
