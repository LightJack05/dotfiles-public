require('neogen').setup({
    enabled = true,            -- enable Neogen
    snippet_engine = "luasnip", -- use LuaSnip as the snippet engine
    languages = {
        cpp = {
            template = {
                annotation_convention = "doxygen",  -- Set the documentation style to Doxygen for C++
            }
        },
        lua = {
            template = {
                annotation_convention = "ldoc",  -- LDoc for Lua
            }
        },
        python = {
            template = {
                annotation_convention = "google", -- Google style docstrings for Python
            }
        },
        -- Add more languages and their annotation styles as needed
    }
})
vim.keymap.set({"n"}, "<leader>md", function() vim.cmd(":Neogen") end)
