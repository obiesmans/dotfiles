require('packages')
require('lsp-diagnostics')
require('git') -- git integration

--
-- Options
--

vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.completeopt = "menu,menuone,noselect"
vim.g.mapleader = ","

vim.opt.cursorlineopt = "number"
vim.opt.cursorline = true

--
vim.opt.mouse = "a" -- enables mouse support for all modes
vim.api.nvim_command("behave xterm") -- Xterm behavior for mouse and selection

-- GUI Options
if vim.fn.has("gui_running") then
	vim.opt.guifont = { "FiraCode_Nerd_Font_Mono", ":h12" }
end



require('plugins')

-- Improve default signs for LSP Diagnostics
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- local border_opts = { border = 'rounded', focusable = false, scope = 'line' }

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
