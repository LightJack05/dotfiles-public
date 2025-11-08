-- LTEX
vim.lsp.config("ltex", {
  settings = { ltex = { language = "de-DE" } },
})

-- YAML
vim.lsp.config("yamlls", {
  settings = {
    yaml = {
      schemaStore = {
          enable = true
      },
    },
  },
})
