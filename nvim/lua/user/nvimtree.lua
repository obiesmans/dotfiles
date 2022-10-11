require("nvim-tree").setup()

local wk = require("which-key")
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
