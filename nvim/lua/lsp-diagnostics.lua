local wk = require('which-key')

-- trouble package
local trouble = require('trouble')
trouble.setup {}

-- improve default signs for LSP Diagnostics
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

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
