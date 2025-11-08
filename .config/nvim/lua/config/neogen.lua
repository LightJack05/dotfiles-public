require("neogen").setup({
  enabled = true,
  snippet_engine = "luasnip",
  languages = {
    cpp = { template = { annotation_convention = "doxygen" } },
    lua = { template = { annotation_convention = "ldoc" } },
    python = { template = { annotation_convention = "google" } },
  }
})
vim.keymap.set("n", "<leader>md", "<cmd>Neogen<cr>")
