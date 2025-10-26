return {
  "CRAG666/code_runner.nvim",
  config = function()
    require('code_runner').setup({
      filetype = {
        cpp = {
          "cd $dir && g++ -std=gnu++17 $fileName",
        }
      },
      mode = "term",
    })
  end
}

