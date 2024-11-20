return {
  "neanias/everforest-nvim",
  lazy = true,
  config = function()
    require("everforest").setup {
      background = "hard",
    }
  end,
}
