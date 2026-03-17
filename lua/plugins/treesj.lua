return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  keys = {
    { '<leader>tj', desc = 'TreeSJ toggle split/join' },
    { '<leader>ts', desc = 'TreeSJ split' },
    { '<leader>tJ', desc = 'TreeSJ join' },
    { '<leader>tR', desc = 'TreeSJ toggle recursive' },
  },
  config = function()
    require('treesj').setup({
      use_default_keymaps = false,
      check_syntax_error = true,
      max_join_length = 120,
      cursor_behavior = 'hold',  -- cursor follows the text it was called on
      notify = true,
    })

    local tsj = require('treesj')

    vim.keymap.set('n', '<leader>tj', tsj.toggle,
      { desc = 'TreeSJ: toggle split/join' })
    vim.keymap.set('n', '<leader>ts', tsj.split,
      { desc = 'TreeSJ: split block' })
    vim.keymap.set('n', '<leader>tJ', tsj.join,
      { desc = 'TreeSJ: join block' })
    -- recursive toggle — expands/collapses all nested nodes
    vim.keymap.set('n', '<leader>tR', function()
      tsj.toggle({ split = { recursive = true } })
    end, { desc = 'TreeSJ: recursive toggle' })
  end,
}
