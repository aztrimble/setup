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
    - Converted to using Nala on 2025.01.12
        - From the nala man page, nala upgrade is the equivalent of apt update && apt full-upgrade --auto-remove.
        - Since this is running full-upgrade always, there is a small risk an older dependency will be removed and break some other program that used this dependency.
    - clean
    - snap refresh
## Install software/packages
Scripts that install list of packages 
- 2.0.installPackages_all.sh 
    - Install everything
- 2.1.installPackages_apt.sh 
    - Install packages listed in the installedPackages_apt file 
    - Note, this only works for packages that do not require customization or additional steps beyond inline customization.
- 2.2.installPackages_snap.sh 
    - Install packages listed in the installedPackages_snap file
    - Note, this only works for packages that do not require customization or additional steps beyond inline customization.
## Supporting Files
- installedPackages_apt
    - list of packages to install using apt without any required customization
- installedPackages_snap
    - list of packages to install using apt without any required customization
    
