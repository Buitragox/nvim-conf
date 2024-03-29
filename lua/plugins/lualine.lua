return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function(_, opts)
    opts.options = {
      theme = "dracula"
    }
  end
  --config = function(_, opts) 
  --  options = {
  --    theme = 'base16'
  --  }
  --end
}
