-- vim.bo.expandtab = true
-- vim.bo.softtabstop = 4
-- vim.bo.shiftwidth = 4
-- vim.bo.tabstop = 4
vim.bo.indentkeys = vim.bo.indentkeys:gsub('0#', '') -- don't indent if the line start with #
vim.bo.indentkeys = vim.bo.indentkeys:gsub('<:>', '') -- don't indent on :
--vim.bo.indentkeys = '^F,o,O,0#,0},0]'

-- window options
vim.wo.number = true
-- vim.wo.relativenumber = true
