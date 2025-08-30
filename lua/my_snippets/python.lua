local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
    s("pblock", {
        t({"\"\"\"", "==============================", ""}),
        i(1, "Block title / description"),
        t({"", "==============================", "\"\"\""})
    }),
    
    s("pline", {
        t("#  --- "),
        i(1, "comment"),
        t(" ---")
    }),
}

