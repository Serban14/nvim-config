vim.cmd("set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/.config/nvim runtimepath+=~/.config/nvim/after") 
vim.cmd("let &packpath=&runtimepath")
-- vim.cmd("source ~/.vim/vimrc")

require("serban")

