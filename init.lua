-- vim.cmd("source init.vim")

vim.cmd("set runtimepath^=~/.vim runtimepath+=~/.vim/after")
vim.cmd("let &packpath=&runtimepath")
vim.cmd("source ~/.vim/vimrc")

require("serban")

