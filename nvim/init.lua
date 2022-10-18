require('packages')


vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.completeopt = "menu,menuone,noselect"
vim.g.mapleader = ","

vim.opt.cursorlineopt = "number"
vim.opt.cursorline = true


require('plugins')

-- Improve default signs for LSP Diagnostics
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- local border_opts = { border = 'rounded', focusable = false, scope = 'line' }

vim.diagnostic.config()

--vim.api.nvim_create_autocmd(
--  {"CursorHold"},
--  { pattern = "*",
--    callback = function()
--      vim.lsp.diagnostic.show()
--    end}
--)
--
--
--
