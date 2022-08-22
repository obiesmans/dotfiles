vim.bo.expandtab = false
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.tabstop = 2

-- window options
vim.wo.number = true
-- vim.wo.relativenumber = true

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*.lua" },
	callback = function()
		vim.lsp.buf.formatting_sync(nil, 3000)
	end
})
