-- OSC-52 Escape Code Set Up
local osc52 = require('osc52')

osc52.setup {
  max_length = 0,           -- Maximum length of selection (0 for no limit)
  silent = false,           -- Disable message on successful copy
  trim = false,             -- Trim surrounding whitespaces before copy
  tmux_passthrough = false, -- Use tmux passthrough (requires tmux: set -g allow-passthrough on)
}

-- Keybinds 
vim.keymap.set('n', '<leader>y', osc52.copy_operator, {expr = true})
vim.keymap.set('v', '<leader>y', osc52.copy_visual)
vim.keymap.set('n', '<leader>Y', '<leader>y_')

