# Occasionally Required Fixes
Instructions to perform tasks or fixes that aren't needed very often

## Increase Swap
This method is somewhat obsolete as of 2025.07.10. It is better to use the SetupScript `3.2.configure_adjustSwap.bash'.

How to increase the swap size on an Ubuntu system using a swap file NOT a swap partition.
  1. Make sure the system is using a swap file not a swap partition. If the result of this command is a directory and not a file do not continue.
    ```
      swapon --sho
    ```
  2. If the system is using a swapfile, to change the size using the following commands. Note, the commands assume the swapfile found in 1. above is named `/swapfile`, if that is not true edit appropriately. 
    ```
      sudo swapoff /swapfile
      sudo fallocate -l 4G /swapfile  #change "4G" to the appropriate size
      sudo mkswap /swapfile
      sudo swapon /swapfile
    ```

## Fix screen resolution (usually an NVIDIA problem).
When the computer doesn't boot the screen resolution peoperly try:
  - Sometimes all you need to do is fix the screen resolution.
    1. I'm not sure, but you might only be able to set supported resolutions. To determine the supported resolutions:
      ```
        xrandr -q
      ```
    2. Then to set a resolution:
      ```
        xrandr --size 1600x1200  #or whatever resolution is appropriate.
      ```
  - Sometimes you need to try to reload the packages:
    ```
      sudo apt update
      sudo dpkg --configure -a
      sudo apt upgrade -y
      sudo apt autoremove
      sudo reboot
    ```
