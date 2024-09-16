# File Directory and Descriptions

## Highest level
Basically scripts that call other scripts
- 0.0.fullsetup.sh 
    - Highest level script
    - Runs all setup scripts
        1. Fully update and upgrade the system
        1. Install packages
        1. Configure
## Update and Upgrade
Scripts that calls various configurations of update and upgrade
- 1.0.fullupgrade.sh 
    - upgrade 
    - update 
    - dist-upgrade
    - autoremove
    - autoclean
## Supporting Files
- installedPackages_apt
    - list of packages to install using apt without any required customization
