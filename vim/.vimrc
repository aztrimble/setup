"Apperance
    "Set colorscheme (uncomment as appropriate)
        "colorscheme badwolf    "Not installed by default
        "colorscheme molokai    "Not installed by default
        "colorscheme ron
        "colorscheme elflord
    "Add a column marker to avoid overruns
        set colorcolumn=80
"Tabs and spaces
    set tabstop=4      "Assign tabs (/t) to a width of 4
    set shiftwidth=4   "Assign indents a width of 4
    set softtabstop=4  "Assign number of columns for a tab to 4
    set expandtab      "Change tabs (/t) to spaces
"VIM customizations (command line, clipboard, keybindings, etc.)
    set title       "Show filename in window title
    set mouse=a     "Turn on mouse mode
    set wildmenu    "Autocomplete vim commands
    set clipboard=unnamedplus   "Use system clipboard
    "Keybinding customizations
        "Change the default leader command
            let mapleader="'"   "Change leader to apostrophe
        "B => beginning of a line
            nnoremap B ^
        "E => end of a line
            nnoremap E $
        "jk => <esc>
            inoremap jk <esc>
    "Searching customizations
        set incsearch       "Search live (search as you type)
        set hlsearch        "Highlight search matches
        set ignorecase      "ignore case when searching
        "Stop highlighting searched terms with mapped command
            nnoremap <leader><space> :nohlsearch<CR>
"Programming Helps
    set number      "Turn on line numbers
    set cursorline  "Underline current line (for quick identification)
    syntax enable   "Enable file type syntax highlighing/colorization
    set showmatch   "Highlight corresponding bracket paris (i.e. [])
    "Indenting rules
        set autoindent
        set smartindent
        "Folding rules
            set nofoldenable        "Default to all folds open
            set foldmethod=syntax   "Default to syntax folding
    "File type specific values
        filetype plugin on
        "vim
            autocmd BufNewFile,BufRead .vimrc set filetype=vim
            autocmd BufNewFile,BufRead *.vim set filetype=vim
        "python
            autocmd BufNewFile,BufRead *.py set filetype=python
        "C++
            autocmd BufNewFile,BufRead *.cpp set filetype=cpp
            autocmd BufNewFile,BufRead *.h set filetype=cpp
        "html
            autocmd BufNewFile,BufRead *.html set filetype=html
            autocmd BufNewFile,BufRead *.xml set filetype=html
            autocmd BufWritePre *.html :normal gg=G
        "bash
            autocmd BufNewFile,BufRead .bashrc set filetype=bash
