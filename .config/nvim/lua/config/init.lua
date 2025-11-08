-- ===================
-- Load package manager
-- ===================
require("config.lazy")


-- ===================
-- Core editor settings and keymaps
-- ===================
require("config.editor")
require("config.keymap")

-- ===================
-- UI plugins
-- ===================
require("config.lualine")
require("config.nvim-tree")
require("config.undotree")
require("config.terminal")

-- ===================
-- Coding aids
-- ===================
require("config.treesitter")
require("config.telescope")
require("config.autoclose")
require("config.neogen")
require("config.copilot")
require("config.indent-blankline")
require("config.indent-scope")

-- ===================
-- Completion & snippets
-- ===================
require("config.nvim-cmp")
require("config.luasnip")

-- ===================
-- LSP setup
-- ===================
require("config.mason")
require("config.mason-lspconfig")
require("config.mason-tools")
require("config.lsp")

-- ===================
-- Debugging
-- ===================
require("config.dap")

