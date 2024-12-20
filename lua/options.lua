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
-- OSC 52 support
vim.g.clipboard = {name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),},
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}

-- use tmux's clipboard if in tmux
--      for tmux 3.3a+: add `set -g allow-passthrough on` to tmux.conf
--      for lower version: add `set -s set-clipboard on ` to tmux.conf
if vim.env.TMUX ~= nil then
  local copy = {'tmux', 'load-buffer', '-w', '-'}
  local paste = {'bash', '-c', 'tmux refresh-client -l && sleep 0.05 && tmux save-buffer -'}
  vim.g.clipboard = {
    name = 'tmux',
    copy = {
      ['+'] = copy,
      ['*'] = copy,
    },
    paste = {
      ['+'] = paste,
      ['*'] = paste,
    },cache_enabled = 0,
  }
end
