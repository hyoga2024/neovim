return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.o.termguicolors = true
      require("catppuccin").setup({
        flavour = "macchiato", -- "latte", "frappe", "macchiato", "mocha"
        transparent_background = false,
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

