vim.keymap.set("n", "<leader>gg", "<cmd>Flogsplit -all<cr>40<C-w>_")

vim.g.flog_default_opts = {
    max_count = 2000,
    date = 'short'
}
