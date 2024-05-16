-- All custom keymaps can be found in this file

-- I prefer whichkey to add keymaps since it allows to make groups of keymaps
-- but it also works with vim.keymap.set
-- ej: vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { desc = "Open float" })

local wk = require("which-key")

-- PERSONAL MAPPINGS, unrelated to plugins
wk.register({
  ["<C-h>"] = { "<C-w>h", "Go to the left window" },
  ["<C-j>"] = { "<C-w>j", "Go to the down window" },
  ["<C-k>"] = { "<C-w>k", "Go to the up window" },
  ["<C-l>"] = { "<C-w>l", "Go to the right window" },
  ["<leader>"] = {
    w = { "<cmd>w<cr>", "Save" },
    x = { "<cmd>x<cr>", "Save and quit" },
    e = { "<cmd>Neotree<cr>", "Explorer Neotree" },
  },
  ["<Esc>"] = { "<cmd>nohlsearch<cr>", "Disable highlighting" },
}, { mode = "n" })

wk.register({
  -- This mapping doesn't quit the terminal. It just puts you in normal mode.
  -- To exit the terminal (without quitting nvim) use the `exit` command on the terminal
  ["<Esc>"] = { "<C-\\><C-n>", "Exit terminal mode" },
}, { mode = "t" })

-- TELESCOPE
wk.register({
  ["<leader>f"] = {
    name = "file search", -- optional group name
    f = {
      function()
        require("telescope.builtin").find_files({ hidden = true })
      end,
      "Find files",
    },
    g = { "<cmd>Telescope live_grep<cr>", "Grep" },
    r = { "<cmd>Telescope oldfiles<cr>", "Recent files" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
  },
  ["<leader><space>"] = { "<cmd>Telescope buffers<cr>", "Buffers" },
}, { mode = "n" })

-- LSP, DIAGNOSTICS, FORMATTING
wk.register({
  ["<leader>l"] = {
    name = "LSP",
    d = { vim.diagnostic.open_float, "Diagnostics" },
    c = { vim.lsp.buf.code_action, "Code actions" },
    f = {
      function()
        vim.lsp.buf.format({ async = true })
      end,
      "Format",
    },
  },
  ["gd"] = { vim.lsp.buf.definition, "Go to definition" },
})

-- Neotree
-- TODO: Move Neotree from personal keymaps to this section
-- FIX: Make neotree disappear when neotree is focused and <leader>e is pressed

-- Noice
-- TODO: Add keymaps to dismiss Noice

-- TESTS, mappings for quickly running test suites
-- TODO: Add better keymaps for running tests
-- Some ideas:
-- 1. group them by test library?
-- 2. load specific keymaps depending on the language?
wk.register({
  t = {
    name = "tests",
    r = { "<cmd>terminal rspec -fd<cr>", "RSpec" },
    R = {
      function()
        local row, _ = unpack(vim.api.nvim_win_get_cursor(0))
        local file_name = vim.api.nvim_buf_get_name(0)
        vim.cmd(string.format("terminal rspec %s:%s -fd", file_name, row))
      end,
      "RSpec on current line",
    },
    f = {
      function()
        local file_name = vim.api.nvim_buf_get_name(0)
        vim.cmd(string.format("terminal rspec %s -fd", file_name))
      end,
      "RSpec on current file",
    },
  },
}, { prefix = "<leader>", mode = "n" })

--vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { desc = "Open float" })
--vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
--vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
