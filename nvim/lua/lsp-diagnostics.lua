local wk = require('which-key')

-- trouble package
local trouble = require('trouble')
trouble.setup {}

-- motions
wk.register(
	{
		['['] = {
			name = 'Previous',
			d = { vim.diagnostic.goto_prev, 'Go to previous diagnostic' },
		},
		[']'] = {
			name = 'Next',
			d = { vim.diagnostic.goto_next, 'Go to next diagnostic' },
		}
	}
)

-- mappings
wk.register(
	{
		x = {
			name = "Diagnostics",
			x = {
				'<cmd>TroubleToggle workspace_diagnostics<cr>',
				'Toggle workspace diagnostics'
			}

		}
	}, { prefix = '<leader>' }
)
