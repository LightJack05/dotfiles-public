-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use 'folke/tokyonight.nvim'


	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

	use('mbbill/undotree')


	--use({
	--  "kdheepak/lazygit.nvim",
	-- optional for floating window border decoration
	--  requires = {
	--      "nvim-lua/plenary.nvim",
	--  },
	--})

	--  use {
	--	  "folke/which-key.nvim",
	--	  config = function()
	--		  vim.o.timeout = true
	--		  vim.o.timeoutlen = 300
	--		  require("which-key").setup {
	--			  -- your configuration comes here
	--			  -- or leave it empty to use the default settings
	--			  -- refer to the configuration section below
	--		  }
	--	  end
	--}

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}


	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{ 'williamboman/mason.nvim' },
            { 'WhoIsSethDaniel/mason-tool-installer.nvim'},
            { 'williamboman/mason-lspconfig.nvim' },

			{ 'neovim/nvim-lspconfig' },
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip',
				requires = {
					"rafamadriz/friendly-snippets",
					'saadparwaiz1/cmp_luasnip'
				}
		},
		}
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use 'mfussenegger/nvim-dap'

	use "jay-babu/mason-nvim-dap.nvim"

	use { "rcarriga/nvim-dap-ui", requires = { "nvim-neotest/nvim-nio" } }

	use { "mfussenegger/nvim-jdtls", requires = { "mfussenegger/nvim-dap" } }
	-- use({ 'rebelot/terminal.nvim' })

	use "m4xshen/autoclose.nvim"
	use 'navarasu/onedark.nvim'
	use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
	use 'ThePrimeagen/vim-be-good'
end)
