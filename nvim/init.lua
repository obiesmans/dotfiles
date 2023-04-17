require('packages')
require('lsp-diagnostics')
require('git') -- git integration

--
-- Options
--
vim.g.mapleader = ","

-- syntax
vim.opt.cursorlineopt = "number"
vim.opt.cursorline = true

-- mouse
vim.opt.mouse = "a" -- enables mouse support for all modes
vim.opt.mousemodel = "extend"

-- selecting text
vim.opt.selection = "inclusive"
vim.opt.selectmode = ""
vim.opt.keymodel = ""

-- editing text
vim.opt.clipboard = "unnamed,unnamedplus"

-- editing text
vim.opt.completeopt = "menu,menuone,noselect"

-- swapfile
vim.opt.swapfile = false -- do not use a swap file

--
-- GUI Options
--
if vim.fn.has("gui_running") then
	vim.opt.guifont = { "FiraCode_Nerd_Font_Mono", ":h12" }
end

--
-- Plugins
--
require('plugins')

-- neovide
if vim.fn.exists("g:neovide") then
	vim.g.neovide_cursor_animation_length = 0 -- disable cursor animation
	vim.api.nvim_set_keymap('i', '<S-Insert>', '<C-R>*', { noremap = true, silent = true }) -- shift-insert inserts selection clipboard
end


--vim.api.nvim_create_autocmd(
--  {"CursorHold"},
--  { pattern = "*",
--    callback = function()
--      vim.lsp.diagnostic.show()
--    end}
--)


-- open terminal in insert mode
vim.api.nvim_create_autocmd(
	{ "TermOpen" },
	{ pattern = "term://*", command = 'startinsert' }
)
