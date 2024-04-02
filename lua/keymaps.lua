-- All custom keymaps can be found in this file
-- All keymaps are configured using which-key

local wk = require("which-key")

-- Personal keymaps
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

-- Telescope
wk.register({
  ["<leader>f"] = {
    name = "file search", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find files" },
    g = { "<cmd>Telescope live_grep<cr>", "Grep" },
    r = { "<cmd>Telescope oldfiles<cr>", "Recent files" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
  },
  ["<leader><space>"] = { "<cmd>Telescope buffers<cr>", "Buffers" },
}, { mode = "n" })

-- LSPs
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
})

--vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, {})
--vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
--vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
--vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
--vim.keymap.set("n", "<leader>gf", function()
--	vim.lsp.buf.format({ async = true })
--end, {})
