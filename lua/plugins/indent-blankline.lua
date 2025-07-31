return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl", 
  event = { "BufReadPre", "BufNewFile" }, 
  opts = {
    indent = {
      char = "│",
    },
    scope = {
      enabled = true,
      show_start = false,
      show_end = false,
    },
  }
}

