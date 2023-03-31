local nvterm = require('nvterm')

local term = require('nvterm.terminal')

vim.keymap.set({ 'n', 't' }, '<A-h>', function() term.toggle('horizontal') end)
vim.keymap.set({ 'n', 't' }, '<A-v>', function() term.toggle('vertical') end)
vim.keymap.set({ 'n', 't' }, '<A-f>', function() term.toggle('float') end)


nvterm.setup()
