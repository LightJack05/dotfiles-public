return {
    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        version = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- Catppuccin colorscheme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup {
                flavour = "mocha",              -- options: latte, frappe, macchiato, mocha
                transparent_background = true, -- optional
            }
            vim.cmd.colorscheme("catppuccin")   -- activate after setup
        end
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        branch = "main"
    },

    -- Undotree
    { "mbbill/undotree" },

    -- Nvim-tree
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },

    -- LSP and related tooling (manual setup, no lsp-zero)
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "rafamadriz/friendly-snippets",
            "saadparwaiz1/cmp_luasnip"
        }
    },
    { 'WhoIsSethDaniel/mason-tool-installer.nvim' },

    -- Copilot
    { 'github/copilot.vim' },

    -- Lualine
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },

    -- Debugging
    { "mfussenegger/nvim-dap" },
    { "jay-babu/mason-nvim-dap.nvim" },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "nvim-neotest/nvim-nio" }
    },
    {
        "mfussenegger/nvim-jdtls",
        dependencies = { "mfussenegger/nvim-dap" }
    },

    -- Misc
    { "m4xshen/autoclose.nvim" },
    { "navarasu/onedark.nvim" },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    { "ThePrimeagen/vim-be-good" },
    { "lukas-reineke/indent-blankline.nvim" },
    { "nvim-mini/mini.indentscope" },
    { "danymat/neogen" },

}
