return {
  "andweeb/presence.nvim",
  config = function()
    require("presence").setup({
      auto_update = true,
      main_image = "neovim",
    })
  end
}
