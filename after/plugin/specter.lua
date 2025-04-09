local spectre = require("spectre")

spectre.setup({
    open_cmd = '40vnew',
    live_update = true,
    use_trouble_qf = true,

})

vim.keymap.set('n', '<leader><s-f>', '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "Spectre Search current word" })
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "Spectre Search current word" })
vim.keymap.set('n', '<leader>sf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = "Spectre Search on current file" })
