local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("tex", {
  s("beg", {
    t({ "\\begin{" }), i(1, "env"), t({ "}", "" }),
    i(2),
    t({ "", "\\end{" }), i(1), t({ "}" }),
  }),
})

