require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "python", "go", "hcl", "yaml", "bash", "fish", "markdown", "markdown_inline" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
}
