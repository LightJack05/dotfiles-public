-- Set custom keymaps
-- Keymaps for <C-M-<Key>>

vim.keymap.set('i', '<C-M-L>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})
vim.keymap.set('i', '<C-M-H>', '<Plug>(copilot-dismiss)', { silent = true })
vim.keymap.set('i', '<C-M-K>', '<Plug>(copilot-suggest)', { silent = true })
vim.keymap.set({"i", "n"}, '<C-M-T>', function()
    vim.g.copilot_enabled = not vim.g.copilot_enabled
end)



-- Keymaps for Caps+<Key>
vim.keymap.set('i', 'ł', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})
vim.keymap.set("i", "ħ", "<Plug>(copilot-dismiss)", { silent = true })
vim.keymap.set("i", "ĸ", "<Plug>(copilot-suggest)", { silent = true })
vim.keymap.set({"i", "n"}, "ŧ", function()
    vim.g.copilot_enabled = not vim.g.copilot_enabled
end)



-- Disable default <Tab> keymap for accepting Copilot suggestions
vim.g.copilot_no_tab_map = true
vim.g.copilot_enabled = false
