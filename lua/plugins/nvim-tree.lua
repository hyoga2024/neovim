-- ./lua/plugins/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      disable_netrw       = true,
      hijack_netrw        = true,
      auto_reload_on_write = true,
      hijack_cursor       = true,
      update_cwd          = true,
      view = {
        width = 20,
        side = 'left',
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          }
        }
      },
      git = {
        enable = true,
        ignore = false,
        timeout = 500,
      },
    }

    -- vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end,
}

