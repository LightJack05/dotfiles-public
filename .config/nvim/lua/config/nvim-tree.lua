require("nvim-tree").setup({
    view = {
        width = 60
    }
})
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
-- Auto close NvimTree when leaving its buffer
vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "NvimTree_*",
  callback = function()
    vim.defer_fn(function()
      local api = require("nvim-tree.api")
      if api.tree.is_visible() then
        api.tree.close()
      end
    end, 10)
  end,
})
-- Close NvimTree with <Esc>
vim.api.nvim_create_autocmd("FileType", {
  pattern = "NvimTree",
  callback = function()
    vim.keymap.set("n", "<Esc>", "<cmd>NvimTreeClose<CR>", {
      buffer = true,
      noremap = true,
      silent = true,
    })
  end,
})
