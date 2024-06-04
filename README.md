# Setup Repository
## Description
Repository that contains directions and common setup or configuration files for a new Ubuntu installation

## Directory Listing
- [`bash`](/bash): customized settings for .bashrc and .bash_alias files
- [`git`](/git): .gitconfig and other git configuration files 
- [`vim`](/vim): .vimrc and plugin files

## Stuff I do on a new Ubuntu Installation
1. Install a version of vim with global clipboard support. For instance:
```
sudo apt purge vim
sudo apt install vim-gtk3
sudo apt install neovim
sudo apt install xclip
```
2. Install tmux
```
sudo apt install tmux
```
2. Install and set up GIT:
- Install
```
sudo apt install git
```
- Set up Initial Global Credentials:
```
git config --global user.name "Firstname Lastname"
git config --global user.email "username@emailserver.com"
git config --global core.editor nvim
git config --global init.defaultBranch main
```
3. Clone this repository. I recommend into a new directory named `GIT`:
```
mkdir ~/GIT
cd ~/GIT
git clone https://github.com/aztrimble/setup
```
4. Copy the setup files to the approriate locations:
- Vim: From the local >setup< directory
```
cp ./vim/.vimrc ~
cp -r ./vim/.vim ~
```
- Bash: For bashrc, use vim to copy in appropriate sections of the .bashrc file
