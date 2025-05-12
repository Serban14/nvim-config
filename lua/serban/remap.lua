vim.g.mapleader = " "
-- Open netruner
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move line up or down when in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor on spot when using line collate
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor centered when using page scroll
vim.keymap.set({"n", "v"}, "<C-d>", "<C-d>zz")
vim.keymap.set({"n", "v"}, "<C-u>", "<C-u>zz")

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
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- quick find and substitute
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("x", "<leader>s", [[y :%s/\<<C-r>"\>/<C-r>"/gI<Left><Left><Left>]])

-- find visual
vim.keymap.set("x", "/", "y/<C-R>\"<CR>")

-- add execute privilege to current file
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- source current file
vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)

-- Line movement
vim.keymap.set({"n", "x"}, "H", "^")
vim.keymap.set({"n", "x"}, "L", "g_")


-- Disable arrows
vim.keymap.set({ "n", "v", "i" }, "<UP>", "<Nop>")
vim.keymap.set({ "n", "v", "i" }, "<RIGHT>", "<Nop>")
vim.keymap.set({ "n", "v", "i" }, "<LEFT>", "<Nop>")
vim.keymap.set({ "n", "v", "i" }, "<DOWN>", "<Nop>")

-- Window resizing
vim.keymap.set("n", "<C-w><", "20<C-w><")
vim.keymap.set("n", "<C-w>>", "20<C-w>>")
vim.keymap.set("n", "<C-w>-", "20<C-w>-")
vim.keymap.set("n", "<C-w>+", "20<C-w>+")
vim.keymap.set("n", "<C-w>|", "40<C-w>|")
vim.keymap.set("n", "<C-w>_", "20<C-w>_")

-- buffer list and select
-- vim.keymap.set("n", "gb", ":ls<CR>:b<Space>")

-- buffer cycling
vim.keymap.set("n", "<leader>n", "<cmd>bnext<cr>")
vim.keymap.set("n", "<leader>p", "<cmd>bprevious<cr>")
vim.keymap.set("n", "<leader>d", "<cmd>bdelete<cr>")
-- buffer delete all and reopen current
vim.keymap.set("n", "<leader>D", "<cmd>silent! %bd|e#|bd#<cr>")

-- vim.keymap.set('n', 'gh', 'K')



