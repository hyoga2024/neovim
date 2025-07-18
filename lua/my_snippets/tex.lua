local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

return {

-- begin, end

  s("beg", fmt([[
\begin{{{}}}
    {}
\end{{{}}}
]], {
    i(1, "env"), -- 最初に入力する環境名
    i(2),        -- 中身
    rep(1),      -- 1と同じ内容を繰り返し
  })),

-- routine

    s("report", fmt([[
\documentclass{{ltjsarticle}}

\usepackage{{amsmath, amsfonts, enumitem}}
\usepackage{{graphicx}}


\begin{{document}}

\title{{{}}}
\author{{08D23072 下村彪雅}}
\date{{\today}}
\maketitle

    {}

\end{{document}}
]], {
        i(1, "title"),
        i(2),
    })),


-- $ $    
    s("math", fmt([[
${}$
]], {
        i(1)
    })),

-- frac
   s("frac", fmt([[
\frac{{{}}}{{{}}}
]], {
        i(1),
        i(2),
    })),
}
