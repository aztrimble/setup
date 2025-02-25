# Bash Files and Notes
The repository contains setup files for bash and zsh. The rest of this README file contains random notes on using the terminal or installation resources

## Commands
- Change default terminal
    ```
    chsh
    ```
- Return to previous directory
    ```
    cd -
    ```
- Commands to clear terminal
    - Just clean up visually `clear` or `Ctrl-l` which are identical
    - To restart the history `reset`
    - Delete everything on the current line: `Ctrl-u`
        - Move to front of line: `Ctrl-a`
        - Move to end of line: `Ctrl-e`
- Background and foreground
    - Send to Background `Ctrl-z`
    - Return to Foreground `fg`
- sudo the last command
    ```
    sudo !!
    ```
- More effective use of command history
    - List the history: `history`
        - Run a command from the history list: `!#` where # is the actual numerical number of the command to run.
    - Search through command history: `Ctrl-r` as you search use `Ctrl-r` to search other options with the same search criteria. `enter` to run command, `Ctrl-c` to exit without running.
- Watch the contents of a file in realtime (great for watching log files as you run something
    ```
    tail -f filename
    ```
- Pipe stuff into the column command to make it easier to read.
    ```
    random command | column -t
    ```
## Bash
### Customizations
- Nicer ls colors: [nordtheme dircolors](https://github.com/nordtheme/dircolors)

## Zsh
### Install
- https://itsfoss.com/zsh-ubuntu/
### Setup and Themes
- [powerlevel10k](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#installation)
- [pure](https://github.com/sindresorhus/pure)
- robbyrussell
