return {
    -- tokyonight
    -- https://github.com/folke/tokyonight.nvim
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        -- init = function()
        --     -- styles: "moon" | "storm" | "night" | "day"
        --     vim.cmd [[colorscheme tokyonight-night]]
        -- end,
        opts = {
            theme = 'tokyonight',
            style = "night",
            light_style = "day",
            transparent = false,
            day_brightness = 0.3,
            sidebars = { "terminal" },
            hide_inactive_statusline = false,
        }
    },

    -- catppuccin
    -- https://github.com/catppuccin/nvim
    {
        "catppuccin/nvim",
        lazy = false,
        priority = 1000,
        init = function()
            -- styles: latte, frappe, macchiato, mocha
            vim.cmd [[colorscheme catppuccin]]
        end,
        opts = {
            flavour = "mocha",   -- latte, frappe, macchiato, mocha
            styles = {           -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
            },
        },
        config = function()
            require("catppuccin").setup{}
        end
    }
}
