-- Inside your Neovim config (init.lua or equivalent)
local nvim_lsp = require('lspconfig')

-- Basic rust-analyzer setup
nvim_lsp.rust_analyzer.setup{}

-- Optional: with rust-tools (extra features)
require('rust-tools').setup({
    server = {
        on_attach = function(_, bufnr)
            -- Example keybinds for LSP features
            local opts = { noremap=true, silent=true, buffer=bufnr }
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)         -- hover docs
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)   -- go to def
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts) -- code actions
        end
    }
})

-- Runnables
vim.keymap.set("n", "<leader>rr", function()
  require('rust-tools').runnables.runnables()
end, { silent = true })
