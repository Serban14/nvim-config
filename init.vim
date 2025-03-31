set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Sets and Remaps
source ~/.config/nvim/lua/serban/remap.lua
source ~/.config/nvim/lua/serban/set.lua

" Colors
source ~/.config/nvim/after/plugin/colors.lua

" Plugins
source ~/.config/nvim/after/plugin/oil.lua
source ~/.config/nvim/after/plugin/telescope.lua
source ~/.config/nvim/after/plugin/treesitter.lua
source ~/.config/nvim/after/plugin/lualine.lua
source ~/.config/nvim/after/plugin/undotree.lua
source ~/.config/nvim/after/plugin/gitsigns.lua
source ~/.config/nvim/after/plugin/trouble.lua

source ~/.config/nvim/after/plugin/lsp.lua

