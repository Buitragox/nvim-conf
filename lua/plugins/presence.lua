return {
  -- Use a fork of the official plugin since its more updated
  "jiriks74/presence.nvim",
  -- "andweeb/presence.nvim",
  event = "UIEnter",
  opts = function(_, opts)
    opts.neovim_image_text = "Configuring neovim is such a pain"
  end,
  --config = function()
  --  require("presence").setup({
  --    auto_update = true,
  --    main_image = "neovim",
  --  })
  --end
}
