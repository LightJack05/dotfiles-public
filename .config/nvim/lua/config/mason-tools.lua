require("mason-tool-installer").setup({
    auto_update = true,
    ensure_installed = {
        -- Ansible
        "ansible-language-server",

        -- Arduino
        "arduino-language-server",

        -- Python
        "autopep8",
        "debugpy",
        "pyright",

        -- Bash / Shell
        "bash-debug-adapter",
        "bash-language-server",

        -- Web / Frontend
        "biome",
        "css-lsp",
        "json-lsp",
        "prettier",
        "typescript-language-server",
        "vue-language-server",
        "yaml-language-server",

        -- C / C++ / C# / .NET
        "clang-format",
        "clangd",
        "netcoredbg",
        "omnisharp",

        -- Dart
        "dcm",

        -- Go
        "delve",
        "gopls",

        -- GDScript
        "gdtoolkit",

        -- Java
        "jdtls",

        -- Text / Markdown / LaTeX
        "ltex-ls",
        "texlab",

        -- Lua
        "lua-language-server",

        -- Rust
        "rust-analyzer",

        -- Terraform
        "terraform-ls",
    },
})
