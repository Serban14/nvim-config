local cmp = require("cmp")

cmp.setup({
    mapping = {
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<CR>"] = cmp.mapping.confirm({
         -- behavior = cmp.ConfirmBehavior.Replace,
         select = true,
      }),

    }

})
