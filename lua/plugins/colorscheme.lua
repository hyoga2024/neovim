-- catppuccin

-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--       vim.o.termguicolors = true
--       require("catppuccin").setup({
--         flavour = "mocha", -- "latte", "frappe", "macchiato", "mocha"
--         transparent_background = false,
--       })
--       vim.cmd.colorscheme("catppuccin")
--     end,
--   },
-- }

-- moonfly
return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    priority = 1000,
    config = function()
      vim.o.termguicolors = true

      vim.g.moonflyTransparent = false   
      vim.g.moonflyCursorColor = true    
      vim.cmd.colorscheme("moonfly")
    end,
  },
}

