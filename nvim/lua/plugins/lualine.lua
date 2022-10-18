require('lualine').setup {
  sections = {
    lualine_c = {
      'filename',
      function() -- display code context in statusline
        return vim.fn['nvim_treesitter#statusline']()
      end
    }
  }
}
