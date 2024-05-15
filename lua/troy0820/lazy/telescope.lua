return {

  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = {"nvim-lua/plenary.nvim"},

  config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>p', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ag', function ()
          builtin.grep_string({ search = vim.fn.input("Grep > " ) });
end)
  end
}
