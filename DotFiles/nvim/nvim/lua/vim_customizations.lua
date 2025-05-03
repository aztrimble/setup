-- Keymappings
  -- Leader
    vim.g.mapleader = " "
  -- Alternate escape sequences
    -- add "jk" as an alternate escape sequence
      vim.cmd("inoremap jk <esc>")
  -- Stop highlighting searched items
    vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Clipboard settings
  vim.cmd("set clipboard+=unnamedplus")

-- Performance settings
  -- vim.opt.swapfile = false

-- Apperance
  vim.cmd("set colorcolumn=80")
  vim.cmd("set title")
  vim.wo.number = true
  vim.wo.relativenumber = true

-- Tabs and spaces
  vim.cmd("set expandtab")
  vim.cmd("set tabstop=2")
  vim.cmd("set softtabstop=2")
  vim.cmd("set shiftwidth=2")

-- Navigate vim panes better
  vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
  vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
  vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
  vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
