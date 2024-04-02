-- This is the first file that gets run

-- Configuration for indenting
vim.opt.expandtab = true -- \t will be whitespaces
vim.opt.shiftwidth = 2   -- how many whitespaces is an indentation
vim.opt.tabstop = 2      -- how many whitespaces is a \t
vim.opt.softtabstop = 2  -- how many whitespaces is a <tab> or <bs>
vim.opt.smartindent = true

vim.opt.number = true             -- enable line numbering
vim.opt.relativenumber = true     -- enable relative line numbering
vim.opt.clipboard = "unnamedplus" -- enable clipboard
vim.opt.breakindent = true
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 10   -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.mouse = "a"      -- Enable mouse support for all modes
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250 -- Decrease update time

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.inccommand = "split" -- Preview substitutions live, as you type!

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.g.mapleader = " "
vim.g.have_nerd_font = true

-- Lazy.nvim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

-- Load ./lua/keymaps with all mappings
require("keymaps")

-- Choose the theme
-- Use :Telescope colorscheme to checkout available themes
vim.cmd.colorscheme("tokyonight-moon")

-- Load auto commands
require("autocmds")
