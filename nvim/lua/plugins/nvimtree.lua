local wk = require("which-key")

local function on_attach_tree()
	wk.register({
		O = { "IT WORKS" }
	})
end

require("nvim-tree").setup {
	on_attach = on_attach_tree
}

wk.register({
	t = {
		name = "Tree",
		t = {
			"<cmd>NvimTreeToggle<CR>",
			"Toggle the tree",
		},
		f = {
			"<cmd>NvimTreeFindFile<CR>",
			"Find file in the tree",
		}
	}
}, {
	prefix = "<leader>",
})


-- vim.api.nvim_set_keymap('n', '<leader>tt', ':NvimTreeToggle<CR>', {noremap = true})
