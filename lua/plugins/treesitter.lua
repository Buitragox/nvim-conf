return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "java",
        "javascript",
        "typescript",
        "json",
        "yaml",
        "python",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        disable = { "ruby" },
      },
      indent = {
        enable = true,
        disable = { "ruby" },
      },
    })
  end,
}
