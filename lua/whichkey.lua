-- setup which-key
local wk = require("which-key")

local mappings = {
  ["w"] = { "<cmd>w<cr>", "Save" },
  ["x"] = { "<cmd>x<cr>", "Save and quit" },
  ["e"] = { "<cmd>Neotree toggle<cr>", "Explorer Neotree" },
  -- Telescope
  f = {
      name = "file",                                    -- optional group name
      f = { "<cmd>Telescope find_files<cr>", "Find files" },
      g = { "<cmd>Telescope live_grep<cr>", "Grep"},
      r = { "<cmd>Telescope oldfiles<cr>", "Recent files" },
      --n = { "New File" }, -- just a label. don't create any mapping
      --e = "Edit File", -- same as above
  },
}

local wk_opts = {
  prefix = "<leader>"
}

wk.register(mappings, wk_opts)

