return {
  {
    "L3MON4D3/LuaSnip",
    ft = { "tex" }, -- LaTeX のときだけ読み込む
    build = "make install_jsregexp", -- オプション（正規表現サポート）
    dependencies = {
      "rafamadriz/friendly-snippets", -- 既成スニペット集
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_lua").lazy_load({
        paths = "~/.config/nvim/lua/my_snippets"
      })
    end,
  }
}

