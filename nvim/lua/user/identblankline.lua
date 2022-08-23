require("indent_blankline").setup({
	-- show_end_of_line = true
	indent_blankline_use_treesitter = true,
	show_current_context = true,
	context_patterns = {
		"^block_", -- highlight context patterns for yaml
		"class",
		"^func",
		"method",
		"^if",
		"while",
		"for",
		"with",
		"try",
		"except",
		"arguments",
		"argument_list",
		"object",
		"dictionary",
		"element",
		"table",
		"tuple",
		"do_block",
	},
})
