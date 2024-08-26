--[[ 
Vim behavior I want to emulate when I migrated.
--]]

-- Block cursor
vim.opt.guicursor = "n-v-c-i:block"

-- Vim new tab commands
vim.cmd([[
    command Tt :tabnew
    command Te :Texplore
]])

-- Horizontal terminal in the same buffer directory
vim.cmd("command Term sp term://%:p:h//bash")

-- Quickly exit terminal mode
vim.keymap.set(
    "t", "<C-n><C-n>", "<C-\\><C-n><C-w>h", 
    {silent = true, desc = "Term quick switch"}
)

-- Highlight till search
vim.cmd("set nohlsearch")
