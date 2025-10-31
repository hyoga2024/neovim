return {
  "CRAG666/code_runner.nvim",
  config = function()
    require('code_runner').setup({
      filetype = {
        -- cpp = "cd $dir && g++ $fileName -o $dir/$fileNameWithoutExt && $dir/$fileNameWithoutExt",
        cpp = "cd $dir && g++ $fileName -o $dir/a.out && $dir/a.out",
      },
      mode = "term",
    })
  end
}

