-- Autocommands to make life easier
-- autocmds get executed when a event occurs. See `:h events` for more information
-- Format on save can be found on plugins/none-ls.lua

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",

  -- assigns a group to the cmd. If the group exists, clear the group
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),

  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Make diagnostics feel more responsive by making them show
-- after changing modes, or making changes while in normal mode
vim.api.nvim_create_autocmd({ "TextChanged", "ModeChanged" }, {
  desc = "Update diagnostics on document/buffer",
  group = vim.api.nvim_create_augroup("diagnostic-update", { clear = true }),
  callback = function()
    vim.diagnostic.show()
  end,
})
