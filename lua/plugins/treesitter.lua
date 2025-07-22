-- lua/plugins/treesitter.lua

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = {
        "c", "cpp", "lua", "vim", "bash", "json", "python"
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      -- playgroundを有効にする（↓この行が追加される）
      playground = {
        enable = true,
        updatetime = 25,
        persist_queries = false,
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },

  -- playground プラグインの定義（TSPlaygroundToggleなどが使えるようになる）
  {
    "nvim-treesitter/playground",
    cmd = {
      "TSPlaygroundToggle",
      "TSHighlightCapturesUnderCursor",
    },
  },
}

