return {
  {
    "lervag/vimtex",
    ft = { "tex" },  -- LaTeX ファイルのときだけ読み込む
    config = function()
      -- コンパイラ設定
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        build_dir = "",
        callback = 1,
        continuous = 1,
        options = {
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
          "-pdfdvi",               -- 必要に応じて -pdf に変更
        },
      }

      -- ビューア設定
      vim.g.vimtex_view_method = "general"
      vim.g.vimtex_view_general_viewer = "wslview"
      vim.g.vimtex_view_general_options = "@pdf"
      
      -- その他の設定
      vim.g.vimtex_quickfix_mode = 0  -- LaTeX のエラーを quickfix に表示しない
      vim.g.vimtex_view_forward_search_on_start = 1  -- コンパイル後にビューアを開く
      vim.g.vimtex_view_on_warning = 1  -- 警告があったときにもビューアを開く

    end,
  }
}

