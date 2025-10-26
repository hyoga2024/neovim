return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Python
      lspconfig.pyright.setup {}

      -- C / C++
      lspconfig.clangd.setup {
        cmd = { "clangd", "--background-index", "--clang-tidy" },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_dir = lspconfig.util.root_pattern(
          "compile_commands.json",
          "compile_flags.txt",
          ".git"
        ),
      }
    end,
  }
}
