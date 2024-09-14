local lsp = require("lsp-zero")
local home = os.getenv("HOME")

lsp.preset("recommended")
lsp.setup()

require('mason').setup({
})
require('mason-lspconfig').setup({

    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
        jdtls = lsp.noop,
        ltex = function()
            require("lspconfig").ltex.setup {
                settings = {
                    ltex = {
                        language = "de-DE",
                    }
                }
            }
        end,
        texlab = function()
            require("lspconfig").texlab.setup {
                settings = {
                    texlab = {
                        rootDirectory = "~/source/Semester-2/"
                    },
                },
            }
        end
    },
})

require("mason-tool-installer").setup({
    ensure_installed = {
        'netcoredbg',
        'omnisharp',

        'autopep8',
        'debugpy',
        'pyright',

        'ltex',
        'texlab',

        'bash-debug-adapter',
        'bashls',

        'clang-format',
        'clangd',

        'lua-language-server',
        'css-lsp',
        'delve',
        'jdtls',
        'jsonls',
        'arduino_language_server',
    },
    auto_update = true,
    run_on_start = true,
    start_delay = 3000,
})

require("mason-nvim-dap").setup()




vim.keymap.set("n", "<leader>fd", vim.cmd.LspZeroFormat)
vim.keymap.set("n", "<leader>fe", function() vim.cmd(":Telescope diagnostics") end)

vim.keymap.set("n", "<leader>gi", function() vim.lsp.buf.implementiation() end)
vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "<leader>gtd", function() vim.lsp.buf.type_definition() end)

vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.rename() end)

vim.keymap.set("n", "<leader>sr", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>sh", function() vim.lsp.buf.hover() end)
--vim.keymap.set("n", "<leader>sdi", function () vim.diagnostic.open_float() end)
vim.keymap.set("n", "<leader>sd", function() vim.diagnostic.setqflist() end)
vim.keymap.set({ "n", "v" }, "<leader>sa", function() vim.lsp.buf.code_action() end)
