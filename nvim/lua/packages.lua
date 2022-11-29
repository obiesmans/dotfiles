vim.cmd([[
	augroup packer_user_config
		 autocmd!
		 autocmd BufWritePost packages.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
	-- dracula colorscheme
	use { 'dracula/vim', as = 'dracula' }

	-- lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons', opt = true
		},
	}

	-- nvim-tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', opt = true
		},
	}

	-- lsp-config
	use "neovim/nvim-lspconfig"

	-- Treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	}

	-- Trouble
	use {
		"folke/trouble.nvim",
		requires = {
			-- {"folke/lsp-colors.nvim", opt = true},
			{ "kyazdani42/nvim-web-devicons", opt = true }
		}
	}

	-- luasnip
	use { "L3MON4D3/LuaSnip" }

	-- nvim-cmp
	use {
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			{ "hrsh7th/cmp-buffer", opt = true },
			{ "hrsh7th/cmp-path", opt = true },
		}
	}

	use {
		"lukas-reineke/indent-blankline.nvim"
	}

	use {
		"folke/which-key.nvim"
	}

	use {
		"lewis6991/gitsigns.nvim"
	}

	use {
		"voldikss/vim-floaterm"
	}
end)
