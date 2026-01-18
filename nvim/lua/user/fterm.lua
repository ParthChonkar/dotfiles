-- There's a lot cooler usage for fterm, just start with basic for now
vim.keymap.set('n', '<C-e>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-e>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
