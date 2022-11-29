local gs = require('gitsigns')

gs.setup {
	signcolumn = false,
	numhl = true,
	current_line_blame = true,
	current_line_blame_opts = {
	},
	on_attach = function()
		-- local gs = package.loaded.gitsigns
		local wk = require('which-key')
		wk.register(
			{
				g = {
					name = 'git',
					d = { '<cmd>Gitsigns diffthis<cr>', 'diff against git index' },
					b = {
						name = 'buffer',
						s = { "<cmd>Gitsigns stage_buffer<cr>", "stage buffer" },
						r = { "<cmd>Gitsigns reset_buffer<cr>", "reset buffer" }
					},
					h = {
						name = 'hunk',
						s = { "<cmd>Gitsigns stage_hunk<cr>", "stage hunk" },
						r = { "<cmd>Gitsigns reset_hunk<cr>", "stage hink" }
					},
				}
			},
			{ prefix = '<leader>' }
		)
	end
}
