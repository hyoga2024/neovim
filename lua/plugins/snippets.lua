return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp", -- オプション（正規表現サポート）
    config = function()
      require("luasnip.loaders.from_lua").lazy_load({
        paths = "~/.config/nvim/lua/my_snippets"
      })
    end,
  }
}

