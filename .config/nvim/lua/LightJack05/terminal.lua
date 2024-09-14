vim.keymap.set("n", "<leader>to", function() vim.cmd(":belowright split term://zsh") end)


vim.api.nvim_create_autocmd("TermClose", {
    callback = function()
       vim.cmd("close")
    end
})


vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
    pattern = { "*" },
    callback = function()
        if vim.opt.buftype:get() == "terminal" then
            --vim.cmd(":startinsert")
        end
    end
})
