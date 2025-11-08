local cmp = require("cmp")
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" }
  },
  confirmation = { completeopt = "menu,menuone,noinsert" },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
    ["<C-f>"] = function() require("luasnip").jump(1) end,
    ["<C-b>"] = function() require("luasnip").jump(-1) end,
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
  }),
  snippet = {
    expand = function(args) require("luasnip").lsp_expand(args.body) end,
  },
})

