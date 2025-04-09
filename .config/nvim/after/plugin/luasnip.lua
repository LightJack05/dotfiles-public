local ls = require("luasnip")
local snip = ls.snippet
local node = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

-- Convert file name to uppercase and replace non-alphanumeric characters with '_'
local function filename_to_guard_name()
    return function(_, snip)
        local filename = snip.env.TM_FILENAME               -- Gets the current file name
        local guard_name = filename:upper():gsub("%W", "_") -- Replace non-word characters with '_'
        return guard_name
    end
end

ls.add_snippets(nil, {
    c_sharp = {
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
    },
    cpp = {
        ls.snippet("#iguard", {
            ls.text_node({ "#ifndef " }),
            func(filename_to_guard_name(), {}), -- Repeat the guard name
            ls.text_node({ "", "#define " }),
            func(filename_to_guard_name(), {}),
            ls.text_node({ "", "", "" }),
            i(1),
            ls.text_node({ "", "", "#endif // " }),
            func(filename_to_guard_name(), {}),
        }),
    }
})
vim.keymap.set({"n", "i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"n", "i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
