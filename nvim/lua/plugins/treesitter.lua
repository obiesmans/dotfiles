require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "python", "go", "hcl", "yaml" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
}
