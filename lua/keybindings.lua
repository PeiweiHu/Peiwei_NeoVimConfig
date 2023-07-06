local opt = {noremap = true, silent = true }

-- lsp-related keybindings
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opt)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opt)
