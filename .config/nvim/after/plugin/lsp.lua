local lsp = require("lsp-zero")
local home = os.getenv("HOME")

lsp.preset("recommended")
lsp.setup()
local mason_registry = require('mason-registry')

require('mason').setup({
})
require('mason-lspconfig').setup({

    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
        jdtls = lsp.noop,
        ts_ls = function()
                require("lspconfig").ts_ls.setup{
                init_options = {
                        plugins = {
                            {
                                -- Name of the TypeScript plugin for Vue
                                name = '@vue/typescript-plugin',
                
                                -- Location of the Vue language server module (path defined in step 1)
                                location = mason_registry.get_package('vue-language-server'):get_install_path() .. '/node_modules/@vue/language-server',
                
                                -- Specify the languages the plugin applies to (in this case, Vue files)
                                languages = { 'vue' },
                            },
                        },
                    },
                
                    -- Specify the file types that will trigger the TypeScript language server
                    filetypes = {
                        'typescript',          -- TypeScript files (.ts)
                        'javascript',          -- JavaScript files (.js)
                        'javascriptreact',     -- React files with JavaScript (.jsx)
                        'typescriptreact',     -- React files with TypeScript (.tsx)
                        'vue'                  -- Vue.js single-file components (.vue)
                    },
                }
        end,
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
        end,
        yamlls = function()
            require("lspconfig").yamlls.setup {
                settings = {
                    yamlls = {
                        schemas = {
                            kubernetes = "*.yaml",
                            ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
                            ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
                            ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
                            ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
                            ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
                            ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
                            ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
                            ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
                            ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
                            ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
                            ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
                            ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
                        },
                    }
                }
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

        'yaml-language-server',

        'volar',
        'ts_ls'
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
