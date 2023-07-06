-- utf8
vim.g.encoding = 'UTF-8'
vim.o.fileencoding = 'utf-8'
-- line number
vim.wo.number = true
vim.wo.relativenumber = true
-- replace <tab> with <space>
vim.o.expandtab = true
vim.bo.expandtab = true
-- set indent as 4 
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- autoindent and smartindent
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- allow to hide changed buffer
vim.o.hidden = true
-- show invisible character
vim.o.list = false
vim.o.listchars = 'space:.'
