-- MAKE SURE TERMINAL EMULATOR DOESNT CLASH!
require('telescope').setup {
    defaults = {
        path_display={"smart"}
    }
}

local builtin = require('telescope.builtin')
-- Telescope binds
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- Telescope top level file browser
vim.keymap.set("n", "<leader>fd", ":Telescope file_browser<CR>")
-- Telescope directory of buffer
vim.keymap.set("n", "<leader>fc", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

