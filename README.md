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
    Note, either you need to remember to turn this back on after completing the setup, or you need to be very diligent about running update/upgrades regularly.
    
1. Install nvim for editing config files
    ```
    sudo snap install nvim --classic
    ```

1.  Adjust the text size if necessary. For some fun you can try to figure out how to use sed or awk to do it...
    ```
    sudo sed -i '/FONTSIZE/s/".*"/"16x32"/' /etc/default/console-setup
    ```
    Or, you can just manually change the `FONTSIZE` variable to an appropraite value. E.g. `FONTSIZE="16x32"' in the console-setup file:

     ```
    sudo nvim /etc/default/console-setup
    ```
   
1. Install nala for a better installation experience
    ```
    sudo apt update && sudo apt install nala -y
    ```
    Optional but preferred: Configure nala to utilize the fastest 2-4 mirrors.
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
    
1. Run the setup script
    ```
    . ~/SetupFiles/SetupScripts/0.0.fullsetup.sh
    ```

## To-Do
List of items that need to be added to the automatic setup
- Create a base set of configurations that work for all installations (i.e. with or without a desktop) - currenlt this is the server branch.
    - Determine if package managers break systems without a desktop environment. 
- Add configurations and customizations only necessary for an installation with a desktop environment.
- Decide whether to include a full .bashrc file in the DotFiles repository or to append to the existing .bashrc
  - Pros
    - A change to one computer propogates to all
  - Cons
    - Maybe a new version has a different default file (although this might be easier to check and correct than managing appends)
- Install ros and add source to bashrc and zshrc configurations
    - Different install files 
        - Basic only for an install without a desktop environment
        - Full install including rviz and other tools for an install with a desktop environment. 
- Decide whether to use xclip or xsel for global clipboard support while using tmux.

## Random notes
### An example stow command.

```
stow --verbose --dir ~/SetupFiles/DotFiles --target ~ PACKAGENAME
```
