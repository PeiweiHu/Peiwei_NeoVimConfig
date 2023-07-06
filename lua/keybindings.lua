local opt = {noremap = true, silent = true }

-- nvim-tree - open/close file tree
vim.keymap.set('n', '<F3>', ':NvimTreeToggle<CR>', opt)

-- telescope
vim.keymap.set('n', '<F9>', ':Telescope find_files<CR>', opt)
vim.keymap.set('n', '<F10>', ':Telescope live_grep<CR>', opt)

-- bufferline - control page
vim.keymap.set('n', '<C-p>', ':BufferLineCyclePrev<CR>', opt)
vim.keymap.set('n', '<C-n>', ':BufferLineCycleNext<CR>', opt)
vim.keymap.set('n', '<C-q>', ':Bdelete!<CR>', opt)
