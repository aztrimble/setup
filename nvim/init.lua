-- Apperance
  vim.cmd("set colorcolumn=80")
  vim.cmd("set title")
  vim.cmd("set number")
  vim.cmd("set relativenumber")

-- Tabs and spaces
  vim.cmd("set expandtab")
  vim.cmd("set tabstop=2")
  vim.cmd("set softtabstop=2")
  vim.cmd("set shiftwidth=2")

-- Customizations
  -- add "jk" as an alternate escape sequence
    vim.cmd("inoremap jk <esc>")
  -- Add system clipboard support
    vim.cmd("set clipboard+=unnamedplus")
  -- Change leader keymapping
    vim.g.mapleader = "'"
  -- Stop highlighting searched items
    vim.cmd("nnoremap <leader><space> :nohlsearch<CR>")

-- Filetype adjustments
  -- Markdown language
    --vim.g.markdown_recommended_style = 0

-- Package manager (Lazy: github.com/folke/lazy.nvim)
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)

-- Install Packages and Plugins
  local plugins = {
    { 
      "catppuccin/nvim", name = "catppuccin", priority = 1000 
    },
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
      "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
    }
  }
  local opts = {}
  
-- Start and configure packages and plugins
  -- Start Lazy
    require("lazy").setup(plugins, opts)
  -- Start and configure catppuccin
    require("catppuccin").setup()
      vim.cmd.colorscheme "catppuccin-latte"
  -- Start and configure telescope
    local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
  -- Start and configure treesitter
    local config = require("nvim-treesitter.configs")
      config.setup(
      {
        ensure_installed = {"c",
                            "lua",
                            "vim",
                            "vimdoc",
                            "html"},
        hightlight = { enable = true },
        indent = { enable = true},
      })
