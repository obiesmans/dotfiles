vim.bo.expandtab = true
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4

-- window options
vim.wo.number = true
-- vim.wo.relativenumber = true

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*.rs" },
	callback = function() vim.lsp.buf.formatting_sync(nil, 1000) end
})
