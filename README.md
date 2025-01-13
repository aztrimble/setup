# Setup Repository
## Description
Repository that contains directions and common setup or configuration files for a new Ubuntu installation

## Directory Listing
- [`bash`](/bash): customized settings for .bashrc, .bash_alias, and .alias files
- [`git`](/git): .gitconfig and other git configuration files 
- [`tmux`](/tmux): .tmux.conf and .tmux directory with plugin files.
- [`vim`](/vim): .vimrc and plugin files
## Stuff I do on a new Ubuntu Installation
1. Disable unattended-upgrades
    ```
    sudo systemctl disable --now unattended-upgrades && systemctl daemon-reload
    ```
    A reboot shouldn't technically be required, but I recommended it at this point, just to stop the Software Updater from continually interrupting.

    NOTE, this disables all automatic upgrades - including security upgrades. Thus, you need to be diligent in running upgrades manually on a regular basis.
1. Ensure the latest apt repositories version of git is installed.
    ```
    sudo apt update && sudo apt purge git && sudo apt install git -y
    ```
1. Clone this Repository
    ```
    git clone https://github.com/aztrimble/setup.git ~/SetupFiles
    ```
1. Install nala for a better experience
    ```
    sudo apt install nala -y
    ```
1. Run the update scripts and reboot
    ```
    sh ~/SetupFiles/SetupScripts/1.0.fullupdate.sh
    ```
    Similar to Step 1, you shouldn't technically need to do this, but I find things run a bit faster and smoother if you do a reboot at this point. If you don't want to reboot, then you can skip this step and run the setup script in the next step directly without rebooting.
1. Run the setup script
    ```
    sh ~/SetupFiles/SetupScripts/0.0.fullsetup.sh
    ```

## NOTE: as of 1/10/2025 the remainder is obsolete and being worked on.
1. Install a version of vim with global clipboard support. For instance:
    ```
    sudo apt purge vim
    sudo apt install vim-gtk3
    sudo apt install neovim
    sudo apt install xclip
    ```
1. Install tmux:
    ```
    sudo apt install tmux
    ```
    Also install the [TMUX Plugin Manager (tpm)](https://github.com/tmux-plugins/tpm) for tmux
   ```
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```
1. Install and set up GIT:
    - Install
        ```
        sudo apt install git
        ```
    - Set up Initial Global Credentials:
        ```
        git config --global user.name "Firstname Lastname"
        git config --global user.email "username@emailserver.com"
        git config --global core.editor vim
        git config --global init.defaultBranch main
        ```
        TEMP: command quickly copy ssh key
        ```
        xclip -sel clip < ~/.ssh/id_ed***.pub
        ```
1. Clone this repository. I recommend into a new directory named `GIT`:
    ```
    mkdir ~/GIT
    cd ~/GIT
    git clone https://github.com/aztrimble/setup
    ```
1. Copy the setup files to the approriate locations:
    - Vim: From the local >setup< directory
        ```
        cp ./vim/.vimrc ~
        cp -r ./vim/.vim ~
        ```
    - Bash: For bashrc, use vim to copy in appropriate sections of the .bashrc file
    - Tmux: from the local >setup< directory
        ```
        cp ./tmux/.tmux.conf ~
        cp -r ./tmux/.tmux ~
        ```
1. Install some useful software
    - Programming essentials
        ```
        sudo apt install build-essentials
        sudo apt install manpages-dev
        ```
