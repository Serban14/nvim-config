vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.g.undotree_DiffCommand = "delta"

-- require('undotree').setup({
--     float_diff = false,
--     layout = "left_left_bottom"
-- })
-- vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true })

