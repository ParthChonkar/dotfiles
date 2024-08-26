-- Zen Mode Set Up
require("zen-mode").setup{
  window = {
    width = .85 -- width will be 85% of the editor width
  }
}

-- Change the close all splits shortcut -> zen mode instead
-- use :only :tabonly if you actually wanna close them
vim.keymap.set("n", "<C-w>o",
    require("zen-mode").toggle,
    {silent = true, desc = "Toggle Zen Mode"}
)

