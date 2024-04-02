return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- Add here lsps that should be installed
        ensure_installed = { "lua_ls", "ruff_lsp", "solargraph" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      -- Setup lsps
      lspconfig.lua_ls.setup({})
      lspconfig.ruff_lsp.setup({})
      lspconfig.solargraph.setup({})
    end,
  },
}

