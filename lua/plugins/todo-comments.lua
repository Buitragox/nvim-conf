-- Adds highlighting to certain comments in the editors
-- github.com/folke/todo-comments.nvim

-- Available types: TODO, NOTE, FIX, HACK, WARNING, PERF
-- Add a ":" after the type like this
-- TYPE:

return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
}
