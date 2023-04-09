function ColorBackground(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)
end

function SetTransparent(theme)

    if (theme == "tokyonight")
    then
        require("tokyonight").setup({
            style = "moon",
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        })
    end
    if (theme == "gruvbox")
    then
        require("gruvbox").setup({
            transparent_mode = true
        })
    end
    if(theme == "catppuccin")
    then
        require("catppuccin").setup({
            transparent_background = true
        })
    end
    vim.cmd.colorscheme(theme)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- gruvbox
-- ColorBackground()
-- ColorBackground("gruvbox")
-- SetTransparent("gruvbox")


-- catppuccin
-- ColorBackground("catppuccin")
-- SetTransparent("gruvbox")
-- ColorBackground("catppuccin-frappe")
-- ColorBackground("catppuccin-mocha")
-- ColorBackground("catppuccin-macchiato")
-- ColorBackground("catppuccin-latte")

-- everforest
-- vim.g.everforest_better_perfomance = 1
-- vim.g.everforest_background = 'hard'
-- ColorBackground("everforest")

-- Tokyonights
-- ColorBackground("tokyonight")
SetTransparent("tokyonight")
-- ColorBackground("tokyonight-night")
-- ColorBackground("tokyonight-storm")
-- ColorBackground("tokyonight-day")
-- ColorBackground("tokyonight-night")

-- Transparent
