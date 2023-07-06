local opt = {noremap = true, silent = true }

-- nvim-tree - open/close file tree
vim.keymap.set('n', '<F3>', ':NvimTreeToggle<CR>', opt)
