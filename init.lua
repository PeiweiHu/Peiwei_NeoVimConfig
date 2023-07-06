-- basic configuration
require('options')

-- enable plugins by packer
require('plugins')

-- key bindings
require('keybindings')


-- plugin setup

-- don't change the order of the following three lines
-- they provide the lsp support
require('plugin-config.mason')
require('plugin-config.mason-lspconfig')
require('plugin-config.nvim-lspconfig')

-- enhance the lsp experience
require('plugin-config.lspsaga')

-- required by lspsaga, also highlight code
require('plugin-config.nvim-treesitter')
