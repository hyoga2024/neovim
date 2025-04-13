return {
  {
    "folke/tokyonight.nvim",
    lazy = false,         -- 起動時にすぐ読み込む
    priority = 1000,      -- カラースキームは優先して読み込みたい
    config = function()
      vim.cmd.colorscheme("tokyonight")  -- カラースキームを設定
    end,
  },
}

