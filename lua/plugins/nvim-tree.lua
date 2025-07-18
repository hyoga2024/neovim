-- Basic commands:
--
-- :NvimTreeToggle Open or close the tree. Takes an optional path argument.
--
-- :NvimTreeFocus Open the tree if it is closed, and then focus on the tree.
--
-- :NvimTreeFindFile Move the cursor in the tree for the current buffer, opening folders if needed.
--
-- :NvimTreeCollapse Collapses the nvim-tree recursively.

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
