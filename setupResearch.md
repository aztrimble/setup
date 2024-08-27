# Setup Options
This file contains thoughts and basic research into configurations options including pros and cons.

## Shell
What is a shell? The program that actuall processes commands and returns ooutputs. The following is a list of options that have cropped up in my initial configuration research (note: it is not an extensive list of all options)
- Bash
    - Pros
        - Most importantly this is the default on all our installations. So it will be installed with Ubuntu and thus using it means you will be familiar with whatever is installed. However, we don't really adminster client systems, so we have the power to set up 
    - Cons
        - Not as configurable
- Zsh
    - Pros
        - Super configurable - including many configue files you can easily download. Makes getting an initial power configuration very easy.
        - Tab completion is awesome
        - Terminal Syntax highlighting (i.e. incorrect commands are red)
    - Cons
        - We would need to install and configure on every new machine.
    - Install links and guides
        - [Installing Zsh on Ubuntu, Medium]{https://achmadhadikurnia.medium.com/installing-zsh-on-ubuntu-b778e88133c4}

## Terminal
Just a user interface to run a shell. Some options (as above, not a comprehensive list - just a couple that came up in the research):
- Gnome
    - Pros
        - Ubuntu default - nothing to do
- Alacrity
    - Pros
        - Might be better visually, but not really experimented with or proven yet.
- Kitty
    - Pros
        - Includes graphics. E.g. the terminal can show previews of images.
        - Uses the graphics card - should unload the cpu for faster operation
    - Cons
        - Uses the graphics card - I'm not sure how it works if you don't have a graphics card. E.g. raspberry Pi?

## Customization packages
There is so many options, this is much harder to categorize, so just some thoughts on a few that have come up.
- oh-my-zsh (oh-my-bash)
    - The zsh version is awesome and seems to me to just be a default part of a zsh shell. The bash version is an attempt to get the same functionality. I haven't tested it.
- Powerlevel10k
    - Very nice look and configuration.
    - If using zsh, using oh-my-zsh and powerlevel10k together is recommended.
    - Only available for zsh.
- Starship
    - Untested
    - Universal across many systems.
- oh-my-posh
    - Can be set up to emulate Powerlevel10k in bash.

## Github dotfiles
List of Github repositories that contain dotfiles worth copying or using.
- ChrisTitusTech
    - bash
    - Starship
    - setup.sh file
- dreamsofcode-io 
    - stow
    - zsh
    - powerlevel10k
    - nvim
    - tmux
- daviwil
    - stow
- omerxx
    - stow
    - nix
    - nvim
    - Starship
    - tmux
    - zsh
## Programs/packages
- Yazi
    - Terminal File Manager.
- zoxide
    - Faster alternative to the "cd" command.
- fzf
    - Fuzzy file finder. Many of the nvim and other customizations also utlize this package.
