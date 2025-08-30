-- lua/plugins/multicursor.lua
return {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    config = function()
        local mc = require("multicursor-nvim")
        mc.setup()

        local set = vim.keymap.set

        -- カーソルの追加・スキップ（上下）
        set({"n", "x"}, "<up>", function() mc.lineAddCursor(-1) end)
        set({"n", "x"}, "<down>", function() mc.lineAddCursor(1) end)
        set({"n", "x"}, "<leader><up>", function() mc.lineSkipCursor(-1) end)
        set({"n", "x"}, "<leader><down>", function() mc.lineSkipCursor(1) end)

        -- 単語・選択範囲にマッチしてカーソル追加
        set({"n", "x"}, "<leader>n", function() mc.matchAddCursor(1) end)
        set({"n", "x"}, "<leader>s", function() mc.matchSkipCursor(1) end)
        set({"n", "x"}, "<leader>N", function() mc.matchAddCursor(-1) end)
        set({"n", "x"}, "<leader>S", function() mc.matchSkipCursor(-1) end)

        -- マウスでのカーソル操作
        set("n", "<c-leftmouse>", mc.handleMouse)
        set("n", "<c-leftdrag>", mc.handleMouseDrag)
        set("n", "<c-leftrelease>", mc.handleMouseRelease)

        -- カーソルの有効化・無効化
        set({"n", "x"}, "<c-q>", mc.toggleCursor)

        -- 複数カーソル専用レイヤー
        mc.addKeymapLayer(function(layerSet)
            set = layerSet
            -- メインカーソルを切り替え
            set({"n", "x"}, "<left>", mc.prevCursor)
            set({"n", "x"}, "<right>", mc.nextCursor)
            -- カーソルを削除
            set({"n", "x"}, "<leader>x", mc.deleteCursor)
            -- カーソルをまとめる／有効化
            set("n", "<esc>", function()
                if not mc.cursorsEnabled() then
                    mc.enableCursors()
                else
                    mc.clearCursors()
                end
            end)
        end)

        -- カーソルの見た目カスタマイズ
        local hl = vim.api.nvim_set_hl
        hl(0, "MultiCursorCursor", { reverse = true })
        hl(0, "MultiCursorVisual", { link = "Visual" })
        hl(0, "MultiCursorSign", { link = "SignColumn" })
        hl(0, "MultiCursorMatchPreview", { link = "Search" })
        hl(0, "MultiCursorDisabledCursor", { reverse = true })
        hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
        hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
    end,
}

