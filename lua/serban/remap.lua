vim.g.mapleader = " "
-- Open netruner
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move line up or down when in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor on spot when using line collate
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor centered when using page scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor centered when going to next find
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- When pasting over in visual keep previous yank
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank into clipboard
vim.keymap.set({"n", ""}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- paste from clipoard
vim.keymap.set({"n", "v"}, "<leader>P", [["+p]])
--
-- delete to void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- no quit on capital q
vim.keymap.set("n", "Q", "<nop>")

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format whole buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- dunno what this does
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- quick find and substitute
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- add execute privilege to current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- source current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


vim.keymap.set('n', 'gh', 'K')


