vim.g.mapleader = ';'
vim.g.maplocalleader = ';'
local opt = {noremap = true, silent = true }

-- basic keymaps
vim.keymap.set('n', '<C-s>', ':w<CR>', opt)
vim.keymap.set('n', '<C-j>', '4<C-e>', opt)
vim.keymap.set('n', '<C-k>', '4<C-y>', opt)
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', opt)
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', opt)

-- nvim-tree - open/close file tree
vim.keymap.set('n', '<F3>', ':NvimTreeToggle<CR>', opt)
vim.keymap.set('n', '<F4>', ':NvimTreeFindFile<CR>', opt)

-- telescope
vim.keymap.set('n', '<F7>', ':Telescope oldfiles<CR>', opt)
vim.keymap.set('n', '<F9>', ':Telescope find_files<CR>', opt)
vim.keymap.set('n', '<F10>', ':Telescope live_grep<CR>', opt)

-- bufferline - control page
vim.keymap.set('n', '<C-p>', ':BufferLineCyclePrev<CR>', opt)
vim.keymap.set('n', '<C-n>', ':BufferLineCycleNext<CR>', opt)
vim.keymap.set('n', '<C-q>', ':Bdelete!<CR>', opt)

-- ufo - fold code
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
vim.keymap.set('n', 'zr', ':foldopen<cr>')
vim.keymap.set('n', 'zm', ':foldclose<cr>')
