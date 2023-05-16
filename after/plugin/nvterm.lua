local nvterm = require('nvterm')

local term = require('nvterm.terminal')

vim.keymap.set({ 'n', 't' }, '<A-h>', function() term.toggle('horizontal') end)
vim.keymap.set({ 'n', 't' }, '<A-v>', function() term.toggle('vertical') end)
vim.keymap.set({ 'n', 't' }, '<A-f>', function() term.toggle('float') end)
vim.keymap.set({ 't' }, '<C-w>h', function()  vim.cmd("wincmd h") end)
vim.keymap.set({ 't' }, '<C-w>j', function()  vim.cmd("wincmd j") end)
vim.keymap.set({ 't' }, '<C-w>k', function()  vim.cmd("wincmd k") end)
vim.keymap.set({ 't' }, '<C-w>l', function()  vim.cmd("wincmd l") end)



nvterm.setup()
