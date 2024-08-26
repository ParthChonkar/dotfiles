--[[

List of plugins to install. This is using vim-plug. Sourcing this file won't 
actually install the plugins, instead :PlugInstall/Update will actually do that.

--]]



vim.cmd([[
    call plug#begin()

    " See user/zenmode.lua
    Plug 'folke/zen-mode.nvim'

    " See user/gitsigns.lua
    Plug 'lewis6991/gitsigns.nvim'

    " See user/colors.lua
    Plug 'folke/tokyonight.nvim'

    " See user/telescope.lua
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'

    " See user/treesitter.lua
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " See user/[lspsettings, lspserverconfig].lua
    Plug 'neovim/nvim-lspconfig'

    " See user/[autocomplete, lspserverconfig].lua
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'L3MON4D3/LuaSnip'

    " See user/startup.lua
    Plug 'eoh-bse/minintro.nvim'

    call plug#end()
]])

