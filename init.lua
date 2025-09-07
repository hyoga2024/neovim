-- 行番号を表示
vim.o.number = true

-- インデント設定
vim.o.tabstop = 4        -- タブ幅
vim.o.shiftwidth = 4     -- 自動インデントの幅
vim.o.expandtab = true   -- タブをスペースに変換
vim.o.smartindent = true

-- 検索
vim.o.ignorecase = true  -- 小文字のみで検索したら大文字小文字を無視
vim.o.smartcase = true   -- 大文字を含んでいたら区別する
vim.o.incsearch = true   -- インクリメンタルサーチ
vim.o.hlsearch = true    -- 検索語をハイライト

-- 表示設定
vim.o.termguicolors = true  -- 24bit カラー有効
vim.o.cursorline = true     -- カーソル行をハイライト
vim.o.wrap = false          -- 行の折り返しを無効化

-- clipboard
vim.o.clipboard = "unnamedplus"

-- バックアップ無効化
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

-- コマンドラインの高さ
vim.o.cmdheight = 1

-- -- luasnipの設定
vim.keymap.set({ "i", "s" }, "<Tab>", function()
  return require("luasnip").jumpable() and "<Plug>luasnip-expand-or-jump" or "<Tab>"
end, { expr = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  return require("luasnip").jumpable(-1) and "<Plug>luasnip-jump-prev" or "<S-Tab>"
end, { expr = true })


-- read plugins from ~/.config/nvim/lua/config/lazy.lua
require("config.lazy")
