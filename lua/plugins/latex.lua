return {
  {
    "lervag/vimtex",
    ft = { "tex" },  -- LaTeX ファイルのときだけ読み込む
    config = function()
      vim.g.vimtex_view_method = "zathura"  -- 必要に応じて wslview に変更
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_quickfix_mode = 0
    end,
  }
}

