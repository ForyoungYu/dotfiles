return {
  -- https://github.com/williamboman/mason.nvim
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },

  --https://github.com/williamboman/mason-lspconfig.nvim
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- 确保安装，根据需要填写
        ensure_installed = {
          "lua_ls",
        },
      })
    end
  },

  -- https://github.com/neovim/nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").lua_ls.setup {
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      }
    end

  }
}
