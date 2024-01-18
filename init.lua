-- basic configuration
require('options')

-- enable plugins by packer
require('plugins')

-- keybindings
require('keybindings')

-- theme
require('theme')


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

-- autocomplete
require('plugin-config.nvim-cmp')

-- file tree
require('plugin-config.nvim-tree')

-- tab page
require('plugin-config.bufferline')

-- status line
require('plugin-config.lualine')

-- git support
require('plugin-config.gitsigns')

-- fold support
require('plugin-config.ufo')

-- remove trailing whitespace and empty line
require('plugin-config.tidy')

-- bookmark support
require('plugin-config.bookmarks')

