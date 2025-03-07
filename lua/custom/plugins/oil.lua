return {
  'stevearc/oil.nvim',
  ---@module 'oil',
  ---@type oil.SetupOpts
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  -- Optional dependencies
  dependencies = { {
    'echasnovski/mini.icons',
    opts = {},
  } },
  init = function()
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
  end,
}
