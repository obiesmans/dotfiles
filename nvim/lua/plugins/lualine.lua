local function statusline()
	local position = vim.fn['nvim_treesitter#statusline']()
	if position then
		return position
	end
end

require('lualine').setup {
	options = {
		globalstatus = true, -- enable single statusline at bottom of neovim instead of one for  every window.
	},
	sections = {
		lualine_c = {
			'filename',
			statusline
		}
	}
}
