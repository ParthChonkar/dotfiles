--[[ 
Core vim options. Similar to what's in traditional .vimrc
--]]

-- Turn off wrapping
vim.opt.textwidth = 0
vim.opt.lbr = false
vim.opt.wrap = false

-- Look and feel
vim.opt.background = "dark"

-- Line numbers
vim.opt.number = true
vim.opt.rnu = true

-- Make searching easier
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- History buf size
vim.opt.cmdheight = 1

-- Basic cmd completion
vim.opt.wildmenu = true
vim.opt.wildignore = "*.o,*~,*.pyc"

-- Status/Ruler
vim.opt.ruler = true
vim.opt.laststatus = 2

-- Enable syntax highlighting
vim.cmd([[
    syntax on
    syntax enable
]])

-- Indent settings
vim.cmd("filetype indent on")

-- All important tab settings
vim.opt.et = true
vim.opt.smarttab = true
vim.opt.ts = 4
vim.opt.sw = 4
vim.opt.sts = 4

-- Horizontal split direction
vim.opt.splitbelow = true

-- Use Unix as standard file type
vim.opt.ffs = "unix,dos,mac"

-- Set utf8 as encoding
vim.opt.encoding = "utf8"

-- Netrw config
vim.cmd([[
    let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
]])

-- Make vertical splits go to the right
vim.opt.splitright = true

-- Map leader to space before plugin install
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- More ergonomic insert -> normal
vim.keymap.set("i", "jk", "<C-c>", {silent = true})
vim.keymap.set("i", "<C-c>", "<nop>", {silent = true})

-- More ergonomic visual -> normal 
vim.keymap.set("v", "<leader>j", "<C-c>", {silent = true})
vim.keymap.set("v", "<C-c>", "<nop>", {silent = true})
