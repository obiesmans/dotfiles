require("nvim-tree").setup()


vim.api.nvim_set_keymap('n', '<leader>tt', ':NvimTreeToggle<CR>', {noremap = true})
