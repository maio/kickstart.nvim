vim.pack.add {
  'https://github.com/NeogitOrg/neogit',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/sindrets/diffview.nvim',
}

require('neogit').setup {
  integrations = {
    diffview = true,
  },
  kind = 'tab',
}

vim.keymap.set('n', '<leader>gg', function()
  require('neogit').open()
end, { desc = 'Open Neo[g]it' })
