# Configuration files and random notes about NeoVim
Setup heavily influenced by [Dreams of Code YouTube Video](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)

## Install [NvChad](https://github.com/NvChad/NvChad?tab=readme-ov-file)
    ```
    git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
    ```
    Note: this generates a initial starting point. To start from scratch, 
    ```
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
    ```
### Configure
    - Change theme `spc t h`. Use `Ctl p` and `Ctl n` to surf through themes
        -- Suggest just search for cattpuccin
    - NvChad uses [Tree-sitter](https://tree-sitter.github.io/tree-sitter/) for syntax hightlighting so installing syntax highlighting is as easy as using the `:TSInstall language` command where language is the langauge of choice (e.g. python or cpp). Use `TSInstallInfo` command to determine what syntax's are already installed.
