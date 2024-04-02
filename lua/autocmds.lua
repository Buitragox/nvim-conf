-- Autocommands to make life easier
-- Format on save can be found on plugins/none-ls.lua

-- Highlight text when yanking  
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Make diagnostics more responsive by making them show
-- after changing modes, or making changes while in normal mode
vim.api.nvim_create_autocmd({ "TextChanged", "ModeChanged" }, {
  desc = "Update diagnostics show on document",
  group = vim.api.nvim_create_augroup("diagnostic-update", { clear = true }),
  callback = function()
    vim.diagnostic.show()
  end,
})
