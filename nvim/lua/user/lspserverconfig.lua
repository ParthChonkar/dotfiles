--[[
LSP server configuration. Tells neovim how to talk to the language 
servers. Think like this: 
neovim (lsp client) <-> your lsp configs  <--> the language server
The lsp server configs translate between nvims lsp client and the language server.


Auto complete is also configured here. For the mapping end of that configuration
see autocomplete.lua

Use lsp-config for out of the box configs. As more languages/servers added 
might need to split this into multiple files. It's good practice to look
at the lua files for these configurations! They do stuff such as file 
matching, the launching of the command itself, etc.
--]]

local lspconfig = require('lspconfig')

-- Will be required when we want auto complete!
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Default cmd value assumes pywright is installed on the system path
-- this is what launches pywright when a python file is opened -> lspattach event 
lspconfig.pyright.setup{
    capabilities=capbilities,
}




