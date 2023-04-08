local signs = require('gitsigns')

vim.keymap.set("n", '<leader>dt', '<cmd>Gitsigns diffthis<CR>')

signs.setup()
