# Setup Repository

## Description

Repository that contains directions and common setup or configuration files for a new Ubuntu installation

## Directory Listing

Not currently accurate - to be edited.
- [`bash`](/bash): customized settings for .bashrc, .bash_alias, and .alias files
- [`git`](/git): .gitconfig and other git configuration files 
- [`tmux`](/tmux): .tmux.conf and .tmux directory with plugin files.
- [`vim`](/vim): .vimrc and plugin files

## Stuff I do on a new Ubuntu Installation

1. Disable unattended-upgrades temporarily just to stop the Software Updater from continually interrupting the setup process.
    ```
    sudo systemctl disable --now unattended-upgrades && systemctl daemon-reload
    ```
    
1. Install nvim for editing config files
    ```
    sudo snap install nvim --classic
    ```

1.  Adjust the text size if necessary
    ```
    sudo nvim /etc/default/console-setup
    ```
    Change the `FONTSIZE` variable to an appropraite value. E.g. `FONTSIZE="16x32"'

    For some more fun you can try to figure out how to use sed or awk to do it...
    ```
    sudo sed -i '/FONTSIZE/s/".*"/"16x32"/' /etc/default/console-setup
    ```
    
1. Install nala for a better installation experience
    ```
    sudo apt update && sudo apt install nala -y
    ```
    Optional: Configure nala to utilize the fastest 2-4 mirrors.
    ```
    sudo nala fetch 
    ```
    Choose 2-4 of the most trustworthy mirrors out of the fastest few.
    NOTE, if you are configuring a laptop you may need to do this each time you upgrade from a different internet connection.
    NOTE, if you choose not to do this step, nala will likley use the sources in `/etc/apt/sources.list` and thus you will sacrifice some speed.
    
1. Ensure the latest repostitory version of git is installed.
    ```
    sudo nala install git -y
    ```

1. Clone this Repository
    If the computer you are setting up will be used to edit the setup files, follow the directions on the [Github Docs: Generating a new ssh-key and adding it to the agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) page and add the ssh key you create to the ssh keys for this repostitory. Then use
    ```
    git clone git@github.com:aztrimble/setup.git ~/SetupFiles
    ```

    If not, you can skip setting up ssh and just clone using https.
    ```
    git clone https://github.com/aztrimble/setup.git ~/SetupFiles
    ```
    
1. Run the update scripts and reboot
    ```
    . ~/SetupFiles/SetupScripts/1.0.fullupdate.sh
    ```
    Similar to Step 1, you shouldn't technically need to do this, but I find things run a bit faster and smoother if you do a reboot at this point. If you don't want to reboot, then you can skip this step and run the setup script in the next step directly without rebooting.
   
1. Run the setup script
    ```
    . ~/SetupFiles/SetupScripts/0.0.fullsetup.sh
    ```

## To-Do
List of items that need to be added to the automatic setup
- Decide whether to include a full .bashrc file in the DotFiles repository or to append to the existing .bashrc
  - Pros
    - A change to one computer propogates to all
  - Cons
    - Maybe a new version has a different default file (although this might be easier to check and correct than managing appends)
- Configure swap properly
- Install ros and add source to bashrc and zshrc configurations

```
stow --verbose --dir ~/SetupFiles/DotFiles --target ~ PACKAGENAME
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
