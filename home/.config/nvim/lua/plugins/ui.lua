return {
    -- statusline
    -- https://github.com/nvim-lualine/lualine.nvim
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require('lualine').setup {
                options = {
                    icons_enabled = true,
                    theme = 'onedark', -- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
                }
            }
        end
    },

    -- bufferline
    -- https://github.com/akinsho/bufferline.nvim
    {
        "akinsho/bufferline.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        version = "*",
        opts = {
            options = {
                -- 使用 nvim 内置lsp
                diagnostics = "nvim_lsp",
                -- 左侧让出 nvim-tree 的位置
                offsets = { {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left"
                }, },
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = { 'close' }
                }
            }
        },
        config = function()
            vim.opt.termguicolors = true
            require("bufferline").setup {}
        end
    }
}
