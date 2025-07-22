return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup{
      direction = "horizontal", -- option "horizontal", "vertical", "float"
      open_mapping = [[<C-\>]],
    }
  end
}

-- Open terminal by <Ctrl + \>
