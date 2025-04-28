local actions = require("telescope.actions")
-- Use this to add more results without clearing the trouble list
require('telescope').setup{
  defaults = {
    mappings = {
      i = { 
          ["<c-t>"] = require("trouble.sources.telescope").open,
          ["<c-a>"] = require("trouble.sources.telescope").add,
          ["<c-j>"] = actions.move_selection_next,
          ["<c-k>"] = actions.move_selection_previous,
          -- ["<c-v>"] = actions.select_vertical,
          -- ["<c-s>"] = actions.select_horizontal,
      },
      n = { 
          ["<c-t>"] = require("trouble.sources.telescope").open,
          ["<c-a>"] = require("trouble.sources.telescope").add,
      },
    },
  },
  pickers = {
      live_grep = {
          theme = "ivy"
      }
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><S-p>', builtin.commands, { desc = 'Telescope commands' })
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader><C-p>', builtin.git_files, { desc = 'Telescope find files git' })
vim.keymap.set('n', '<leader><C-f>', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', 'gb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>g?', builtin.keymaps, { desc = 'Telescope keymaps help' })
-- vim.keymap.set('n', '<leader>ps', function()
--     builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

