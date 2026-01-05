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

vim.lsp.config("nil", {
  settings ={
    formatting = {
      command = { "/home/LightJack05/.local/share/nvim/mason/packages/nixpkgs-fmt/bin/nixpkgs-fmt" },
    },
  }
})
