vim.cmd("set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/.vim/after/syntax runtimepath+=~/.config/nvim runtimepath+=~/.config/nvim/after") 
vim.cmd("let &packpath=&runtimepath")
-- vim.cmd("source ~/.vim/vimrc")

-- set shell=\"/c/Users/sivanesc/AppData/Local/Programs/Git/usr/bin/bash.exe\" -f
-- shell_path = "C:\\Users\\sivanesc\\AppData\\Local\\Programs\\Git\\usr\\bin\\bash.exe"
-- vim.cmd("let &shell='C:\\Users\\sivanesc\\AppData\\Local\\Programs\\Git\\usr\\bin\\bash.exe -f'")

-- vim.o.shell = "C:/Users/sivanesc/AppData/Local/Programs/Git/usr/bin/bash.exe"
vim.o.shellcmdflag = "-c"



require("serban")

