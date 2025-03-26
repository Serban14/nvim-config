local oil = require("oil")

oil.setup({
    preview_win = {
        preview_method = "fast_scratch"
    }
})



vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)
