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
-- vim.api.nvim_create_autocmd({ "TextChanged", "ModeChanged" }, {
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  desc = "Update diagnostics on document/buffer",
  group = vim.api.nvim_create_augroup("diagnostic-update", { clear = true }),
  callback = function()
    vim.diagnostic.show()
  end,
})

-- autocmd to fix weird bug with treesitter and ruby
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/3363
-- vim.cmd('autocmd FileType ruby setlocal indentkeys-=.')
vim.api.nvim_create_autocmd({ "FileType" }, {
  desc = "Disable . as indentkeys for ruby",
  pattern = "ruby",
  group = vim.api.nvim_create_augroup("disable-dot-indent-ruby", { clear = true }),
  callback = function()
    -- vim.opt_local.indentkeys
    vim.cmd("setlocal indentkeys-=.")
  end,
})

-- Automatically enter insert mode when opening a terminal
vim.api.nvim_create_autocmd({ "TermOpen" }, {
  desc = "Change to insert mode when entering terminal",
  group = vim.api.nvim_create_augroup("set-i-mode-term-open", { clear = true }),
  callback = function()
    vim.cmd("startinsert")
  end,
})
