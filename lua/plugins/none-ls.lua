-- Linters & Formatters

-- This plugin makes linters and formatters available as LSPs
-- github.com/nvimtools/none-ls.nvim

return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Add here formatters and linters(diagnostics)
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.diagnostics.rubocop,
      },

      -- This enables formatting on save.
      -- https://github.com/nvimtools/none-ls.nvim/wiki/Formatting-on-save
      on_attach = function(client, buffer_n)
        -- You can disable this by changing 'enabled' to false
        local enabled = true
        if client.supports_method("textDocument/formatting") and enabled then
          vim.api.nvim_create_autocmd("BufWritePre", {
            desc = "Format on save",
            group = vim.api.nvim_create_augroup("format-on-save", { clear = true }),
            buffer = buffer_n,
            callback = function()
              vim.lsp.buf.format({ async = false })
            end,
          })
        end
      end,
    })
  end,
}
