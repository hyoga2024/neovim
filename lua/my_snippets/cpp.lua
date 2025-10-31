local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
    s("routine_atcoder", {
        t({
            "#include <bits/stdc++.h>",
            "using namespace std;",
            "#define rep(i,a,b) for(int i=a;i<b;i++)",
            "#define rrep(i,a,b) for(int i=a;i>=b;i--)",
            "#define fore(i,a) for(auto &i:a)",
            "",
            "int main() {",
            "    ios::sync_with_stdio(false);",
            "    cin.tie(nullptr);",
            "",
            "    ",
        }),
        i(0),
        t({
            "",
            "    return 0;",
            "}",
        }),
    }),
    s("cout_atcoder", {
        t("cout << "),
        i(0),
        t(" << '\\n';"),
    }),
}

