local ls = require("luasnip")
local snip = ls.snippet
local node = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node


ls.add_snippets(nil, {
    all = {
        snip({
            trig = "///",
            namr = "///<summary>",
            dscr = "C# Doc comment"
        }, {
            t("/// <summary>"),
            t({ "", "/// " }),
            i(1),
            t({ "", "/// </summary>" }),
        })
    }
}
)
