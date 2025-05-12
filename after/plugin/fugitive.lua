vim.keymap.set("n", "<leader>gs",  "<cmd>vert Git<cr>40<C-w>|")
-- vim.keymap.set("n", "<leader>gg", "<cmd>vert Git log --pretty=format:'%Cred%h%Creset - %Cgreen(%ad)%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --oneline --decorate --graph  --all <cr>")
--
-- Jump to the first quickfix entry
vim.api.nvim_create_user_command('Gcfir', require('fugitive-difftool').git_cfir, {})
-- To the last
vim.api.nvim_create_user_command('Gcla', require('fugitive-difftool').git_cla, {})
-- To the next
vim.api.nvim_create_user_command('Gcn', require('fugitive-difftool').git_cn, {})
-- To the previous
vim.api.nvim_create_user_command('Gcp', require('fugitive-difftool').git_cp, {})
-- To the currently selected
vim.api.nvim_create_user_command('Gcc', require('fugitive-difftool').git_cc, {})

